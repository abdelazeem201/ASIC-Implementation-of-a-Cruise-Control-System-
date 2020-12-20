###################################################################

# Created by write_sdc on Wed Dec 20 06:01:59 2017

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clk]  -period 4  -waveform {0 2}
set_clock_uncertainty 0.35  [get_clocks clk]
set_false_path -hold   -from [list [get_ports reset] [get_ports throttle] [get_ports set] [get_ports \
accel] [get_ports coast] [get_ports cancel] [get_ports resume] [get_ports      \
brake]]
set_false_path -hold   -to [list [get_ports {speed[7]}] [get_ports {speed[6]}] [get_ports            \
{speed[5]}] [get_ports {speed[4]}] [get_ports {speed[3]}] [get_ports           \
{speed[2]}] [get_ports {speed[1]}] [get_ports {speed[0]}] [get_ports           \
{cruisespeed[7]}] [get_ports {cruisespeed[6]}] [get_ports {cruisespeed[5]}]    \
[get_ports {cruisespeed[4]}] [get_ports {cruisespeed[3]}] [get_ports           \
{cruisespeed[2]}] [get_ports {cruisespeed[1]}] [get_ports {cruisespeed[0]}]    \
[get_ports cruisectrl]]
set_input_delay -clock clk  -max 2  [get_ports reset]
set_input_delay -clock clk  -max 2  [get_ports throttle]
set_input_delay -clock clk  -max 2  [get_ports set]
set_input_delay -clock clk  -max 2  [get_ports accel]
set_input_delay -clock clk  -max 2  [get_ports coast]
set_input_delay -clock clk  -max 2  [get_ports cancel]
set_input_delay -clock clk  -max 2  [get_ports resume]
set_input_delay -clock clk  -max 2  [get_ports brake]
set_output_delay -clock clk  -max 2  [get_ports {speed[7]}]
set_output_delay -clock clk  -max 2  [get_ports {speed[6]}]
set_output_delay -clock clk  -max 2  [get_ports {speed[5]}]
set_output_delay -clock clk  -max 2  [get_ports {speed[4]}]
set_output_delay -clock clk  -max 2  [get_ports {speed[3]}]
set_output_delay -clock clk  -max 2  [get_ports {speed[2]}]
set_output_delay -clock clk  -max 2  [get_ports {speed[1]}]
set_output_delay -clock clk  -max 2  [get_ports {speed[0]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[7]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[6]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[5]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[4]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[3]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[2]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[1]}]
set_output_delay -clock clk  -max 2  [get_ports {cruisespeed[0]}]
set_output_delay -clock clk  -max 2  [get_ports cruisectrl]
