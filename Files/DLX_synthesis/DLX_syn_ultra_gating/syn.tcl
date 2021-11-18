cd rtl
sh mkdir WORK
cd ..
define_design_lib WORK -path ./rtl/WORK

# Global constants
analyze -library WORK -format vhdl {./rtl/globals/000-globals.vhd}

# Fetch
analyze -library WORK -format vhdl {./rtl/a.b-DataPath.core/a.b.a-Fetch.core/register_n.vhd ./rtl/a.b-DataPath.core/a.b.a-Fetch.core/instruction_register.vhd ./rtl/a.b-DataPath.core/a.b.a-Fetch.core/adder_pc.vhd ./rtl/a.b-DataPath.core/a.b.a-Fetch.core/a.b-fetch.vhd  }

# Decode
# P4 ADDER
analyze -library WORK -format vhdl {./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/sum_generator.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/rca.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/p4_adder.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/mux21_generic.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/fa.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/carry_select_block.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/carry_generator.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/PG.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/p4_adder/G.vhd}
# DEC
analyze -library WORK -format vhdl {./rtl/a.b-DataPath.core/a.b.b-Decode.core/sign_ext_n.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/registerfile.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/register_n_zero_en.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/register_n.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/mux42_input1.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/mux21_generic.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/instruction_decoder.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/hazard_unit.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/demux21.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/branch_cond.vhd ./rtl/a.b-DataPath.core/a.b.b-Decode.core/a.b.b-decode.vhd }
 
# Execute
# Booth MULT 
analyze -library WORK -format vhdl {./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/sum_generator.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/register_n.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/rca.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/p4_adder.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/mux_booth.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/mux21_generic.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/fa.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/carry_select_block.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/carry_generator.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/booth_mul.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/PG.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/G.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/booth_mul/Booth_Encoder.vhd}
# EX
analyze -library WORK -format vhdl {./rtl/a.b-DataPath.core/a.b.c-Execute.core/struct_hazard_unit.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/register_n.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/mux42_input1.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/mux21_generic.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/forwarding_unit.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/condition_br.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/comparator.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/alu.vhd ./rtl/a.b-DataPath.core/a.b.c-Execute.core/a.b.c-execute.vhd }

# MEM
analyze -library WORK -format vhdl {./rtl/a.b-DataPath.core/a.b.d-Memory.core/register_n.vhd ./rtl/a.b-DataPath.core/a.b.d-Memory.core/mux21_generic.vhd ./rtl/a.b-DataPath.core/a.b.d-Memory.core/a.b.d-memory_unit.vhd .}


# WB
analyze -library WORK -format vhdl {./rtl/a.b-DataPath.core/a.b.e-WB.core/mux21_generic.vhd ./rtl/a.b-DataPath.core/a.b.e-WB.core/a.b.e-WB_unit.vhd }


# Control Unit
analyze -library WORK -format vhdl {./rtl/a.a-control_unit/register_n.vhd ./rtl/a.a-control_unit/mux21_generic.vhd ./rtl/a.a-control_unit/lookup_table.vhd ./rtl/a.a-control_unit/demux21.vhd ./rtl/a.a-control_unit/a.a-CU_HW.vhd }


# Branch Predictor
analyze -library WORK -format vhdl {./rtl/a.e-BranchPredictor/up_down_counter.vhd ./rtl/a.e-BranchPredictor/register_n.vhd ./rtl/a.e-BranchPredictor/ram_target.vhd ./rtl/a.e-BranchPredictor/priority_encoder.vhd ./rtl/a.e-BranchPredictor/mux21_generic.vhd ./rtl/a.e-BranchPredictor/ff.vhd ./rtl/a.e-BranchPredictor/cam.vhd ./rtl/a.e-BranchPredictor/branch_target_buffer.vhd  ./rtl/a.e-BranchPredictor/branch_history_table.vhd ./rtl/a.e-BranchPredictor/branch_predictor.vhd}

# DLX
analyze -library WORK -format vhdl {./rtl/mux42_input1.vhd ./rtl/a.b-DataPath.vhd ./rtl/a-DLX.vhd }


# # Elaborate 
 elaborate DLX -architecture DLX_RTL -library WORK -parameters "IR_SIZE = 32, PC_SIZE = 32" -update



# first compilation, without constraints #

compile -exact_map

#reporting riming and power after the first synthesis without constraints #
report_timing -nworst 3 > ./reports/exact/DLX-t.rpt
report_area > ./reports/exact/DLX-a.rpt
report_power > ./reports/exact/DLX-p.rpt

# write -hierarchy -format ddc -output ./post_syn/exact/DLX-A-topt.ddc
# write -hierarchy -format vhdl -output ./post_syn/exact/DLX-A-topt.vhdl
write -hierarchy -format verilog -output ./post_syn/exact/DLX-A-topt.v

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---



 set MAX_DELAY 3.0

create_clock -name "Clk" -period $MAX_DELAY Clk
report_clock > ./reports/clk/clock_report.txt
set_max_delay $MAX_DELAY -from [all_inputs] -to [all_outputs]
compile_ultra -gate_clock

report_timing -nworst 10 > ./reports/ultra_gating/DLX-t.rpt
report_area > ./reports/ultra_gating/DLX-a.rpt
report_power > ./reports/ultra_gating/DLX-p.rpt

# write -hierarchy -format ddc -output ./post_syn/ultra_gating/DLX-A-topt.ddc
# write -hierarchy -format vhdl -output ./post_syn/ultra_gating/DLX-A-topt.vhdl
write -hierarchy -format verilog -output ./post_syn/ultra_gating/DLX-A-topt.v


# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
 write_sdc DLX


