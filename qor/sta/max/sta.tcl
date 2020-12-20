set link_path  "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ss0p95vn40c.db"

read_verilog "../../../pnr/output/cruisecontrol_icc.v"

current_design cruisecontrol
link

source ../../../syn/cons/cons.tcl
#read_parasitics ../../rcxt/cmax/cruisecontrol_cmax_tm40.spef
read_parasitics ../../../pnr/output/cruisecontrol.spef.max

update_timing

save_session cruisecontrol_max.session

report_constraint -all_violators -significant_digits 4 > ./cruisecontrol.max_constr.rpt
report_timing -delay_type max -nworst 40 -significant_digits 4 > ./cruisecontrol_timing.rpt

write_sdf ./cruisecontrol.max.sdf




