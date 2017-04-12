
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name miniS -dir "C:/Users/yingyu/Desktop/Paper_SL/SL_minispartan/miniS/planAhead_run_1" -part xc6slx25ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/yingyu/Desktop/Paper_SL/SL_minispartan/miniS/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/yingyu/Desktop/Paper_SL/SL_minispartan/miniS} {ipcore_dir} }
add_files [list {ipcore_dir/ddsc.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "top.ucf" [current_fileset -constrset]
add_files [list {top.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
