from typing import no_type_check_decorator
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import sys

#GLOBAL DECLARATIONS
#*****************************************
def utility():
    ## READING FILE
    rtl = sys.argv[1] + ".gl.v"  # give the rtl file as an input in the command line
    ast, _ = parse([rtl])
    desc = ast.description  # get the root node of the tree (Description)
    definition = desc.definitions[0]  # get the ModuleDef node
    #***** MAIN LOGIC *********
    parsingprocess(definition=definition)
    #***** GENERATING OUTPUT ************
    generateOutFile(ast=ast)

#**********************************************
def ff_in_list(definition):
    ff_l=[]
    ff_counter=0
    for itemDeclaration in definition.items:
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":
            instance = itemDeclaration.instances[0]            
            if instance.module == "sky130_fd_sc_hd__dfxtp_1":
                for hook in instance.portlist:
                    if hook.portname == "D":
                        ffin = hook.argname
                        ff_l.insert(ff_counter,ffin) 
                        ff_counter+=1
    return ff_l
#*************************************
def mux_ff_pattern(definition,pattern_found,instance,ffin_list,muxout):

    pattern_found=True
    for i in range(len(ffin_list)): 
        if muxout == ffin_list[i]:
            pattern_found= True
            return pattern_found
        else:
            pattern_found=False

    return pattern_found
#*************************************
def morethan_1_reg_logic(definition,Enables_num,Enables_total,ICG_count_list,ffin_list): 
    ICG_count_list_noduplicate= []
    mux_outs = []
    ff_inputs = []
    unique_en = ""
    unique_mux = ""
    ff_inputs =ff_in_list(definition=definition)
    for itemDeclaration in definition.items:
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":
            instance = itemDeclaration.instances[0]
            if instance.module == "sky130_fd_sc_hd__mux2_1": ##check for all the muxes
                for y in instance.portlist:
                    if y.portname == "X":
                        mux_outs.append(y.argname)
    for a in mux_outs:
        for b in ff_inputs:
            if a == b:
                unique_mux = ""
                break
            if a!=b:
                unique_mux = a
    for itemDeclaration in definition.items:
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":
            instance = itemDeclaration.instances[0]
            if instance.module == "sky130_fd_sc_hd__mux2_1": ##check for all the muxes
                for z in instance.portlist:
                    if z.portname == "X":
                        if z.argname == unique_mux:
                            for j in instance.portlist:
                                if j.portname == "S":
                                    unique_en = j.argname
    for itemDeclaration in definition.items:
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":

            instance = itemDeclaration.instances[0]
            if instance.module == "sky130_fd_sc_hd__mux2_1": ##check for all the muxes
                for x in instance.portlist:
                    if x.portname == "S": #check the for the enable port na
                        if x.argname != unique_en:
                            ICG_count_list.insert(Enables_num,x.argname) ## insert all enables in the list
    for i in ICG_count_list: 
        if i not in ICG_count_list_noduplicate: ## REMOVE duplicates so that we can have only the true number of enables without any duplicates
            ICG_count_list_noduplicate.append(i)
    Enables_total = len(ICG_count_list)
    Enables_num = len(ICG_count_list_noduplicate)

    return Enables_num, Enables_total,ICG_count_list_noduplicate #return the number of enables we have in our 
#**********************************************
def check_size(ffin_list,Enables_num):
    size = 1
    initial= 7
    #print(Enables_total,"##",Enables_total)
    #print (len(ffin_list))
    x = len(ffin_list)/Enables_num
    while (size < 4):
        if x <= initial:
            return size
        initial= initial*2+1
        size*=2 

    return size
#************************************************
def icg_cells (Enables_num, Enables_total,icg_count,newitems,ICG_count_list,ffin_list):
    ## SIZES CHECK ##
    icg_size = check_size(ffin_list= ffin_list,Enables_num=Enables_num)

   # print(Enables_num)
    #print(ICG_count_list)
    while icg_count < Enables_num:
        #print(icg_count)
        clock_gate_args = [
            vast.PortArg("GCLK", vast.Identifier("cg_out"+str(icg_count))),
            vast.PortArg("GATE", vast.Identifier(str(ICG_count_list[icg_count]))),
            vast.PortArg("CLK", vast.Identifier("clk"))]

        clock_gate_cell = vast.Instance("sky130_fd_sc_hd_dlclkp","__clock_gate_cell__",tuple(clock_gate_args),tuple()) 
        newitems.append(vast.InstanceList("sky130_fd_sc_hd__dlclkp"+"_"+str(icg_size), tuple(), tuple([clock_gate_cell])))
        icg_count = icg_count+1
    return
