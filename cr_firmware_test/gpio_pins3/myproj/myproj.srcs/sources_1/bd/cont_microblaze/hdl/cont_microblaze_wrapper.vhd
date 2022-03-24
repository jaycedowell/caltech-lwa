--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Sun Feb  7 22:07:56 2021
--Host        : jarvis running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target cont_microblaze_wrapper.bd
--Design      : cont_microblaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cont_microblaze_wrapper is
  port (
    ACK_I : in STD_LOGIC;
    ADR_O : out STD_LOGIC_VECTOR ( 19 downto 0 );
    CYC_O : out STD_LOGIC;
    Clk : in STD_LOGIC;
    DAT_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DAT_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_O : out STD_LOGIC;
    Reset : in STD_LOGIC;
    SEL_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    STB_O : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    WE_O : out STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    ext_intr : in STD_LOGIC
  );
end cont_microblaze_wrapper;

architecture STRUCTURE of cont_microblaze_wrapper is
  component cont_microblaze is
  port (
    ACK_I : in STD_LOGIC;
    ADR_O : out STD_LOGIC_VECTOR ( 19 downto 0 );
    CYC_O : out STD_LOGIC;
    Clk : in STD_LOGIC;
    DAT_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DAT_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_O : out STD_LOGIC;
    Reset : in STD_LOGIC;
    SEL_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    STB_O : out STD_LOGIC;
    WE_O : out STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    ext_intr : in STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC
  );
  end component cont_microblaze;
begin
cont_microblaze_i: component cont_microblaze
     port map (
      ACK_I => ACK_I,
      ADR_O(19 downto 0) => ADR_O(19 downto 0),
      CYC_O => CYC_O,
      Clk => Clk,
      DAT_I(31 downto 0) => DAT_I(31 downto 0),
      DAT_O(31 downto 0) => DAT_O(31 downto 0),
      RST_O => RST_O,
      Reset => Reset,
      SEL_O(3 downto 0) => SEL_O(3 downto 0),
      STB_O => STB_O,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      WE_O => WE_O,
      dcm_locked => dcm_locked,
      ext_intr => ext_intr
    );
end STRUCTURE;
