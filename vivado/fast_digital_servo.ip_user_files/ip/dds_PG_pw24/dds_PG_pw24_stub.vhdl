-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Feb 12 18:23:32 2021
-- Host        : sadok running 64-bit KDE neon User Edition 5.20
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ms/data/projects/fast-digital-servo/vivado/fast_digital_servo.srcs/sources_1/ip/dds_PG_pw24/dds_PG_pw24_stub.vhdl
-- Design      : dds_PG_pw24
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dds_PG_pw24 is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_phase_tvalid : out STD_LOGIC;
    m_axis_phase_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end dds_PG_pw24;

architecture stub of dds_PG_pw24 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_phase_tvalid,s_axis_phase_tdata[23:0],m_axis_phase_tvalid,m_axis_phase_tdata[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dds_compiler_v6_0_19,Vivado 2019.2";
begin
end;