#***********************************************
def handle_ff(definition, Enables_num, L3,ffin_list):
    icg_outputs = []
    right_order =[]
    i= 0
    ii =0
 
    ff_clk_in=0
    m=0
    L3_temp = []

    for itemDeclaration in definition.items:
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":
            instance = itemDeclaration.instances[0]
            if instance.module == "sky130_fd_sc_hd_dlclkp":
                for x in instance.portlist:
                    if x.portname == "GCLK":
                        icg_outputs.append(x.argname)
    #print (icg_outputs)
    #print (L3)
    
    for n in L3: 
        if n not in L3_temp: ## REMOVE duplicates so that we can have only the true number of enables without any duplicates
            L3_temp.append(n)


    mapping = dict(zip(L3_temp,icg_outputs))
    #print("element",mapping["en"])
    #print("mapping",mapping)

    while ii < len(L3):
        for i in mapping:
            if L3[ii] == i:
                right_order.append(mapping[i])

        ii+=1  
 #   print (right_order)
    #map(icg_outputs[0],)
    for itemDeclaration in definition.items:
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":
            instance = itemDeclaration.instances[0]

            for hook in instance.portlist:
                if instance.module == "sky130_fd_sc_hd__dfxtp_1":   
                    if hook.portname == "CLK":
                        if Enables_num == 1:
                            hook.argname = vast.Identifier("cg_out"+ str(ff_clk_in))
                        else:
                            if Enables_num == len(ffin_list):
                                hook.argname = vast.Identifier("cg_out"+ str(ff_clk_in))
                                ff_clk_in +=1
                            else:
                                if m< len(right_order):
                                    hook.argname = right_order[m]
                                    m+=1

                             
                            # print("HERE")
                            # print ("instancename",instance.name, "argument", hook.argname)
    return
                

#*********************************************
def parsingprocess(definition):
    newitems = []
    WithoutMux = True
    icg_instances = False

    L = []
    L2 = []
    L3 = []
    ffin_list =[]
    icg_count=0
    icg_wire = 0
    ff_clk_in = 0
    Enables_num = 0
    Enables_total= 0
    ICG_count_list = []


    ffin_list = ff_in_list(definition=definition)   # return list with all the inputs of all the flip flops   

    #Checks for the number of enables in muxes of the gate lebel to check that we have more than one
    #register and thus try to fit this condition
    Enables_num,Enables_total,ICG_count_list = morethan_1_reg_logic(definition= definition,Enables_num= Enables_num, Enables_total= Enables_total, ICG_count_list=ICG_count_list
    ,ffin_list=ffin_list)         
#instantiate wires -> outputs ICG
    while icg_wire < Enables_num:       
        cg_out = vast.Wire('cg_out'+str(icg_wire))  
        icg_wire+=1
        newitems.append(cg_out)

#************ MAIN logic ********
    for itemDeclaration in definition.items:
        pattern_found= False
        WithoutMux = True
        item_type = type(itemDeclaration).__name__
        if item_type == "InstanceList":
            instance = itemDeclaration.instances[0]
            if not icg_instances:
                icg_cells(Enables_num=Enables_num, Enables_total = Enables_total, icg_count=icg_count, newitems=newitems,ICG_count_list=ICG_count_list,ffin_list=ffin_list) ##function that adds icg cells
                icg_instances=True
            if instance.module == "sky130_fd_sc_hd__mux2_1":
                    for hook in instance.portlist:
                        if hook.portname == "X":
                            muxout = hook.argname
                            pattern_found = mux_ff_pattern(definition=definition,pattern_found=pattern_found,instance=instance,ffin_list=ffin_list,muxout=muxout)
                            if pattern_found:
                                WithoutMux=False
                                break
                    for x in instance.portlist:
                        if x.portname == "A1":
                            L.append(x.argname)
                        if x.portname == "A0":
                            L2.append(x.argname)
                        if x.portname == "S":
                            L3.append(x.argname)

            #print(L3)
            for hook in instance.portlist:
                if instance.module == "sky130_fd_sc_hd__dfxtp_1":                                
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

        if  WithoutMux:
            newitems.append(itemDeclaration)

    # Add the instances list to the AST items
    items = newitems
    definition.items = tuple(items)
    handle_ff(definition=definition, Enables_num=Enables_num,L3=L3,ffin_list=ffin_list)

    return


#*********************************************
def generateOutFile(ast):
    # write the ast to a .v file
    codegen = ASTCodeGenerator()
    rslt = codegen.visit(ast)
    # ast.show()
    f = open(sys.argv[1] + "_utility_out.gl.v", "w+")
    f.write(rslt)
    f.close()
    return


#************************************************


#RUNNING UTILITY
utility()
