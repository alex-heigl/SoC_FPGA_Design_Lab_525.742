
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_compiler_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -7,0,0,0,0,1,1,2,3,4,6,7,9,12,14,17,21,25,29,34,40,46,53,61,69,78,87,98,109,121,134,148,163,179,195,213,231,250,271,292,314,336,360,384,409,435,461,488,516,544,572,601,630,659,688,717,746,775,803,832,859,886,913,939,964,988,1010,1032,1053,1072,1091,1107,1122,1136,1148,1159,1167,1174,1180,1183,1185,1185,1183,1180,1174,1167,1159,1148,1136,1122,1107,1091,1072,1053,1032,1010,988,964,939,913,886,859,832,803,775,746,717,688,659,630,601,572,544,516,488,461,435,409,384,360,336,314,292,271,250,231,213,195,179,163,148,134,121,109,98,87,78,69,61,53,46,40,34,29,25,21,17,14,12,9,7,6,4,3,2,1,1,0,0,0,0,-7
// chanpats: 173
// name: fir_compiler_0
// filter_type: 2
// rate_change: 0
// interp_rate: 1
// decim_rate: 40
// zero_pack_factor: 1
// coeff_padding: 39
// num_coeffs: 162
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 2
// data_width: 16
// data_fract_width: 14
// output_rounding_mode: 0
// output_width: 33
// output_fract_width: 14
// config_method: 0

const double fir_compiler_0_coefficients[162] = {-7,0,0,0,0,1,1,2,3,4,6,7,9,12,14,17,21,25,29,34,40,46,53,61,69,78,87,98,109,121,134,148,163,179,195,213,231,250,271,292,314,336,360,384,409,435,461,488,516,544,572,601,630,659,688,717,746,775,803,832,859,886,913,939,964,988,1010,1032,1053,1072,1091,1107,1122,1136,1148,1159,1167,1174,1180,1183,1185,1185,1183,1180,1174,1167,1159,1148,1136,1122,1107,1091,1072,1053,1032,1010,988,964,939,913,886,859,832,803,775,746,717,688,659,630,601,572,544,516,488,461,435,409,384,360,336,314,292,271,250,231,213,195,179,163,148,134,121,109,98,87,78,69,61,53,46,40,34,29,25,21,17,14,12,9,7,6,4,3,2,1,1,0,0,0,0,-7};

const xip_fir_v7_2_pattern fir_compiler_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_compiler_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_compiler_0";
  config.filter_type         = 2;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 40;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_compiler_0_coefficients[0];
  config.coeff_padding       = 39;
  config.num_coeffs          = 162;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_compiler_0_chanpats[0];
  config.num_paths           = 2;
  config.data_width          = 16;
  config.data_fract_width    = 14;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 33;
  config.output_fract_width  = 14,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_compiler_0_config = gen_fir_compiler_0_config();

