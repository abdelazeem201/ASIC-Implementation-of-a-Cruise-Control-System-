set link_path  "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ff1p25v0c.db"

read_verilog "../../../pnr/output/cruisecontrol_icc.v"

current_design cruisecontrol
link

source ../../../syn/cons/cons.tcl
#read_parasitics ../../rcxt/cmin/cruisecontrol_cmin_t125.spef
read_parasitics ../../../pnr/output/cruisecontrol.spef.min

update_timing

save_session cruisecontrol_min.session

report_constraint -all_violators -significant_digits 4 > ./cruisecontrol.min_constr.rpt
report_timing -delay_type min -nworst 40 -significant_digits 4 > ./cruisecontrol.min_timing.rpt

write_sdf ./cruisecontrol.min.sdf




