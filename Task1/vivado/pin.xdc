##clk
set_property PACKAGE_PIN D4 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
##RSTn
set_property PACKAGE_PIN T9 [get_ports RSTn]
set_property IOSTANDARD LVCMOS33 [get_ports RSTn]
##DEBUGGER
set_property PACKAGE_PIN H14 [get_ports SWDIO]
set_property IOSTANDARD LVCMOS33 [get_ports SWDIO]
set_property PACKAGE_PIN H12 [get_ports SWCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SWCLK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets SWCLK]