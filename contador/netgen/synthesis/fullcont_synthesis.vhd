--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: fullcont_synthesis.vhd
-- /___/   /\     Timestamp: Sat Feb  9 15:53:53 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm fullcont -w -dir netgen/synthesis -ofmt vhdl -sim fullcont.ngc fullcont_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: fullcont.ngc
-- Output file	: /home/pablo/contador/netgen/synthesis/fullcont_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: fullcont
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity fullcont is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    dispend : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    segend : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end fullcont;

architecture Structure of fullcont is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_10_rt_45 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_11_rt_47 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_12_rt_49 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_13_rt_51 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_14_rt_53 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_15_rt_55 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_16_rt_57 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_17_rt_59 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_18_rt_61 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_19_rt_63 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_1_rt_65 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_20_rt_67 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_21_rt_69 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_2_rt_71 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_3_rt_73 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_4_rt_75 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_5_rt_77 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_6_rt_79 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_7_rt_81 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_8_rt_83 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_cy_9_rt_85 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_0 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_1 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_10 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_11 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_12 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_13 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_14 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_15 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_16 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_17 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_18 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_19 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_2 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_20 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_21 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_22 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_3 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_4 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_5 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_6 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_7 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_8 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_eqn_9 : STD_LOGIC; 
  signal SB1_Mcount_cuenta_xor_22_rt_110 : STD_LOGIC; 
  signal SB1_Mcount_ndecimas : STD_LOGIC; 
  signal SB1_Mcount_ndecimas1 : STD_LOGIC; 
  signal SB1_Mcount_ndecimas2 : STD_LOGIC; 
  signal SB1_Mcount_ndecimas3 : STD_LOGIC; 
  signal SB1_Mcount_ndecsegundos : STD_LOGIC; 
  signal SB1_Mcount_ndecsegundos1 : STD_LOGIC; 
  signal SB1_Mcount_ndecsegundos2 : STD_LOGIC; 
  signal SB1_Mcount_ndecsegundos3 : STD_LOGIC; 
  signal SB1_Mcount_nminutos : STD_LOGIC; 
  signal SB1_Mcount_nminutos1 : STD_LOGIC; 
  signal SB1_Mcount_nminutos2 : STD_LOGIC; 
  signal SB1_Mcount_nminutos3 : STD_LOGIC; 
  signal SB1_Mcount_nsegundos : STD_LOGIC; 
  signal SB1_Mcount_nsegundos1 : STD_LOGIC; 
  signal SB1_Mcount_nsegundos2 : STD_LOGIC; 
  signal SB1_Mcount_nsegundos3 : STD_LOGIC; 
  signal SB1_cuenta_cmp_eq0000 : STD_LOGIC; 
  signal SB1_reset_inv : STD_LOGIC; 
  signal SB1_s10seg_191 : STD_LOGIC; 
  signal SB1_s10seg_mux0002 : STD_LOGIC; 
  signal SB1_s10seg_mux00021_193 : STD_LOGIC; 
  signal SB1_s1decima_194 : STD_LOGIC; 
  signal SB1_s1seg_195 : STD_LOGIC; 
  signal SB1_s1seg_mux0002 : STD_LOGIC; 
  signal SB1_s1seg_mux00021_197 : STD_LOGIC; 
  signal SB1_s60seg_198 : STD_LOGIC; 
  signal SB1_s60seg_mux0002 : STD_LOGIC; 
  signal SB1_s60seg_mux00021_200 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_10_rt_207 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_11_rt_209 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_12_rt_211 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_13_rt_213 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_14_rt_215 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_1_rt_217 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_2_rt_219 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_3_rt_221 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_4_rt_223 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_5_rt_225 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_6_rt_227 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_7_rt_229 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_8_rt_231 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_cy_9_rt_233 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_0 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_1 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_10 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_11 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_12 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_13 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_14 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_15 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_2 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_3 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_4 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_5 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_6 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_7 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_8 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_eqn_9 : STD_LOGIC; 
  signal SB2_Mcount_cuenta_xor_15_rt_251 : STD_LOGIC; 
  signal SB2_clk_out_FSM_FFd1_252 : STD_LOGIC; 
  signal SB2_clk_out_FSM_FFd2_253 : STD_LOGIC; 
  signal SB2_clk_out_FSM_FFd3_254 : STD_LOGIC; 
  signal SB2_clk_out_FSM_FFd4_255 : STD_LOGIC; 
  signal SB2_clk_out_cmp_eq0000 : STD_LOGIC; 
  signal SB2_clk_out_cmp_eq000016_257 : STD_LOGIC; 
  signal SB2_clk_out_cmp_eq000034_258 : STD_LOGIC; 
  signal SB2_clk_out_cmp_eq00004_259 : STD_LOGIC; 
  signal SB2_clk_out_cmp_eq000043_260 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_3_277 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_31_278 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_32_279 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_33_280 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_4_281 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_41_282 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_42_283 : STD_LOGIC; 
  signal SB3_Mmux_seg_mux0001_43_284 : STD_LOGIC; 
  signal SB3_Mrom_disp_mux0001 : STD_LOGIC; 
  signal SB3_Mrom_disp_mux0001111 : STD_LOGIC; 
  signal SB3_Mrom_disp_mux000121 : STD_LOGIC; 
  signal SB4_Mrom_segout : STD_LOGIC; 
  signal SB4_Mrom_segout1 : STD_LOGIC; 
  signal SB4_Mrom_segout21 : STD_LOGIC; 
  signal SB4_Mrom_segout31 : STD_LOGIC; 
  signal SB4_Mrom_segout4 : STD_LOGIC; 
  signal SB4_Mrom_segout5 : STD_LOGIC; 
  signal SB4_Mrom_segout6 : STD_LOGIC; 
  signal clk_BUFGP_319 : STD_LOGIC; 
  signal reset_IBUF_325 : STD_LOGIC; 
  signal CLK_lento : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal SB1_Mcount_cuenta_cy : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal SB1_Mcount_cuenta_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SB1_cuenta : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal SB1_cuenta_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal SB1_cuenta_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal SB1_dec_segundos : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB1_decimas : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB1_minutos : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB1_ndecimas : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB1_ndecsegundos : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB1_nminutos : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB1_nsegundos : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB1_segundos : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB2_Mcount_cuenta_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal SB2_Mcount_cuenta_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SB2_cuenta : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal SB3_disp : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB3_seg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB3_seg_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB5_dispend : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SB5_segend : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  SB1_dec_segundos_3 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecsegundos(3),
      Q => SB1_dec_segundos(3)
    );
  SB1_dec_segundos_2 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecsegundos(2),
      Q => SB1_dec_segundos(2)
    );
  SB1_dec_segundos_1 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecsegundos(1),
      Q => SB1_dec_segundos(1)
    );
  SB1_dec_segundos_0 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecsegundos(0),
      Q => SB1_dec_segundos(0)
    );
  SB1_segundos_3 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nsegundos(3),
      Q => SB1_segundos(3)
    );
  SB1_segundos_2 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nsegundos(2),
      Q => SB1_segundos(2)
    );
  SB1_segundos_1 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nsegundos(1),
      Q => SB1_segundos(1)
    );
  SB1_segundos_0 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nsegundos(0),
      Q => SB1_segundos(0)
    );
  SB1_minutos_3 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nminutos(3),
      Q => SB1_minutos(3)
    );
  SB1_minutos_2 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nminutos(2),
      Q => SB1_minutos(2)
    );
  SB1_minutos_1 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nminutos(1),
      Q => SB1_minutos(1)
    );
  SB1_minutos_0 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_nminutos(0),
      Q => SB1_minutos(0)
    );
  SB1_decimas_3 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecimas(3),
      Q => SB1_decimas(3)
    );
  SB1_decimas_2 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecimas(2),
      Q => SB1_decimas(2)
    );
  SB1_decimas_1 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecimas(1),
      Q => SB1_decimas(1)
    );
  SB1_decimas_0 : FDE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_reset_inv,
      D => SB1_ndecimas(0),
      Q => SB1_decimas(0)
    );
  SB1_s1decima : FDC
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_cuenta_cmp_eq0000,
      Q => SB1_s1decima_194
    );
  SB1_s10seg : FDC
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_s10seg_mux0002,
      Q => SB1_s10seg_191
    );
  SB1_s1seg : FDC
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_s1seg_mux0002,
      Q => SB1_s1seg_195
    );
  SB1_s60seg : FDC
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_s60seg_mux0002,
      Q => SB1_s60seg_198
    );
  SB2_clk_out_FSM_FFd1 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB2_clk_out_cmp_eq0000,
      CLR => reset_IBUF_325,
      D => SB2_clk_out_FSM_FFd2_253,
      Q => SB2_clk_out_FSM_FFd1_252
    );
  SB2_clk_out_FSM_FFd2 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB2_clk_out_cmp_eq0000,
      CLR => reset_IBUF_325,
      D => SB2_clk_out_FSM_FFd3_254,
      Q => SB2_clk_out_FSM_FFd2_253
    );
  SB2_clk_out_FSM_FFd3 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB2_clk_out_cmp_eq0000,
      CLR => reset_IBUF_325,
      D => SB2_clk_out_FSM_FFd4_255,
      Q => SB2_clk_out_FSM_FFd3_254
    );
  SB2_clk_out_FSM_FFd4 : FDPE
    port map (
      C => clk_BUFGP_319,
      CE => SB2_clk_out_cmp_eq0000,
      D => SB2_clk_out_FSM_FFd1_252,
      PRE => reset_IBUF_325,
      Q => SB2_clk_out_FSM_FFd4_255
    );
  SB1_ndecsegundos_0 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s10seg_191,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecsegundos,
      Q => SB1_ndecsegundos(0)
    );
  SB1_ndecsegundos_1 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s10seg_191,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecsegundos1,
      Q => SB1_ndecsegundos(1)
    );
  SB1_ndecsegundos_2 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s10seg_191,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecsegundos2,
      Q => SB1_ndecsegundos(2)
    );
  SB1_ndecsegundos_3 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s10seg_191,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecsegundos3,
      Q => SB1_ndecsegundos(3)
    );
  SB1_nminutos_0 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s60seg_198,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nminutos,
      Q => SB1_nminutos(0)
    );
  SB1_nminutos_1 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s60seg_198,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nminutos1,
      Q => SB1_nminutos(1)
    );
  SB1_nminutos_2 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s60seg_198,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nminutos2,
      Q => SB1_nminutos(2)
    );
  SB1_nminutos_3 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s60seg_198,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nminutos3,
      Q => SB1_nminutos(3)
    );
  SB1_nsegundos_0 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1seg_195,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nsegundos,
      Q => SB1_nsegundos(0)
    );
  SB1_nsegundos_1 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1seg_195,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nsegundos1,
      Q => SB1_nsegundos(1)
    );
  SB1_nsegundos_2 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1seg_195,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nsegundos2,
      Q => SB1_nsegundos(2)
    );
  SB1_nsegundos_3 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1seg_195,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_nsegundos3,
      Q => SB1_nsegundos(3)
    );
  SB1_cuenta_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_0,
      Q => SB1_cuenta(0)
    );
  SB1_cuenta_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_1,
      Q => SB1_cuenta(1)
    );
  SB1_cuenta_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_2,
      Q => SB1_cuenta(2)
    );
  SB1_cuenta_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_3,
      Q => SB1_cuenta(3)
    );
  SB1_cuenta_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_4,
      Q => SB1_cuenta(4)
    );
  SB1_cuenta_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_5,
      Q => SB1_cuenta(5)
    );
  SB1_cuenta_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_6,
      Q => SB1_cuenta(6)
    );
  SB1_cuenta_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_7,
      Q => SB1_cuenta(7)
    );
  SB1_cuenta_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_8,
      Q => SB1_cuenta(8)
    );
  SB1_cuenta_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_9,
      Q => SB1_cuenta(9)
    );
  SB1_cuenta_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_10,
      Q => SB1_cuenta(10)
    );
  SB1_cuenta_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_11,
      Q => SB1_cuenta(11)
    );
  SB1_cuenta_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_12,
      Q => SB1_cuenta(12)
    );
  SB1_cuenta_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_13,
      Q => SB1_cuenta(13)
    );
  SB1_cuenta_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_14,
      Q => SB1_cuenta(14)
    );
  SB1_cuenta_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_15,
      Q => SB1_cuenta(15)
    );
  SB1_cuenta_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_16,
      Q => SB1_cuenta(16)
    );
  SB1_cuenta_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_17,
      Q => SB1_cuenta(17)
    );
  SB1_cuenta_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_18,
      Q => SB1_cuenta(18)
    );
  SB1_cuenta_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_19,
      Q => SB1_cuenta(19)
    );
  SB1_cuenta_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_20,
      Q => SB1_cuenta(20)
    );
  SB1_cuenta_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_21,
      Q => SB1_cuenta(21)
    );
  SB1_cuenta_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_cuenta_eqn_22,
      Q => SB1_cuenta(22)
    );
  SB1_ndecimas_0 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1decima_194,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecimas,
      Q => SB1_ndecimas(0)
    );
  SB1_ndecimas_1 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1decima_194,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecimas1,
      Q => SB1_ndecimas(1)
    );
  SB1_ndecimas_2 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1decima_194,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecimas2,
      Q => SB1_ndecimas(2)
    );
  SB1_ndecimas_3 : FDCE
    port map (
      C => clk_BUFGP_319,
      CE => SB1_s1decima_194,
      CLR => reset_IBUF_325,
      D => SB1_Mcount_ndecimas3,
      Q => SB1_ndecimas(3)
    );
  SB2_cuenta_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_0,
      Q => SB2_cuenta(0)
    );
  SB2_cuenta_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_1,
      Q => SB2_cuenta(1)
    );
  SB2_cuenta_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_2,
      Q => SB2_cuenta(2)
    );
  SB2_cuenta_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_3,
      Q => SB2_cuenta(3)
    );
  SB2_cuenta_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_4,
      Q => SB2_cuenta(4)
    );
  SB2_cuenta_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_5,
      Q => SB2_cuenta(5)
    );
  SB2_cuenta_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_6,
      Q => SB2_cuenta(6)
    );
  SB2_cuenta_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_7,
      Q => SB2_cuenta(7)
    );
  SB2_cuenta_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_8,
      Q => SB2_cuenta(8)
    );
  SB2_cuenta_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_9,
      Q => SB2_cuenta(9)
    );
  SB2_cuenta_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_10,
      Q => SB2_cuenta(10)
    );
  SB2_cuenta_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_11,
      Q => SB2_cuenta(11)
    );
  SB2_cuenta_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_12,
      Q => SB2_cuenta(12)
    );
  SB2_cuenta_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_13,
      Q => SB2_cuenta(13)
    );
  SB2_cuenta_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_14,
      Q => SB2_cuenta(14)
    );
  SB2_cuenta_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_319,
      CLR => reset_IBUF_325,
      D => SB2_Mcount_cuenta_eqn_15,
      Q => SB2_cuenta(15)
    );
  SB1_Mcount_cuenta_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => SB1_Mcount_cuenta_lut(0),
      O => SB1_Mcount_cuenta_cy(0)
    );
  SB1_Mcount_cuenta_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => SB1_Mcount_cuenta_lut(0),
      O => Result(0)
    );
  SB1_Mcount_cuenta_cy_1_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(0),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_1_rt_65,
      O => SB1_Mcount_cuenta_cy(1)
    );
  SB1_Mcount_cuenta_xor_1_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(0),
      LI => SB1_Mcount_cuenta_cy_1_rt_65,
      O => Result(1)
    );
  SB1_Mcount_cuenta_cy_2_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(1),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_2_rt_71,
      O => SB1_Mcount_cuenta_cy(2)
    );
  SB1_Mcount_cuenta_xor_2_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(1),
      LI => SB1_Mcount_cuenta_cy_2_rt_71,
      O => Result(2)
    );
  SB1_Mcount_cuenta_cy_3_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(2),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_3_rt_73,
      O => SB1_Mcount_cuenta_cy(3)
    );
  SB1_Mcount_cuenta_xor_3_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(2),
      LI => SB1_Mcount_cuenta_cy_3_rt_73,
      O => Result(3)
    );
  SB1_Mcount_cuenta_cy_4_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(3),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_4_rt_75,
      O => SB1_Mcount_cuenta_cy(4)
    );
  SB1_Mcount_cuenta_xor_4_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(3),
      LI => SB1_Mcount_cuenta_cy_4_rt_75,
      O => Result(4)
    );
  SB1_Mcount_cuenta_cy_5_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(4),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_5_rt_77,
      O => SB1_Mcount_cuenta_cy(5)
    );
  SB1_Mcount_cuenta_xor_5_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(4),
      LI => SB1_Mcount_cuenta_cy_5_rt_77,
      O => Result(5)
    );
  SB1_Mcount_cuenta_cy_6_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(5),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_6_rt_79,
      O => SB1_Mcount_cuenta_cy(6)
    );
  SB1_Mcount_cuenta_xor_6_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(5),
      LI => SB1_Mcount_cuenta_cy_6_rt_79,
      O => Result(6)
    );
  SB1_Mcount_cuenta_cy_7_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(6),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_7_rt_81,
      O => SB1_Mcount_cuenta_cy(7)
    );
  SB1_Mcount_cuenta_xor_7_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(6),
      LI => SB1_Mcount_cuenta_cy_7_rt_81,
      O => Result(7)
    );
  SB1_Mcount_cuenta_cy_8_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(7),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_8_rt_83,
      O => SB1_Mcount_cuenta_cy(8)
    );
  SB1_Mcount_cuenta_xor_8_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(7),
      LI => SB1_Mcount_cuenta_cy_8_rt_83,
      O => Result(8)
    );
  SB1_Mcount_cuenta_cy_9_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(8),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_9_rt_85,
      O => SB1_Mcount_cuenta_cy(9)
    );
  SB1_Mcount_cuenta_xor_9_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(8),
      LI => SB1_Mcount_cuenta_cy_9_rt_85,
      O => Result(9)
    );
  SB1_Mcount_cuenta_cy_10_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(9),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_10_rt_45,
      O => SB1_Mcount_cuenta_cy(10)
    );
  SB1_Mcount_cuenta_xor_10_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(9),
      LI => SB1_Mcount_cuenta_cy_10_rt_45,
      O => Result(10)
    );
  SB1_Mcount_cuenta_cy_11_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(10),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_11_rt_47,
      O => SB1_Mcount_cuenta_cy(11)
    );
  SB1_Mcount_cuenta_xor_11_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(10),
      LI => SB1_Mcount_cuenta_cy_11_rt_47,
      O => Result(11)
    );
  SB1_Mcount_cuenta_cy_12_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(11),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_12_rt_49,
      O => SB1_Mcount_cuenta_cy(12)
    );
  SB1_Mcount_cuenta_xor_12_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(11),
      LI => SB1_Mcount_cuenta_cy_12_rt_49,
      O => Result(12)
    );
  SB1_Mcount_cuenta_cy_13_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(12),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_13_rt_51,
      O => SB1_Mcount_cuenta_cy(13)
    );
  SB1_Mcount_cuenta_xor_13_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(12),
      LI => SB1_Mcount_cuenta_cy_13_rt_51,
      O => Result(13)
    );
  SB1_Mcount_cuenta_cy_14_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(13),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_14_rt_53,
      O => SB1_Mcount_cuenta_cy(14)
    );
  SB1_Mcount_cuenta_xor_14_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(13),
      LI => SB1_Mcount_cuenta_cy_14_rt_53,
      O => Result(14)
    );
  SB1_Mcount_cuenta_cy_15_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(14),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_15_rt_55,
      O => SB1_Mcount_cuenta_cy(15)
    );
  SB1_Mcount_cuenta_xor_15_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(14),
      LI => SB1_Mcount_cuenta_cy_15_rt_55,
      O => Result(15)
    );
  SB1_Mcount_cuenta_cy_16_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(15),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_16_rt_57,
      O => SB1_Mcount_cuenta_cy(16)
    );
  SB1_Mcount_cuenta_xor_16_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(15),
      LI => SB1_Mcount_cuenta_cy_16_rt_57,
      O => Result(16)
    );
  SB1_Mcount_cuenta_cy_17_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(16),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_17_rt_59,
      O => SB1_Mcount_cuenta_cy(17)
    );
  SB1_Mcount_cuenta_xor_17_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(16),
      LI => SB1_Mcount_cuenta_cy_17_rt_59,
      O => Result(17)
    );
  SB1_Mcount_cuenta_cy_18_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(17),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_18_rt_61,
      O => SB1_Mcount_cuenta_cy(18)
    );
  SB1_Mcount_cuenta_xor_18_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(17),
      LI => SB1_Mcount_cuenta_cy_18_rt_61,
      O => Result(18)
    );
  SB1_Mcount_cuenta_cy_19_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(18),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_19_rt_63,
      O => SB1_Mcount_cuenta_cy(19)
    );
  SB1_Mcount_cuenta_xor_19_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(18),
      LI => SB1_Mcount_cuenta_cy_19_rt_63,
      O => Result(19)
    );
  SB1_Mcount_cuenta_cy_20_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(19),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_20_rt_67,
      O => SB1_Mcount_cuenta_cy(20)
    );
  SB1_Mcount_cuenta_xor_20_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(19),
      LI => SB1_Mcount_cuenta_cy_20_rt_67,
      O => Result(20)
    );
  SB1_Mcount_cuenta_cy_21_Q : MUXCY
    port map (
      CI => SB1_Mcount_cuenta_cy(20),
      DI => N0,
      S => SB1_Mcount_cuenta_cy_21_rt_69,
      O => SB1_Mcount_cuenta_cy(21)
    );
  SB1_Mcount_cuenta_xor_21_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(20),
      LI => SB1_Mcount_cuenta_cy_21_rt_69,
      O => Result(21)
    );
  SB1_Mcount_cuenta_xor_22_Q : XORCY
    port map (
      CI => SB1_Mcount_cuenta_cy(21),
      LI => SB1_Mcount_cuenta_xor_22_rt_110,
      O => Result(22)
    );
  SB2_Mcount_cuenta_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => SB2_Mcount_cuenta_lut(0),
      O => SB2_Mcount_cuenta_cy(0)
    );
  SB2_Mcount_cuenta_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => SB2_Mcount_cuenta_lut(0),
      O => Result_0_1
    );
  SB2_Mcount_cuenta_cy_1_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(0),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_1_rt_217,
      O => SB2_Mcount_cuenta_cy(1)
    );
  SB2_Mcount_cuenta_xor_1_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(0),
      LI => SB2_Mcount_cuenta_cy_1_rt_217,
      O => Result_1_1
    );
  SB2_Mcount_cuenta_cy_2_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(1),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_2_rt_219,
      O => SB2_Mcount_cuenta_cy(2)
    );
  SB2_Mcount_cuenta_xor_2_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(1),
      LI => SB2_Mcount_cuenta_cy_2_rt_219,
      O => Result_2_1
    );
  SB2_Mcount_cuenta_cy_3_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(2),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_3_rt_221,
      O => SB2_Mcount_cuenta_cy(3)
    );
  SB2_Mcount_cuenta_xor_3_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(2),
      LI => SB2_Mcount_cuenta_cy_3_rt_221,
      O => Result_3_1
    );
  SB2_Mcount_cuenta_cy_4_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(3),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_4_rt_223,
      O => SB2_Mcount_cuenta_cy(4)
    );
  SB2_Mcount_cuenta_xor_4_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(3),
      LI => SB2_Mcount_cuenta_cy_4_rt_223,
      O => Result_4_1
    );
  SB2_Mcount_cuenta_cy_5_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(4),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_5_rt_225,
      O => SB2_Mcount_cuenta_cy(5)
    );
  SB2_Mcount_cuenta_xor_5_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(4),
      LI => SB2_Mcount_cuenta_cy_5_rt_225,
      O => Result_5_1
    );
  SB2_Mcount_cuenta_cy_6_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(5),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_6_rt_227,
      O => SB2_Mcount_cuenta_cy(6)
    );
  SB2_Mcount_cuenta_xor_6_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(5),
      LI => SB2_Mcount_cuenta_cy_6_rt_227,
      O => Result_6_1
    );
  SB2_Mcount_cuenta_cy_7_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(6),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_7_rt_229,
      O => SB2_Mcount_cuenta_cy(7)
    );
  SB2_Mcount_cuenta_xor_7_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(6),
      LI => SB2_Mcount_cuenta_cy_7_rt_229,
      O => Result_7_1
    );
  SB2_Mcount_cuenta_cy_8_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(7),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_8_rt_231,
      O => SB2_Mcount_cuenta_cy(8)
    );
  SB2_Mcount_cuenta_xor_8_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(7),
      LI => SB2_Mcount_cuenta_cy_8_rt_231,
      O => Result_8_1
    );
  SB2_Mcount_cuenta_cy_9_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(8),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_9_rt_233,
      O => SB2_Mcount_cuenta_cy(9)
    );
  SB2_Mcount_cuenta_xor_9_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(8),
      LI => SB2_Mcount_cuenta_cy_9_rt_233,
      O => Result_9_1
    );
  SB2_Mcount_cuenta_cy_10_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(9),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_10_rt_207,
      O => SB2_Mcount_cuenta_cy(10)
    );
  SB2_Mcount_cuenta_xor_10_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(9),
      LI => SB2_Mcount_cuenta_cy_10_rt_207,
      O => Result_10_1
    );
  SB2_Mcount_cuenta_cy_11_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(10),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_11_rt_209,
      O => SB2_Mcount_cuenta_cy(11)
    );
  SB2_Mcount_cuenta_xor_11_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(10),
      LI => SB2_Mcount_cuenta_cy_11_rt_209,
      O => Result_11_1
    );
  SB2_Mcount_cuenta_cy_12_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(11),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_12_rt_211,
      O => SB2_Mcount_cuenta_cy(12)
    );
  SB2_Mcount_cuenta_xor_12_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(11),
      LI => SB2_Mcount_cuenta_cy_12_rt_211,
      O => Result_12_1
    );
  SB2_Mcount_cuenta_cy_13_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(12),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_13_rt_213,
      O => SB2_Mcount_cuenta_cy(13)
    );
  SB2_Mcount_cuenta_xor_13_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(12),
      LI => SB2_Mcount_cuenta_cy_13_rt_213,
      O => Result_13_1
    );
  SB2_Mcount_cuenta_cy_14_Q : MUXCY
    port map (
      CI => SB2_Mcount_cuenta_cy(13),
      DI => N0,
      S => SB2_Mcount_cuenta_cy_14_rt_215,
      O => SB2_Mcount_cuenta_cy(14)
    );
  SB2_Mcount_cuenta_xor_14_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(13),
      LI => SB2_Mcount_cuenta_cy_14_rt_215,
      O => Result_14_1
    );
  SB2_Mcount_cuenta_xor_15_Q : XORCY
    port map (
      CI => SB2_Mcount_cuenta_cy(14),
      LI => SB2_Mcount_cuenta_xor_15_rt_251,
      O => Result_15_1
    );
  SB3_Mmux_seg_mux0001_2_f5 : MUXF5
    port map (
      I0 => SB3_Mmux_seg_mux0001_4_281,
      I1 => SB3_Mmux_seg_mux0001_3_277,
      S => CLK_lento(1),
      O => SB3_seg_mux0001(0)
    );
  SB3_Mmux_seg_mux0001_2_f5_0 : MUXF5
    port map (
      I0 => SB3_Mmux_seg_mux0001_41_282,
      I1 => SB3_Mmux_seg_mux0001_31_278,
      S => CLK_lento(1),
      O => SB3_seg_mux0001(1)
    );
  SB3_Mmux_seg_mux0001_2_f5_1 : MUXF5
    port map (
      I0 => SB3_Mmux_seg_mux0001_42_283,
      I1 => SB3_Mmux_seg_mux0001_32_279,
      S => CLK_lento(1),
      O => SB3_seg_mux0001(2)
    );
  SB3_Mmux_seg_mux0001_2_f5_2 : MUXF5
    port map (
      I0 => SB3_Mmux_seg_mux0001_43_284,
      I1 => SB3_Mmux_seg_mux0001_33_280,
      S => CLK_lento(1),
      O => SB3_seg_mux0001(3)
    );
  SB3_disp_0 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_Mrom_disp_mux0001,
      Q => SB3_disp(0)
    );
  SB3_seg_3 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_seg_mux0001(3),
      Q => SB3_seg(3)
    );
  SB3_seg_2 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_seg_mux0001(2),
      Q => SB3_seg(2)
    );
  SB3_seg_1 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_seg_mux0001(1),
      Q => SB3_seg(1)
    );
  SB3_seg_0 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_seg_mux0001(0),
      Q => SB3_seg(0)
    );
  SB5_dispend_3 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_disp(3),
      Q => SB5_dispend(3)
    );
  SB5_dispend_2 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_disp(2),
      Q => SB5_dispend(2)
    );
  SB5_dispend_1 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_disp(1),
      Q => SB5_dispend(1)
    );
  SB5_dispend_0 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB3_disp(0),
      Q => SB5_dispend(0)
    );
  SB5_segend_6 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB4_Mrom_segout6,
      Q => SB5_segend(6)
    );
  SB5_segend_5 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB4_Mrom_segout5,
      Q => SB5_segend(5)
    );
  SB5_segend_4 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB4_Mrom_segout4,
      Q => SB5_segend(4)
    );
  SB5_segend_1 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB4_Mrom_segout1,
      Q => SB5_segend(1)
    );
  SB5_segend_0 : FD
    port map (
      C => clk_BUFGP_319,
      D => SB4_Mrom_segout,
      Q => SB5_segend(0)
    );
  SB1_cuenta_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => SB1_cuenta(8),
      I1 => SB1_cuenta(4),
      I2 => SB1_cuenta(6),
      O => SB1_cuenta_cmp_eq0000_wg_lut(0)
    );
  SB1_cuenta_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => SB1_cuenta_cmp_eq0000_wg_lut(0),
      O => SB1_cuenta_cmp_eq0000_wg_cy(0)
    );
  SB1_cuenta_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => SB1_cuenta(7),
      I1 => SB1_cuenta(11),
      I2 => SB1_cuenta(3),
      I3 => SB1_cuenta(9),
      O => SB1_cuenta_cmp_eq0000_wg_lut(1)
    );
  SB1_cuenta_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => SB1_cuenta_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => SB1_cuenta_cmp_eq0000_wg_lut(1),
      O => SB1_cuenta_cmp_eq0000_wg_cy(1)
    );
  SB1_cuenta_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => SB1_cuenta(10),
      I1 => SB1_cuenta(14),
      I2 => SB1_cuenta(5),
      I3 => SB1_cuenta(12),
      O => SB1_cuenta_cmp_eq0000_wg_lut(2)
    );
  SB1_cuenta_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => SB1_cuenta_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => SB1_cuenta_cmp_eq0000_wg_lut(2),
      O => SB1_cuenta_cmp_eq0000_wg_cy(2)
    );
  SB1_cuenta_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => SB1_cuenta(13),
      I1 => SB1_cuenta(17),
      I2 => SB1_cuenta(1),
      I3 => SB1_cuenta(15),
      O => SB1_cuenta_cmp_eq0000_wg_lut(3)
    );
  SB1_cuenta_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => SB1_cuenta_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => SB1_cuenta_cmp_eq0000_wg_lut(3),
      O => SB1_cuenta_cmp_eq0000_wg_cy(3)
    );
  SB1_cuenta_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => SB1_cuenta(16),
      I1 => SB1_cuenta(18),
      I2 => SB1_cuenta(0),
      I3 => SB1_cuenta(20),
      O => SB1_cuenta_cmp_eq0000_wg_lut(4)
    );
  SB1_cuenta_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => SB1_cuenta_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => SB1_cuenta_cmp_eq0000_wg_lut(4),
      O => SB1_cuenta_cmp_eq0000_wg_cy(4)
    );
  SB1_cuenta_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => SB1_cuenta(21),
      I1 => SB1_cuenta(19),
      I2 => SB1_cuenta(2),
      I3 => SB1_cuenta(22),
      O => SB1_cuenta_cmp_eq0000_wg_lut(5)
    );
  SB1_cuenta_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => SB1_cuenta_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => SB1_cuenta_cmp_eq0000_wg_lut(5),
      O => SB1_cuenta_cmp_eq0000
    );
  SB1_Mcount_nsegundos_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => SB1_nsegundos(2),
      I1 => SB1_nsegundos(1),
      I2 => SB1_nsegundos(0),
      O => SB1_Mcount_nsegundos2
    );
  SB1_Mcount_nminutos_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => SB1_nminutos(2),
      I1 => SB1_nminutos(1),
      I2 => SB1_nminutos(0),
      O => SB1_Mcount_nminutos2
    );
  SB1_Mcount_ndecimas_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => SB1_ndecimas(2),
      I1 => SB1_ndecimas(1),
      I2 => SB1_ndecimas(0),
      O => SB1_Mcount_ndecimas2
    );
  SB4_Mrom_segout41 : LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      I0 => SB3_seg(3),
      I1 => SB3_seg(1),
      I2 => SB3_seg(2),
      I3 => SB3_seg(0),
      O => SB4_Mrom_segout4
    );
  SB1_Mcount_nsegundos_xor_1_11 : LUT4
    generic map(
      INIT => X"6466"
    )
    port map (
      I0 => SB1_nsegundos(0),
      I1 => SB1_nsegundos(1),
      I2 => SB1_nsegundos(2),
      I3 => SB1_nsegundos(3),
      O => SB1_Mcount_nsegundos1
    );
  SB1_Mcount_nminutos_xor_1_11 : LUT4
    generic map(
      INIT => X"6466"
    )
    port map (
      I0 => SB1_nminutos(0),
      I1 => SB1_nminutos(1),
      I2 => SB1_nminutos(2),
      I3 => SB1_nminutos(3),
      O => SB1_Mcount_nminutos1
    );
  SB1_Mcount_ndecsegundos_xor_1_11 : LUT4
    generic map(
      INIT => X"6466"
    )
    port map (
      I0 => SB1_ndecsegundos(0),
      I1 => SB1_ndecsegundos(1),
      I2 => SB1_ndecsegundos(3),
      I3 => SB1_ndecsegundos(2),
      O => SB1_Mcount_ndecsegundos1
    );
  SB1_Mcount_ndecimas_xor_1_11 : LUT4
    generic map(
      INIT => X"6466"
    )
    port map (
      I0 => SB1_ndecimas(0),
      I1 => SB1_ndecimas(1),
      I2 => SB1_ndecimas(2),
      I3 => SB1_ndecimas(3),
      O => SB1_Mcount_ndecimas1
    );
  SB1_Mcount_ndecsegundos_xor_2_11 : LUT4
    generic map(
      INIT => X"6A62"
    )
    port map (
      I0 => SB1_ndecsegundos(2),
      I1 => SB1_ndecsegundos(0),
      I2 => SB1_ndecsegundos(1),
      I3 => SB1_ndecsegundos(3),
      O => SB1_Mcount_ndecsegundos2
    );
  SB4_Mrom_segout51 : LUT4
    generic map(
      INIT => X"EE48"
    )
    port map (
      I0 => SB3_seg(1),
      I1 => SB3_seg(2),
      I2 => SB3_seg(0),
      I3 => SB3_seg(3),
      O => SB4_Mrom_segout5
    );
  SB4_Mrom_segout111 : LUT4
    generic map(
      INIT => X"FBC2"
    )
    port map (
      I0 => SB3_seg(0),
      I1 => SB3_seg(2),
      I2 => SB3_seg(3),
      I3 => SB3_seg(1),
      O => SB4_Mrom_segout1
    );
  SB1_Mcount_ndecsegundos_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => SB1_ndecsegundos(3),
      I1 => SB1_ndecsegundos(1),
      I2 => SB1_ndecsegundos(0),
      I3 => SB1_ndecsegundos(2),
      O => SB1_Mcount_ndecsegundos3
    );
  SB4_Mrom_segout11 : LUT4
    generic map(
      INIT => X"FA85"
    )
    port map (
      I0 => SB3_seg(1),
      I1 => SB3_seg(0),
      I2 => SB3_seg(2),
      I3 => SB3_seg(3),
      O => SB4_Mrom_segout
    );
  SB1_Mcount_nsegundos_xor_3_11 : LUT4
    generic map(
      INIT => X"68CC"
    )
    port map (
      I0 => SB1_nsegundos(2),
      I1 => SB1_nsegundos(3),
      I2 => SB1_nsegundos(1),
      I3 => SB1_nsegundos(0),
      O => SB1_Mcount_nsegundos3
    );
  SB1_Mcount_nminutos_xor_3_11 : LUT4
    generic map(
      INIT => X"68CC"
    )
    port map (
      I0 => SB1_nminutos(2),
      I1 => SB1_nminutos(3),
      I2 => SB1_nminutos(1),
      I3 => SB1_nminutos(0),
      O => SB1_Mcount_nminutos3
    );
  SB1_Mcount_ndecimas_xor_3_11 : LUT4
    generic map(
      INIT => X"68CC"
    )
    port map (
      I0 => SB1_ndecimas(2),
      I1 => SB1_ndecimas(3),
      I2 => SB1_ndecimas(1),
      I3 => SB1_ndecimas(0),
      O => SB1_Mcount_ndecimas3
    );
  SB2_clk_out_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd2_253,
      I1 => SB2_clk_out_FSM_FFd1_252,
      O => CLK_lento(1)
    );
  SB4_Mrom_segout61 : LUT4
    generic map(
      INIT => X"F0C6"
    )
    port map (
      I0 => SB3_seg(0),
      I1 => SB3_seg(2),
      I2 => SB3_seg(3),
      I3 => SB3_seg(1),
      O => SB4_Mrom_segout6
    );
  SB2_clk_out_or00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB2_clk_out_FSM_FFd1_252,
      O => CLK_lento(0)
    );
  SB2_Mcount_cuenta_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_0_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_0
    );
  SB2_clk_out_cmp_eq000016 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => SB2_cuenta(7),
      I1 => SB2_cuenta(5),
      I2 => SB2_cuenta(6),
      I3 => SB2_cuenta(4),
      O => SB2_clk_out_cmp_eq000016_257
    );
  SB2_clk_out_cmp_eq000034 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => SB2_cuenta(13),
      I1 => SB2_cuenta(14),
      I2 => SB2_cuenta(15),
      I3 => SB2_cuenta(12),
      O => SB2_clk_out_cmp_eq000034_258
    );
  SB2_clk_out_cmp_eq000043 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => SB2_cuenta(11),
      I1 => SB2_cuenta(8),
      I2 => SB2_cuenta(9),
      I3 => SB2_cuenta(10),
      O => SB2_clk_out_cmp_eq000043_260
    );
  SB2_clk_out_cmp_eq000055 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => SB2_clk_out_cmp_eq00004_259,
      I1 => SB2_clk_out_cmp_eq000016_257,
      I2 => SB2_clk_out_cmp_eq000034_258,
      I3 => SB2_clk_out_cmp_eq000043_260,
      O => SB2_clk_out_cmp_eq0000
    );
  SB2_Mcount_cuenta_eqn_16 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_1_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_1
    );
  SB2_Mcount_cuenta_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_2_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_2
    );
  SB1_Mcount_cuenta_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => SB1_cuenta_cmp_eq0000,
      O => SB1_Mcount_cuenta_eqn_0
    );
  SB1_Mcount_cuenta_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => SB1_cuenta_cmp_eq0000,
      O => SB1_Mcount_cuenta_eqn_1
    );
  SB1_Mcount_cuenta_eqn_23 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => SB1_cuenta_cmp_eq0000,
      O => SB1_Mcount_cuenta_eqn_2
    );
  SB2_Mcount_cuenta_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_3_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_3
    );
  SB1_Mcount_cuenta_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => SB1_cuenta_cmp_eq0000,
      O => SB1_Mcount_cuenta_eqn_3
    );
  SB2_Mcount_cuenta_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_4_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_4
    );
  SB1_Mcount_cuenta_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => SB1_cuenta_cmp_eq0000,
      O => SB1_Mcount_cuenta_eqn_4
    );
  SB2_Mcount_cuenta_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_5_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_5
    );
  SB1_Mcount_cuenta_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => SB1_cuenta_cmp_eq0000,
      O => SB1_Mcount_cuenta_eqn_5
    );
  SB2_Mcount_cuenta_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_6_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_6
    );
  SB1_Mcount_cuenta_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => SB1_cuenta_cmp_eq0000,
      O => SB1_Mcount_cuenta_eqn_6
    );
  SB2_Mcount_cuenta_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_7_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_7
    );
  SB1_Mcount_cuenta_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(7),
      O => SB1_Mcount_cuenta_eqn_7
    );
  SB2_Mcount_cuenta_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_8_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_8
    );
  SB1_Mcount_cuenta_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(8),
      O => SB1_Mcount_cuenta_eqn_8
    );
  SB2_Mcount_cuenta_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_9_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_9
    );
  SB1_Mcount_cuenta_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(9),
      O => SB1_Mcount_cuenta_eqn_9
    );
  SB2_Mcount_cuenta_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_10_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_10
    );
  SB1_Mcount_cuenta_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(10),
      O => SB1_Mcount_cuenta_eqn_10
    );
  SB2_Mcount_cuenta_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_11_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_11
    );
  SB1_Mcount_cuenta_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(11),
      O => SB1_Mcount_cuenta_eqn_11
    );
  SB2_Mcount_cuenta_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_12_1,
      I1 => SB2_clk_out_cmp_eq0000,
      O => SB2_Mcount_cuenta_eqn_12
    );
  SB1_Mcount_cuenta_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(12),
      O => SB1_Mcount_cuenta_eqn_12
    );
  SB2_Mcount_cuenta_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB2_clk_out_cmp_eq0000,
      I1 => Result_13_1,
      O => SB2_Mcount_cuenta_eqn_13
    );
  SB1_Mcount_cuenta_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(13),
      O => SB1_Mcount_cuenta_eqn_13
    );
  SB2_Mcount_cuenta_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB2_clk_out_cmp_eq0000,
      I1 => Result_14_1,
      O => SB2_Mcount_cuenta_eqn_14
    );
  SB1_Mcount_cuenta_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(14),
      O => SB1_Mcount_cuenta_eqn_14
    );
  SB2_Mcount_cuenta_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB2_clk_out_cmp_eq0000,
      I1 => Result_15_1,
      O => SB2_Mcount_cuenta_eqn_15
    );
  SB1_Mcount_cuenta_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(15),
      O => SB1_Mcount_cuenta_eqn_15
    );
  SB1_Mcount_cuenta_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(16),
      O => SB1_Mcount_cuenta_eqn_16
    );
  SB1_Mcount_cuenta_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(17),
      O => SB1_Mcount_cuenta_eqn_17
    );
  SB1_Mcount_cuenta_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(18),
      O => SB1_Mcount_cuenta_eqn_18
    );
  SB1_Mcount_cuenta_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(19),
      O => SB1_Mcount_cuenta_eqn_19
    );
  SB1_Mcount_cuenta_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(20),
      O => SB1_Mcount_cuenta_eqn_20
    );
  SB1_Mcount_cuenta_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(21),
      O => SB1_Mcount_cuenta_eqn_21
    );
  SB1_Mcount_cuenta_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => SB1_cuenta_cmp_eq0000,
      I1 => Result(22),
      O => SB1_Mcount_cuenta_eqn_22
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_325
    );
  dispend_3_OBUF : OBUF
    port map (
      I => SB5_dispend(3),
      O => dispend(3)
    );
  dispend_2_OBUF : OBUF
    port map (
      I => SB5_dispend(2),
      O => dispend(2)
    );
  dispend_1_OBUF : OBUF
    port map (
      I => SB5_dispend(1),
      O => dispend(1)
    );
  dispend_0_OBUF : OBUF
    port map (
      I => SB5_dispend(0),
      O => dispend(0)
    );
  segend_6_OBUF : OBUF
    port map (
      I => SB5_segend(6),
      O => segend(6)
    );
  segend_5_OBUF : OBUF
    port map (
      I => SB5_segend(5),
      O => segend(5)
    );
  segend_4_OBUF : OBUF
    port map (
      I => SB5_segend(4),
      O => segend(4)
    );
  segend_3_OBUF : OBUF
    port map (
      I => SB5_segend(3),
      O => segend(3)
    );
  segend_2_OBUF : OBUF
    port map (
      I => SB5_segend(2),
      O => segend(2)
    );
  segend_1_OBUF : OBUF
    port map (
      I => SB5_segend(1),
      O => segend(1)
    );
  segend_0_OBUF : OBUF
    port map (
      I => SB5_segend(0),
      O => segend(0)
    );
  SB3_disp_3 : FDS
    port map (
      C => clk_BUFGP_319,
      D => CLK_lento(0),
      S => CLK_lento(1),
      Q => SB3_disp(3)
    );
  SB3_disp_2 : FDS
    port map (
      C => clk_BUFGP_319,
      D => SB3_Mrom_disp_mux000121,
      S => CLK_lento(1),
      Q => SB3_disp(2)
    );
  SB3_disp_1 : FDS
    port map (
      C => clk_BUFGP_319,
      D => SB3_Mrom_disp_mux0001111,
      S => CLK_lento(0),
      Q => SB3_disp(1)
    );
  SB5_segend_3 : FDS
    port map (
      C => clk_BUFGP_319,
      D => SB4_Mrom_segout31,
      S => SB4_Mrom_segout6,
      Q => SB5_segend(3)
    );
  SB4_Mrom_segout311 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => SB3_seg(0),
      I1 => SB3_seg(1),
      I2 => SB3_seg(2),
      O => SB4_Mrom_segout31
    );
  SB5_segend_2 : FDS
    port map (
      C => clk_BUFGP_319,
      D => SB4_Mrom_segout21,
      S => SB3_seg(0),
      Q => SB5_segend(2)
    );
  SB4_Mrom_segout211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => SB3_seg(1),
      I1 => SB3_seg(2),
      I2 => SB3_seg(3),
      O => SB4_Mrom_segout21
    );
  SB1_Mcount_cuenta_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(1),
      O => SB1_Mcount_cuenta_cy_1_rt_65
    );
  SB1_Mcount_cuenta_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(2),
      O => SB1_Mcount_cuenta_cy_2_rt_71
    );
  SB1_Mcount_cuenta_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(3),
      O => SB1_Mcount_cuenta_cy_3_rt_73
    );
  SB1_Mcount_cuenta_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(4),
      O => SB1_Mcount_cuenta_cy_4_rt_75
    );
  SB1_Mcount_cuenta_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(5),
      O => SB1_Mcount_cuenta_cy_5_rt_77
    );
  SB1_Mcount_cuenta_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(6),
      O => SB1_Mcount_cuenta_cy_6_rt_79
    );
  SB1_Mcount_cuenta_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(7),
      O => SB1_Mcount_cuenta_cy_7_rt_81
    );
  SB1_Mcount_cuenta_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(8),
      O => SB1_Mcount_cuenta_cy_8_rt_83
    );
  SB1_Mcount_cuenta_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(9),
      O => SB1_Mcount_cuenta_cy_9_rt_85
    );
  SB1_Mcount_cuenta_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(10),
      O => SB1_Mcount_cuenta_cy_10_rt_45
    );
  SB1_Mcount_cuenta_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(11),
      O => SB1_Mcount_cuenta_cy_11_rt_47
    );
  SB1_Mcount_cuenta_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(12),
      O => SB1_Mcount_cuenta_cy_12_rt_49
    );
  SB1_Mcount_cuenta_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(13),
      O => SB1_Mcount_cuenta_cy_13_rt_51
    );
  SB1_Mcount_cuenta_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(14),
      O => SB1_Mcount_cuenta_cy_14_rt_53
    );
  SB1_Mcount_cuenta_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(15),
      O => SB1_Mcount_cuenta_cy_15_rt_55
    );
  SB1_Mcount_cuenta_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(16),
      O => SB1_Mcount_cuenta_cy_16_rt_57
    );
  SB1_Mcount_cuenta_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(17),
      O => SB1_Mcount_cuenta_cy_17_rt_59
    );
  SB1_Mcount_cuenta_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(18),
      O => SB1_Mcount_cuenta_cy_18_rt_61
    );
  SB1_Mcount_cuenta_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(19),
      O => SB1_Mcount_cuenta_cy_19_rt_63
    );
  SB1_Mcount_cuenta_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(20),
      O => SB1_Mcount_cuenta_cy_20_rt_67
    );
  SB1_Mcount_cuenta_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(21),
      O => SB1_Mcount_cuenta_cy_21_rt_69
    );
  SB2_Mcount_cuenta_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(1),
      O => SB2_Mcount_cuenta_cy_1_rt_217
    );
  SB2_Mcount_cuenta_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(2),
      O => SB2_Mcount_cuenta_cy_2_rt_219
    );
  SB2_Mcount_cuenta_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(3),
      O => SB2_Mcount_cuenta_cy_3_rt_221
    );
  SB2_Mcount_cuenta_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(4),
      O => SB2_Mcount_cuenta_cy_4_rt_223
    );
  SB2_Mcount_cuenta_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(5),
      O => SB2_Mcount_cuenta_cy_5_rt_225
    );
  SB2_Mcount_cuenta_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(6),
      O => SB2_Mcount_cuenta_cy_6_rt_227
    );
  SB2_Mcount_cuenta_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(7),
      O => SB2_Mcount_cuenta_cy_7_rt_229
    );
  SB2_Mcount_cuenta_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(8),
      O => SB2_Mcount_cuenta_cy_8_rt_231
    );
  SB2_Mcount_cuenta_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(9),
      O => SB2_Mcount_cuenta_cy_9_rt_233
    );
  SB2_Mcount_cuenta_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(10),
      O => SB2_Mcount_cuenta_cy_10_rt_207
    );
  SB2_Mcount_cuenta_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(11),
      O => SB2_Mcount_cuenta_cy_11_rt_209
    );
  SB2_Mcount_cuenta_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(12),
      O => SB2_Mcount_cuenta_cy_12_rt_211
    );
  SB2_Mcount_cuenta_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(13),
      O => SB2_Mcount_cuenta_cy_13_rt_213
    );
  SB2_Mcount_cuenta_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(14),
      O => SB2_Mcount_cuenta_cy_14_rt_215
    );
  SB1_Mcount_cuenta_xor_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB1_cuenta(22),
      O => SB1_Mcount_cuenta_xor_22_rt_110
    );
  SB2_Mcount_cuenta_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SB2_cuenta(15),
      O => SB2_Mcount_cuenta_xor_15_rt_251
    );
  SB3_Mrom_disp_mux000111 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd1_252,
      I1 => SB2_clk_out_FSM_FFd2_253,
      I2 => SB2_clk_out_FSM_FFd3_254,
      O => SB3_Mrom_disp_mux0001
    );
  SB3_Mmux_seg_mux0001_3 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_minutos(0),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_dec_segundos(0),
      O => SB3_Mmux_seg_mux0001_3_277
    );
  SB3_Mmux_seg_mux0001_4 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_segundos(0),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_decimas(0),
      O => SB3_Mmux_seg_mux0001_4_281
    );
  SB3_Mmux_seg_mux0001_31 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_minutos(1),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_dec_segundos(1),
      O => SB3_Mmux_seg_mux0001_31_278
    );
  SB3_Mmux_seg_mux0001_41 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_segundos(1),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_decimas(1),
      O => SB3_Mmux_seg_mux0001_41_282
    );
  SB3_Mmux_seg_mux0001_32 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_minutos(2),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_dec_segundos(2),
      O => SB3_Mmux_seg_mux0001_32_279
    );
  SB3_Mmux_seg_mux0001_42 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_segundos(2),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_decimas(2),
      O => SB3_Mmux_seg_mux0001_42_283
    );
  SB3_Mmux_seg_mux0001_33 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_minutos(3),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_dec_segundos(3),
      O => SB3_Mmux_seg_mux0001_33_280
    );
  SB3_Mmux_seg_mux0001_43 : LUT4
    generic map(
      INIT => X"CDC8"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB1_segundos(3),
      I2 => SB2_clk_out_FSM_FFd1_252,
      I3 => SB1_decimas(3),
      O => SB3_Mmux_seg_mux0001_43_284
    );
  SB3_Mrom_disp_mux0001211 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd3_254,
      I1 => SB2_clk_out_FSM_FFd1_252,
      O => SB3_Mrom_disp_mux000121
    );
  SB3_Mrom_disp_mux00011111 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => SB2_clk_out_FSM_FFd2_253,
      I1 => SB2_clk_out_FSM_FFd1_252,
      O => SB3_Mrom_disp_mux0001111
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_319
    );
  SB1_Mcount_cuenta_lut_0_INV_0 : INV
    port map (
      I => SB1_cuenta(0),
      O => SB1_Mcount_cuenta_lut(0)
    );
  SB2_Mcount_cuenta_lut_0_INV_0 : INV
    port map (
      I => SB2_cuenta(0),
      O => SB2_Mcount_cuenta_lut(0)
    );
  SB1_reset_inv1_INV_0 : INV
    port map (
      I => reset_IBUF_325,
      O => SB1_reset_inv
    );
  SB1_Mcount_nsegundos_xor_0_11_INV_0 : INV
    port map (
      I => SB1_nsegundos(0),
      O => SB1_Mcount_nsegundos
    );
  SB1_Mcount_nminutos_xor_0_11_INV_0 : INV
    port map (
      I => SB1_nminutos(0),
      O => SB1_Mcount_nminutos
    );
  SB1_Mcount_ndecsegundos_xor_0_11_INV_0 : INV
    port map (
      I => SB1_ndecsegundos(0),
      O => SB1_Mcount_ndecsegundos
    );
  SB1_Mcount_ndecimas_xor_0_11_INV_0 : INV
    port map (
      I => SB1_ndecimas(0),
      O => SB1_Mcount_ndecimas
    );
  SB1_s60seg_mux00021 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => SB1_ndecsegundos(1),
      I1 => SB1_ndecsegundos(0),
      I2 => SB1_ndecsegundos(2),
      I3 => SB1_ndecsegundos(3),
      O => SB1_s60seg_mux00021_200
    );
  SB1_s60seg_mux0002_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => SB1_s60seg_mux00021_200,
      S => SB1_s10seg_191,
      O => SB1_s60seg_mux0002
    );
  SB1_s1seg_mux00021 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => SB1_ndecimas(2),
      I1 => SB1_ndecimas(3),
      I2 => SB1_ndecimas(0),
      I3 => SB1_ndecimas(1),
      O => SB1_s1seg_mux00021_197
    );
  SB1_s1seg_mux0002_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => SB1_s1seg_mux00021_197,
      S => SB1_s1decima_194,
      O => SB1_s1seg_mux0002
    );
  SB1_s10seg_mux00021 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => SB1_nsegundos(2),
      I1 => SB1_nsegundos(3),
      I2 => SB1_nsegundos(0),
      I3 => SB1_nsegundos(1),
      O => SB1_s10seg_mux00021_193
    );
  SB1_s10seg_mux0002_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => SB1_s10seg_mux00021_193,
      S => SB1_s1seg_195,
      O => SB1_s10seg_mux0002
    );
  SB2_clk_out_cmp_eq00004 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => SB2_cuenta(3),
      I1 => SB2_cuenta(2),
      I2 => SB2_cuenta(1),
      I3 => SB2_cuenta(0),
      LO => SB2_clk_out_cmp_eq00004_259
    );

end Structure;

