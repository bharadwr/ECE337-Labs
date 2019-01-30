# Step 1:  Read in the source file
analyze -format sverilog -lib WORK { sync_low.sv}
elaborate sync_low -lib WORK
uniquify
# Step 2: Set design constraints
# Uncomment below to set timing, area, power, etc. constraints
# set_max_delay <delay> -from "<input>" -to "<output>"
# set_max_area <area>
# set_max_total_power <power> mW


# Step 3: Compile the design
compile -map_effort medium

# Step 4: Output reports
report_timing -path full -delay max -max_paths 1 -nworst 1 > reports/sync_low.rep
report_area >> reports/sync_low.rep
report_power -hier >> reports/sync_low.rep

# Step 5: Output final VHDL and Verilog files
write_file -format verilog -hierarchy -output "mapped/sync_low.v"
echo "\nScript Done\n"
echo "\nChecking Design\n"
check_design

# Step 2: Set design constraints
# Uncomment below to set timing, area, power, etc. constraints
set_max_delay 6.5 -from "b[0]" -to "sum[15]"
# set_max_area <area>
# set_max_total_power <power> mW


# Step 3: Compile the design
compile -map_effort medium

# Step 4: Output reports
report_timing -path full -delay max -max_paths 1 -nworst 1 > reports/sync_low_1.rep
report_area >> reports/sync_low_1.rep
report_power -hier >> reports/sync_low_1.rep

# Step 5: Output final VHDL and Verilog files
write_file -format verilog -hierarchy -output "mapped/sync_low_1.v"
echo "\nScript Done\n"
echo "\nChecking Design\n"
check_design



quit
