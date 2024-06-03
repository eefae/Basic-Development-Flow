# LED
set_property PACKAGE_PIN B5 [get_ports {led_4bits_tri_o[0]}];
set_property PACKAGE_PIN A6 [get_ports {led_4bits_tri_o[1]}];
set_property PACKAGE_PIN B8 [get_ports {led_4bits_tri_o[2]}];
set_property PACKAGE_PIN A7 [get_ports {led_4bits_tri_o[3]}];

set_property IOSTANDARD LVCMOS12 [get_ports {led_4bits_tri_o[1]}];
set_property IOSTANDARD LVCMOS12 [get_ports {led_4bits_tri_o[2]}];
set_property IOSTANDARD LVCMOS12 [get_ports {led_4bits_tri_o[3]}];
set_property IOSTANDARD LVCMOS12 [get_ports {led_4bits_tri_o[3]}];

# Switch
set_property PACKAGE_PIN AA12 [get_ports {dip_switch_4bits_tri_i[0]}];
set_property PACKAGE_PIN Y12 [get_ports {dip_switch_4bits_tri_i[1]}];
set_property PACKAGE_PIN W11 [get_ports {dip_switch_4bits_tri_i[2]}];
set_property PACKAGE_PIN W12 [get_ports {dip_switch_4bits_tri_i[3]}];
set_property IOSTANDARD LVCMOS12 [get_ports {dip_switch_4bits_tri_i[1]}];
set_property IOSTANDARD LVCMOS12 [get_ports {dip_switch_4bits_tri_i[2]}];
set_property IOSTANDARD LVCMOS12 [get_ports {dip_switch_4bits_tri_i[3]}];
set_property IOSTANDARD LVCMOS12 [get_ports {dip_switch_4bits_tri_i[3]}];