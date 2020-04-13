#Analisys 
analyze -library WORK -format vhdl {/home/ms20.8/MS_laboratories/cap1/syn/alu_type.vhd /home/ms20.8/MS_laboratories/cap1/syn/alu.vhd}

#Elaboration
elaborate ALU -architecture BEHAVIOR -library WORK -parameters "N = 4"

#Compilation
compile -exact_map

#Write syn
write -hierarchy -format vhdl -output /home/ms20.8/MS_laboratories/cap1/syn/alu/alu4_syn_behv.vhdl

#report Area
report_area > alu/area_report_alu.txt

#report Timing
report_timing > alu/timing_report_alu.txt
