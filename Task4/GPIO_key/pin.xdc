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

##ioPin
set_property PACKAGE_PIN T10 [get_ports {ioPin[0]}]
set_property PACKAGE_PIN R11 [get_ports {ioPin[1]}]
set_property PACKAGE_PIN T12 [get_ports {ioPin[2]}]
set_property PACKAGE_PIN R12 [get_ports {ioPin[3]}]
set_property PACKAGE_PIN R2 [get_ports {ioPin[4]}]
set_property PACKAGE_PIN N4 [get_ports {ioPin[5]}]
set_property PACKAGE_PIN H4 [get_ports {ioPin[6]}]
set_property PACKAGE_PIN F3 [get_ports {ioPin[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ioPin[0]}]


##led
set_property PACKAGE_PIN P9 [get_ports {LED[0]}]
set_property PACKAGE_PIN R8 [get_ports {LED[1]}]
set_property PACKAGE_PIN R7 [get_ports {LED[2]}]
set_property PACKAGE_PIN T5 [get_ports {LED[3]}]
set_property PACKAGE_PIN N6 [get_ports {LED[4]}]
set_property PACKAGE_PIN T4 [get_ports {LED[5]}]
set_property PACKAGE_PIN T3 [get_ports {LED[6]}]
set_property PACKAGE_PIN T2 [get_ports {LED[7]}]
set_property PACKAGE_PIN R1 [get_ports LEDclk]

set_property IOSTANDARD LVCMOS33 [get_ports LEDclk]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

##keyboard
set_property PACKAGE_PIN K3 [get_ports row[0]]
set_property IOSTANDARD LVCMOS33 [get_ports row[0]]
set_property PACKAGE_PIN M6 [get_ports row[1]]
set_property IOSTANDARD LVCMOS33 [get_ports row[1]]
set_property PACKAGE_PIN P10 [get_ports row[2]]
set_property IOSTANDARD LVCMOS33 [get_ports row[2]]
set_property PACKAGE_PIN R10 [get_ports row[3]]
set_property IOSTANDARD LVCMOS33 [get_ports row[3]]

set_property PACKAGE_PIN R3 [get_ports col[0]]
set_property IOSTANDARD LVCMOS33 [get_ports col[0]]
set_property PACKAGE_PIN P4 [get_ports col[1]]
set_property IOSTANDARD LVCMOS33 [get_ports col[1]]
set_property PACKAGE_PIN R5 [get_ports col[2]]
set_property IOSTANDARD LVCMOS33 [get_ports col[2]]
set_property PACKAGE_PIN R6 [get_ports col[3]]
set_property IOSTANDARD LVCMOS33 [get_ports col[3]]

