--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: add_sub_16_bit_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jan 10 18:56:47 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm add_sub_16_bit -w -dir netgen/synthesis -ofmt vhdl -sim add_sub_16_bit.ngc add_sub_16_bit_synthesis.vhd 
-- Device	: xc7a100t-3-csg324
-- Input file	: add_sub_16_bit.ngc
-- Output file	: E:\Users\CA\netgen\synthesis\add_sub_16_bit_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: add_sub_16_bit
-- Xilinx	: d:\Xilinx\14.7\ISE_DS\ISE\
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

entity add_sub_16_bit is
  port (
    k : in STD_LOGIC := 'X'; 
    cout : out STD_LOGIC; 
    a : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    s : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end add_sub_16_bit;

architecture Structure of add_sub_16_bit is
  component full_adder
    port (
      i0 : in STD_LOGIC := 'X'; 
      i1 : in STD_LOGIC := 'X'; 
      cin : in STD_LOGIC := 'X'; 
      sum : out STD_LOGIC; 
      cout : out STD_LOGIC 
    );
  end component;
  signal a_0_IBUF_0 : STD_LOGIC; 
  signal a_1_IBUF_1 : STD_LOGIC; 
  signal a_2_IBUF_2 : STD_LOGIC; 
  signal a_3_IBUF_3 : STD_LOGIC; 
  signal a_4_IBUF_4 : STD_LOGIC; 
  signal a_5_IBUF_5 : STD_LOGIC; 
  signal a_6_IBUF_6 : STD_LOGIC; 
  signal a_7_IBUF_7 : STD_LOGIC; 
  signal a_8_IBUF_8 : STD_LOGIC; 
  signal a_9_IBUF_9 : STD_LOGIC; 
  signal a_10_IBUF_10 : STD_LOGIC; 
  signal a_11_IBUF_11 : STD_LOGIC; 
  signal a_12_IBUF_12 : STD_LOGIC; 
  signal a_13_IBUF_13 : STD_LOGIC; 
  signal a_14_IBUF_14 : STD_LOGIC; 
  signal a_15_IBUF_15 : STD_LOGIC; 
  signal b_0_IBUF_16 : STD_LOGIC; 
  signal b_1_IBUF_17 : STD_LOGIC; 
  signal b_2_IBUF_18 : STD_LOGIC; 
  signal b_3_IBUF_19 : STD_LOGIC; 
  signal b_4_IBUF_20 : STD_LOGIC; 
  signal b_5_IBUF_21 : STD_LOGIC; 
  signal b_6_IBUF_22 : STD_LOGIC; 
  signal b_7_IBUF_23 : STD_LOGIC; 
  signal b_8_IBUF_24 : STD_LOGIC; 
  signal b_9_IBUF_25 : STD_LOGIC; 
  signal b_10_IBUF_26 : STD_LOGIC; 
  signal b_11_IBUF_27 : STD_LOGIC; 
  signal b_12_IBUF_28 : STD_LOGIC; 
  signal b_13_IBUF_29 : STD_LOGIC; 
  signal b_14_IBUF_30 : STD_LOGIC; 
  signal b_15_IBUF_31 : STD_LOGIC; 
  signal k_IBUF_32 : STD_LOGIC; 
  signal s_0_OBUF_33 : STD_LOGIC; 
  signal c1 : STD_LOGIC; 
  signal s_1_OBUF_35 : STD_LOGIC; 
  signal c2 : STD_LOGIC; 
  signal s_2_OBUF_37 : STD_LOGIC; 
  signal c3 : STD_LOGIC; 
  signal s_3_OBUF_39 : STD_LOGIC; 
  signal c4 : STD_LOGIC; 
  signal s_4_OBUF_41 : STD_LOGIC; 
  signal c5 : STD_LOGIC; 
  signal s_5_OBUF_43 : STD_LOGIC; 
  signal c6 : STD_LOGIC; 
  signal s_6_OBUF_45 : STD_LOGIC; 
  signal c7 : STD_LOGIC; 
  signal s_7_OBUF_47 : STD_LOGIC; 
  signal c8 : STD_LOGIC; 
  signal s_8_OBUF_49 : STD_LOGIC; 
  signal c9 : STD_LOGIC; 
  signal s_9_OBUF_51 : STD_LOGIC; 
  signal c10 : STD_LOGIC; 
  signal s_10_OBUF_53 : STD_LOGIC; 
  signal c11 : STD_LOGIC; 
  signal s_11_OBUF_55 : STD_LOGIC; 
  signal c12 : STD_LOGIC; 
  signal s_12_OBUF_57 : STD_LOGIC; 
  signal c13 : STD_LOGIC; 
  signal s_13_OBUF_59 : STD_LOGIC; 
  signal c14 : STD_LOGIC; 
  signal s_14_OBUF_61 : STD_LOGIC; 
  signal c15 : STD_LOGIC; 
  signal s_15_OBUF_63 : STD_LOGIC; 
  signal cout_OBUF_64 : STD_LOGIC; 
  signal x : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  full_adder_ins0 : full_adder
    port map (
      i0 => a_0_IBUF_0,
      i1 => x(0),
      cin => k_IBUF_32,
      sum => s_0_OBUF_33,
      cout => c1
    );
  full_adder_ins1 : full_adder
    port map (
      i0 => a_1_IBUF_1,
      i1 => x(1),
      cin => c1,
      sum => s_1_OBUF_35,
      cout => c2
    );
  full_adder_ins2 : full_adder
    port map (
      i0 => a_2_IBUF_2,
      i1 => x(2),
      cin => c2,
      sum => s_2_OBUF_37,
      cout => c3
    );
  full_adder_ins3 : full_adder
    port map (
      i0 => a_3_IBUF_3,
      i1 => x(3),
      cin => c3,
      sum => s_3_OBUF_39,
      cout => c4
    );
  full_adder_ins4 : full_adder
    port map (
      i0 => a_4_IBUF_4,
      i1 => x(4),
      cin => c4,
      sum => s_4_OBUF_41,
      cout => c5
    );
  full_adder_ins5 : full_adder
    port map (
      i0 => a_5_IBUF_5,
      i1 => x(5),
      cin => c5,
      sum => s_5_OBUF_43,
      cout => c6
    );
  full_adder_ins6 : full_adder
    port map (
      i0 => a_6_IBUF_6,
      i1 => x(6),
      cin => c6,
      sum => s_6_OBUF_45,
      cout => c7
    );
  full_adder_ins7 : full_adder
    port map (
      i0 => a_7_IBUF_7,
      i1 => x(7),
      cin => c7,
      sum => s_7_OBUF_47,
      cout => c8
    );
  full_adder_ins8 : full_adder
    port map (
      i0 => a_8_IBUF_8,
      i1 => x(8),
      cin => c8,
      sum => s_8_OBUF_49,
      cout => c9
    );
  full_adder_ins9 : full_adder
    port map (
      i0 => a_9_IBUF_9,
      i1 => x(9),
      cin => c9,
      sum => s_9_OBUF_51,
      cout => c10
    );
  full_adder_ins10 : full_adder
    port map (
      i0 => a_10_IBUF_10,
      i1 => x(10),
      cin => c10,
      sum => s_10_OBUF_53,
      cout => c11
    );
  full_adder_ins11 : full_adder
    port map (
      i0 => a_11_IBUF_11,
      i1 => x(11),
      cin => c11,
      sum => s_11_OBUF_55,
      cout => c12
    );
  full_adder_ins12 : full_adder
    port map (
      i0 => a_12_IBUF_12,
      i1 => x(12),
      cin => c12,
      sum => s_12_OBUF_57,
      cout => c13
    );
  full_adder_ins13 : full_adder
    port map (
      i0 => a_13_IBUF_13,
      i1 => x(13),
      cin => c13,
      sum => s_13_OBUF_59,
      cout => c14
    );
  full_adder_ins14 : full_adder
    port map (
      i0 => a_14_IBUF_14,
      i1 => x(14),
      cin => c14,
      sum => s_14_OBUF_61,
      cout => c15
    );
  full_adder_ins15 : full_adder
    port map (
      i0 => a_15_IBUF_15,
      i1 => x(15),
      cin => c15,
      sum => s_15_OBUF_63,
      cout => cout_OBUF_64
    );
  Mxor_x_15_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_15_IBUF_31,
      I1 => k_IBUF_32,
      O => x(15)
    );
  Mxor_x_14_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_14_IBUF_30,
      I1 => k_IBUF_32,
      O => x(14)
    );
  Mxor_x_13_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_13_IBUF_29,
      I1 => k_IBUF_32,
      O => x(13)
    );
  Mxor_x_12_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_12_IBUF_28,
      I1 => k_IBUF_32,
      O => x(12)
    );
  Mxor_x_11_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_11_IBUF_27,
      I1 => k_IBUF_32,
      O => x(11)
    );
  Mxor_x_10_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_10_IBUF_26,
      I1 => k_IBUF_32,
      O => x(10)
    );
  Mxor_x_9_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_9_IBUF_25,
      I1 => k_IBUF_32,
      O => x(9)
    );
  Mxor_x_8_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_8_IBUF_24,
      I1 => k_IBUF_32,
      O => x(8)
    );
  Mxor_x_7_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_7_IBUF_23,
      I1 => k_IBUF_32,
      O => x(7)
    );
  Mxor_x_6_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_6_IBUF_22,
      I1 => k_IBUF_32,
      O => x(6)
    );
  Mxor_x_5_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_5_IBUF_21,
      I1 => k_IBUF_32,
      O => x(5)
    );
  Mxor_x_4_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_4_IBUF_20,
      I1 => k_IBUF_32,
      O => x(4)
    );
  Mxor_x_3_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_3_IBUF_19,
      I1 => k_IBUF_32,
      O => x(3)
    );
  Mxor_x_2_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_2_IBUF_18,
      I1 => k_IBUF_32,
      O => x(2)
    );
  Mxor_x_1_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_1_IBUF_17,
      I1 => k_IBUF_32,
      O => x(1)
    );
  Mxor_x_0_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_0_IBUF_16,
      I1 => k_IBUF_32,
      O => x(0)
    );
  a_15_IBUF : IBUF
    port map (
      I => a(15),
      O => a_15_IBUF_15
    );
  a_14_IBUF : IBUF
    port map (
      I => a(14),
      O => a_14_IBUF_14
    );
  a_13_IBUF : IBUF
    port map (
      I => a(13),
      O => a_13_IBUF_13
    );
  a_12_IBUF : IBUF
    port map (
      I => a(12),
      O => a_12_IBUF_12
    );
  a_11_IBUF : IBUF
    port map (
      I => a(11),
      O => a_11_IBUF_11
    );
  a_10_IBUF : IBUF
    port map (
      I => a(10),
      O => a_10_IBUF_10
    );
  a_9_IBUF : IBUF
    port map (
      I => a(9),
      O => a_9_IBUF_9
    );
  a_8_IBUF : IBUF
    port map (
      I => a(8),
      O => a_8_IBUF_8
    );
  a_7_IBUF : IBUF
    port map (
      I => a(7),
      O => a_7_IBUF_7
    );
  a_6_IBUF : IBUF
    port map (
      I => a(6),
      O => a_6_IBUF_6
    );
  a_5_IBUF : IBUF
    port map (
      I => a(5),
      O => a_5_IBUF_5
    );
  a_4_IBUF : IBUF
    port map (
      I => a(4),
      O => a_4_IBUF_4
    );
  a_3_IBUF : IBUF
    port map (
      I => a(3),
      O => a_3_IBUF_3
    );
  a_2_IBUF : IBUF
    port map (
      I => a(2),
      O => a_2_IBUF_2
    );
  a_1_IBUF : IBUF
    port map (
      I => a(1),
      O => a_1_IBUF_1
    );
  a_0_IBUF : IBUF
    port map (
      I => a(0),
      O => a_0_IBUF_0
    );
  b_15_IBUF : IBUF
    port map (
      I => b(15),
      O => b_15_IBUF_31
    );
  b_14_IBUF : IBUF
    port map (
      I => b(14),
      O => b_14_IBUF_30
    );
  b_13_IBUF : IBUF
    port map (
      I => b(13),
      O => b_13_IBUF_29
    );
  b_12_IBUF : IBUF
    port map (
      I => b(12),
      O => b_12_IBUF_28
    );
  b_11_IBUF : IBUF
    port map (
      I => b(11),
      O => b_11_IBUF_27
    );
  b_10_IBUF : IBUF
    port map (
      I => b(10),
      O => b_10_IBUF_26
    );
  b_9_IBUF : IBUF
    port map (
      I => b(9),
      O => b_9_IBUF_25
    );
  b_8_IBUF : IBUF
    port map (
      I => b(8),
      O => b_8_IBUF_24
    );
  b_7_IBUF : IBUF
    port map (
      I => b(7),
      O => b_7_IBUF_23
    );
  b_6_IBUF : IBUF
    port map (
      I => b(6),
      O => b_6_IBUF_22
    );
  b_5_IBUF : IBUF
    port map (
      I => b(5),
      O => b_5_IBUF_21
    );
  b_4_IBUF : IBUF
    port map (
      I => b(4),
      O => b_4_IBUF_20
    );
  b_3_IBUF : IBUF
    port map (
      I => b(3),
      O => b_3_IBUF_19
    );
  b_2_IBUF : IBUF
    port map (
      I => b(2),
      O => b_2_IBUF_18
    );
  b_1_IBUF : IBUF
    port map (
      I => b(1),
      O => b_1_IBUF_17
    );
  b_0_IBUF : IBUF
    port map (
      I => b(0),
      O => b_0_IBUF_16
    );
  k_IBUF : IBUF
    port map (
      I => k,
      O => k_IBUF_32
    );
  s_15_OBUF : OBUF
    port map (
      I => s_15_OBUF_63,
      O => s(15)
    );
  s_14_OBUF : OBUF
    port map (
      I => s_14_OBUF_61,
      O => s(14)
    );
  s_13_OBUF : OBUF
    port map (
      I => s_13_OBUF_59,
      O => s(13)
    );
  s_12_OBUF : OBUF
    port map (
      I => s_12_OBUF_57,
      O => s(12)
    );
  s_11_OBUF : OBUF
    port map (
      I => s_11_OBUF_55,
      O => s(11)
    );
  s_10_OBUF : OBUF
    port map (
      I => s_10_OBUF_53,
      O => s(10)
    );
  s_9_OBUF : OBUF
    port map (
      I => s_9_OBUF_51,
      O => s(9)
    );
  s_8_OBUF : OBUF
    port map (
      I => s_8_OBUF_49,
      O => s(8)
    );
  s_7_OBUF : OBUF
    port map (
      I => s_7_OBUF_47,
      O => s(7)
    );
  s_6_OBUF : OBUF
    port map (
      I => s_6_OBUF_45,
      O => s(6)
    );
  s_5_OBUF : OBUF
    port map (
      I => s_5_OBUF_43,
      O => s(5)
    );
  s_4_OBUF : OBUF
    port map (
      I => s_4_OBUF_41,
      O => s(4)
    );
  s_3_OBUF : OBUF
    port map (
      I => s_3_OBUF_39,
      O => s(3)
    );
  s_2_OBUF : OBUF
    port map (
      I => s_2_OBUF_37,
      O => s(2)
    );
  s_1_OBUF : OBUF
    port map (
      I => s_1_OBUF_35,
      O => s(1)
    );
  s_0_OBUF : OBUF
    port map (
      I => s_0_OBUF_33,
      O => s(0)
    );
  cout_OBUF : OBUF
    port map (
      I => cout_OBUF_64,
      O => cout
    );

end Structure;

