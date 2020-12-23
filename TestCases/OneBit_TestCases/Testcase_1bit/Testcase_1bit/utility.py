import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import sys

#GLOBAL DECLARATIONS


##############################
def utility():
    ## READING FILE
    rtl = sys.argv[1] + ".gl.v"  # give the rtl file as an input in the command line
    ast, _ = parse([rtl])
    desc = ast.description  # get the root node of the tree (Description)
    definition = desc.definitions[0]  # get the ModuleDef node
    ##### MAIN LOGIC ##############
    parsingprocess(definition=definition)
    ##### GENERATING OUTPUT #########
    generateOutFile(ast=ast)
###############################
def morethan_1_reg_logic(definition,Enables_num,ICG_count_list,ICG_count_Flag):   
    for itemDeclaration in definition.items:
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":

            instance = itemDeclaration.instances[0]
            if instance.module == "sky130_fd_sc_hd__mux2_1": ##check for all the muxes
                for x in instance.portlist:
                    if x.portname == "S": #check the for the enable port name
                        if ICG_count_Flag: # the logic of this if condition is to take the first 
                                           #portarg in the en portname and place it in a list only for the first iteration so that it wont change
                            #print("HERE")
                            ICG_count_list.insert(0, x.argname) 
                            ICG_count_Flag = False
                        #print(Enables_num)
                        if ICG_count_list[Enables_num] != x.argname: # keep checking if there are different enables
                            ICG_count_list.insert(Enables_num,x.argname)
                            Enables_num += 1
    return Enables_num #return the number of enables we have in our design
########################################
def icg_cells (Enables_num,icg_count,newitems,ICG_count_list):
    while icg_count < Enables_num+1:
        clock_gate_args = [
            vast.PortArg("GCLK", vast.Identifier("cg_out"+str(icg_count))),
            vast.PortArg("GATE", vast.Identifier(str(ICG_count_list[icg_count]))),
            vast.PortArg("CLK", vast.Identifier("clk"))]

        clock_gate_cell = vast.Instance("sky130_fd_sc_hd_dlclkp","__clock_gate_cell__",tuple(clock_gate_args),tuple()) 
        newitems.append(vast.InstanceList("sky130_fd_sc_hd__dlclkp", tuple(), tuple([clock_gate_cell])))
        icg_count = icg_count+1
    return
#########################################
def parsingprocess(definition):
    newitems = []
    WithoutMux = True
    icg_instances = False
    L = []
    L2 = []
    icg_count=0
    icg_wire = 0
    ff_clk_in = 0
    Enables_num = 0
    ICG_count_list = []
    ICG_count_Flag = True

    #Checks for the number of enables in muxes of the gate lebel to check that we have more than one
    #register and thus try to fit this condition
    Enables_num = morethan_1_reg_logic(definition= definition,Enables_num= Enables_num,ICG_count_list=ICG_count_list
    ,ICG_count_Flag=ICG_count_Flag)                     

    print(Enables_num)

#instantiate wires -> outputs ICG
    while icg_wire < Enables_num+1:       
        cg_out = vast.Wire('cg_out'+str(icg_wire))  
        icg_wire+=1
        newitems.append(cg_out)


## MAIN logic 
    for itemDeclaration in definition.items:
        WithoutMux = True
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":
            instance = itemDeclaration.instances[0]
            if not icg_instances:
                icg_cells(Enables_num=Enables_num, icg_count=icg_count, newitems=newitems,ICG_count_list=ICG_count_list) ##function that adds icg cells
                icg_instances=True
            if instance.module == "sky130_fd_sc_hd__mux2_1":
                WithoutMux = False
                for x in instance.portlist:
                    if x.portname == "A1":
                        L.append(x.argname)
                    if x.portname == "A0":
                        L2.append(x.argname)
            for hook in instance.portlist:
                if instance.module == "sky130_fd_sc_hd__dfxtp_1":
                    if hook.portname == "CLK":
                        if Enables_num == 0:
                            hook.argname = vast.Identifier("cg_out"+ str(ff_clk_in))
                        else:
                            hook.argname = vast.Identifier("cg_out"+ str(ff_clk_in))
                            ff_clk_in +=1
                if hook.portname == "D":
                    for p in range(len(L)):
                        hook.argname = L[p]
                        L.remove(hook.argname)
                        break
                if hook.portname == "Q":
                    for p in range(len(L2)):
                        hook.argname = L2[p]
                        L2.remove(hook.argname)
                        break

        if WithoutMux:
            newitems.append(itemDeclaration)

    # Add the instances list to the AST items
    items = newitems
    definition.items = tuple(items)

    return


#######################################################
def generateOutFile(ast):
    # write the ast to a .v file
    codegen = ASTCodeGenerator()
    rslt = codegen.visit(ast)
    # ast.show()
    f = open(sys.argv[1] + "_after.gl.v", "w+")
    f.write(rslt)
    f.close()
    return


##########################################################


#RUNNING UTILITY
utility()

