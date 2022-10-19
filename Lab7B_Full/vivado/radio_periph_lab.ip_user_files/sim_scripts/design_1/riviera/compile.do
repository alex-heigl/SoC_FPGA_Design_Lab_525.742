vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_iic_v2_1_1
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_11
vlib riviera/processing_system7_vip_v1_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_25
vlib riviera/fifo_generator_v13_2_6
vlib riviera/axi_data_fifo_v2_1_24
vlib riviera/axi_crossbar_v2_1_26
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/fir_compiler_v7_2_17
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_17
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/dds_compiler_v6_0_21
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v2_0_7
vlib riviera/gigantic_mux
vlib riviera/xlconcat_v2_1_4
vlib riviera/axis_broadcaster_v1_1_24
vlib riviera/axi_protocol_converter_v2_1_25

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_iic_v2_1_1 riviera/axi_iic_v2_1_1
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 riviera/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 riviera/processing_system7_vip_v1_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 riviera/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 riviera/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 riviera/axi_crossbar_v2_1_26
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap fir_compiler_v7_2_17 riviera/fir_compiler_v7_2_17
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 riviera/mult_gen_v12_0_17
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_21 riviera/dds_compiler_v6_0_21
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_7 riviera/axis_data_fifo_v2_0_7
vmap gigantic_mux riviera/gigantic_mux
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap axis_broadcaster_v1_1_24 riviera/axis_broadcaster_v1_1_24
vmap axi_protocol_converter_v2_1_25 riviera/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_1 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/89a5/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_iic_0_0/sim/design_1_axi_iic_0_0.vhd" \
"../../../bd/design_1/ipshared/04d4/src/clkdivider.vhd" \
"../../../bd/design_1/ipshared/04d4/src/low_level_dac_if.vhd" \
"../../../bd/design_1/ip/design_1_lowlevel_dac_intfc_0_0/sim/design_1_lowlevel_dac_intfc_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_125M_0/sim/design_1_rst_ps7_0_125M_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/fir_compiler_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/fir_compiler_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_17 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/fir_compiler_1/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_full_radio_0_0/src/fir_compiler_1/sim/fir_compiler_1.vhd" \
"../../../bd/design_1/ip/design_1_full_radio_0_0/src/fir_compiler_0/sim/fir_compiler_0.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_21 -93 \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_1/sim/dds_compiler_1.vhd" \
"../../../bd/design_1/ip/design_1_full_radio_0_0/src/dds_compiler_0/sim/dds_compiler_0.vhd" \
"../../../bd/design_1/ipshared/df7b/hdl/full_radio_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/df7b/hdl/full_radio_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_full_radio_0_0/sim/design_1_full_radio_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_7  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/sim/axis_data_fifo_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/sim/ila_0.vhd" \
"../../../bd/design_1/ipshared/8d5b/hdl/simple_fifo_v1_0_S00_AXIS_LITE.vhd" \
"../../../bd/design_1/ipshared/8d5b/hdl/simple_fifo_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_simple_fifo_0_0/sim/design_1_simple_fifo_0_0.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/sim/bd_36cd.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_0/sim/bd_36cd_ila_lib_0.vhd" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_1/bd_36cd_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_1/sim/bd_36cd_g_inst_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_2/sim/bd_36cd_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_3/sim/bd_36cd_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_4/sim/bd_36cd_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_5/sim/bd_36cd_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_6/sim/bd_36cd_slot_0_r_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_system_ila_0_1/sim/design_1_system_ila_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_broadcaster_0_0/hdl/tdata_design_1_axis_broadcaster_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_broadcaster_0_0/hdl/tuser_design_1_axis_broadcaster_0_0.v" \

vlog -work axis_broadcaster_v1_1_24  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/d3c7/hdl/axis_broadcaster_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_broadcaster_0_0/hdl/top_design_1_axis_broadcaster_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_broadcaster_0_0/sim/design_1_axis_broadcaster_0_0.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/axis_data_fifo_0/hdl" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/src/ila_0/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../radio_periph_lab.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

