vcom -reportprogress 300 -work work ./globals/*.vhd
vcom -reportprogress 300 -work work ./a.a-control_unit/*.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.a-Fetch.core/*.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.b-Decode.core/*.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/fa.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/rca.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/G.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/PG.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/mux21_generic.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/carry_generator.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/carry_select_block.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/sum_generator.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/p4_adder.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/p4_adder/*.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/fa.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/rca.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/G.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/PG.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/mux21_generic.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/carry_generator.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/carry_select_block.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/sum_generator.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/p4_adder.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/mux_booth.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/booth_mul.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/booth_mul/Booth_Encoder.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.c-Execute.core/*.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.d-Memory.core/*.vhd
vcom -reportprogress 300 -work work ./a.b-DataPath.core/a.b.e-WB.core/*.vhd

vcom -reportprogress 300 -work work ./a.e-BranchPredictor/up_down_counter.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/register_n.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/ram_target.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/priority_encoder.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/mux21_generic.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/ff.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/cam.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/branch_history_table.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/branch_target_buffer.vhd
vcom -reportprogress 300 -work work ./a.e-BranchPredictor/branch_predictor.vhd

vcom -reportprogress 300 -work work ./*.vhd




vsim -t 100ps  work.tb_dlx
add wave \
{sim:/tb_dlx/Reset } \
{sim:/tb_dlx/u1/clk } \
{sim:/tb_dlx/u1/Reset} \
{sim:/tb_dlx/u1/ir } \
{sim:/tb_dlx/u1/pc } \
{sim:/tb_dlx/u1/pc_bus } \
{sim:/tb_dlx/u1/datapath_comp/id_stage/rf/registers } \
{sim:/tb_dlx/Dram_c/mem_s }


add wave \

{sim:/tb_dlx/u1/control_unit_comp/en_id } \
{sim:/tb_dlx/u1/control_unit_comp/en_ex } \
{sim:/tb_dlx/u1/control_unit_comp/en_mem } \
{sim:/tb_dlx/u1/control_unit_comp/en_wb } \
{sim:/tb_dlx/u1/control_unit_comp/en_pc } \
{sim:/tb_dlx/u1/control_unit_comp/en_if } 
