
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name traficlight_final -dir "G:/AMEY_3744/traficlight_final/planAhead_run_1" -part xc3s400pq208-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "tpm.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {master_clock.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {lights.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {left.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {tpm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top tpm $srcset
add_files [list {tpm.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-4
