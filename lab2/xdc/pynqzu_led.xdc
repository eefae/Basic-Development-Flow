# LED
set_property PACKAGE_PIN B5 [get_ports {led0_tri_o}];
set_property PACKAGE_PIN A6 [get_ports {led1}];
set_property PACKAGE_PIN B8 [get_ports {led2}];
#set_property PACKAGE_PIN A7 [get_ports {led3}];

set_property IOSTANDARD LVCMOS12 [get_ports {led0_tri_o}];
set_property IOSTANDARD LVCMOS12 [get_ports {led1}];
set_property IOSTANDARD LVCMOS12 [get_ports {led2}];