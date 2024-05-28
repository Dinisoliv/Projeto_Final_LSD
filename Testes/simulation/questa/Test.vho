-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "05/28/2024 18:14:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Test IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END Test;

-- Design Ports Information
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|s_divCounter[0]~25_combout\ : std_logic;
SIGNAL \inst|s_divCounter[10]~46\ : std_logic;
SIGNAL \inst|s_divCounter[11]~47_combout\ : std_logic;
SIGNAL \inst|s_divCounter[11]~48\ : std_logic;
SIGNAL \inst|s_divCounter[12]~49_combout\ : std_logic;
SIGNAL \inst|s_divCounter[12]~50\ : std_logic;
SIGNAL \inst|s_divCounter[13]~51_combout\ : std_logic;
SIGNAL \inst|s_divCounter[13]~52\ : std_logic;
SIGNAL \inst|s_divCounter[14]~53_combout\ : std_logic;
SIGNAL \inst|s_divCounter[14]~54\ : std_logic;
SIGNAL \inst|s_divCounter[15]~55_combout\ : std_logic;
SIGNAL \inst|s_divCounter[15]~56\ : std_logic;
SIGNAL \inst|s_divCounter[16]~57_combout\ : std_logic;
SIGNAL \inst|s_divCounter[16]~58\ : std_logic;
SIGNAL \inst|s_divCounter[17]~59_combout\ : std_logic;
SIGNAL \inst|s_divCounter[17]~60\ : std_logic;
SIGNAL \inst|s_divCounter[18]~61_combout\ : std_logic;
SIGNAL \inst|s_divCounter[18]~62\ : std_logic;
SIGNAL \inst|s_divCounter[19]~63_combout\ : std_logic;
SIGNAL \inst|s_divCounter[19]~64\ : std_logic;
SIGNAL \inst|s_divCounter[20]~65_combout\ : std_logic;
SIGNAL \inst|s_divCounter[20]~66\ : std_logic;
SIGNAL \inst|s_divCounter[21]~67_combout\ : std_logic;
SIGNAL \inst|s_divCounter[21]~68\ : std_logic;
SIGNAL \inst|s_divCounter[22]~69_combout\ : std_logic;
SIGNAL \inst|s_divCounter[22]~70\ : std_logic;
SIGNAL \inst|s_divCounter[23]~71_combout\ : std_logic;
SIGNAL \inst|s_divCounter[23]~72\ : std_logic;
SIGNAL \inst|s_divCounter[24]~73_combout\ : std_logic;
SIGNAL \inst|clkOut~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|clkOut~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|s_divCounter[0]~26\ : std_logic;
SIGNAL \inst|s_divCounter[1]~27_combout\ : std_logic;
SIGNAL \inst|s_divCounter[1]~28\ : std_logic;
SIGNAL \inst|s_divCounter[2]~29_combout\ : std_logic;
SIGNAL \inst|s_divCounter[2]~30\ : std_logic;
SIGNAL \inst|s_divCounter[3]~31_combout\ : std_logic;
SIGNAL \inst|s_divCounter[3]~32\ : std_logic;
SIGNAL \inst|s_divCounter[4]~33_combout\ : std_logic;
SIGNAL \inst|s_divCounter[4]~34\ : std_logic;
SIGNAL \inst|s_divCounter[5]~35_combout\ : std_logic;
SIGNAL \inst|s_divCounter[5]~36\ : std_logic;
SIGNAL \inst|s_divCounter[6]~37_combout\ : std_logic;
SIGNAL \inst|s_divCounter[6]~38\ : std_logic;
SIGNAL \inst|s_divCounter[7]~39_combout\ : std_logic;
SIGNAL \inst|s_divCounter[7]~40\ : std_logic;
SIGNAL \inst|s_divCounter[8]~41_combout\ : std_logic;
SIGNAL \inst|s_divCounter[8]~42\ : std_logic;
SIGNAL \inst|s_divCounter[9]~43_combout\ : std_logic;
SIGNAL \inst|s_divCounter[9]~44\ : std_logic;
SIGNAL \inst|s_divCounter[10]~45_combout\ : std_logic;
SIGNAL \inst|clkOut~0_combout\ : std_logic;
SIGNAL \inst|clkOut~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|clkOut~3_combout\ : std_logic;
SIGNAL \inst|clkOut~6_combout\ : std_logic;
SIGNAL \inst|clkOut~5_combout\ : std_logic;
SIGNAL \inst|clkOut~7_combout\ : std_logic;
SIGNAL \inst|clkOut~8_combout\ : std_logic;
SIGNAL \inst|clkOut~9_combout\ : std_logic;
SIGNAL \inst|clkOut~q\ : std_logic;
SIGNAL \inst|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~23_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~21_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~19_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~35_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~31_combout\ : std_logic;
SIGNAL \inst2|Add0~33_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~17_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|random_value[7]~0_combout\ : std_logic;
SIGNAL \inst2|random_value[6]~1_combout\ : std_logic;
SIGNAL \inst2|random_value[5]~2_combout\ : std_logic;
SIGNAL \inst2|random_value[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[3]~3_combout\ : std_logic;
SIGNAL \inst2|random_value[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[0]~feeder_combout\ : std_logic;
SIGNAL \inst|s_divCounter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst2|random_value\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst2|free_run_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst2|ALT_INV_free_run_counter\ : std_logic_vector(7 DOWNTO 3);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkOut~q\);
\inst2|ALT_INV_free_run_counter\(3) <= NOT \inst2|free_run_counter\(3);
\inst2|ALT_INV_free_run_counter\(5) <= NOT \inst2|free_run_counter\(5);
\inst2|ALT_INV_free_run_counter\(6) <= NOT \inst2|free_run_counter\(6);
\inst2|ALT_INV_free_run_counter\(7) <= NOT \inst2|free_run_counter\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|random_value\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_free_run_counter\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_free_run_counter\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_free_run_counter\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|free_run_counter\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_free_run_counter\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|free_run_counter\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|free_run_counter\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|free_run_counter\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X102_Y34_N8
\inst|s_divCounter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[0]~25_combout\ = \inst|s_divCounter\(0) $ (VCC)
-- \inst|s_divCounter[0]~26\ = CARRY(\inst|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(0),
	datad => VCC,
	combout => \inst|s_divCounter[0]~25_combout\,
	cout => \inst|s_divCounter[0]~26\);

-- Location: LCCOMB_X102_Y34_N28
\inst|s_divCounter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[10]~45_combout\ = (\inst|s_divCounter\(10) & (\inst|s_divCounter[9]~44\ $ (GND))) # (!\inst|s_divCounter\(10) & (!\inst|s_divCounter[9]~44\ & VCC))
-- \inst|s_divCounter[10]~46\ = CARRY((\inst|s_divCounter\(10) & !\inst|s_divCounter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(10),
	datad => VCC,
	cin => \inst|s_divCounter[9]~44\,
	combout => \inst|s_divCounter[10]~45_combout\,
	cout => \inst|s_divCounter[10]~46\);

-- Location: LCCOMB_X102_Y34_N30
\inst|s_divCounter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[11]~47_combout\ = (\inst|s_divCounter\(11) & (!\inst|s_divCounter[10]~46\)) # (!\inst|s_divCounter\(11) & ((\inst|s_divCounter[10]~46\) # (GND)))
-- \inst|s_divCounter[11]~48\ = CARRY((!\inst|s_divCounter[10]~46\) # (!\inst|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(11),
	datad => VCC,
	cin => \inst|s_divCounter[10]~46\,
	combout => \inst|s_divCounter[11]~47_combout\,
	cout => \inst|s_divCounter[11]~48\);

-- Location: FF_X102_Y34_N31
\inst|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[11]~47_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(11));

-- Location: LCCOMB_X102_Y33_N0
\inst|s_divCounter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[12]~49_combout\ = (\inst|s_divCounter\(12) & (\inst|s_divCounter[11]~48\ $ (GND))) # (!\inst|s_divCounter\(12) & (!\inst|s_divCounter[11]~48\ & VCC))
-- \inst|s_divCounter[12]~50\ = CARRY((\inst|s_divCounter\(12) & !\inst|s_divCounter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(12),
	datad => VCC,
	cin => \inst|s_divCounter[11]~48\,
	combout => \inst|s_divCounter[12]~49_combout\,
	cout => \inst|s_divCounter[12]~50\);

-- Location: FF_X102_Y33_N1
\inst|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[12]~49_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(12));

-- Location: LCCOMB_X102_Y33_N2
\inst|s_divCounter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[13]~51_combout\ = (\inst|s_divCounter\(13) & (!\inst|s_divCounter[12]~50\)) # (!\inst|s_divCounter\(13) & ((\inst|s_divCounter[12]~50\) # (GND)))
-- \inst|s_divCounter[13]~52\ = CARRY((!\inst|s_divCounter[12]~50\) # (!\inst|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(13),
	datad => VCC,
	cin => \inst|s_divCounter[12]~50\,
	combout => \inst|s_divCounter[13]~51_combout\,
	cout => \inst|s_divCounter[13]~52\);

-- Location: FF_X103_Y34_N21
\inst|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_divCounter[13]~51_combout\,
	sclr => \inst|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(13));

-- Location: LCCOMB_X102_Y33_N4
\inst|s_divCounter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[14]~53_combout\ = (\inst|s_divCounter\(14) & (\inst|s_divCounter[13]~52\ $ (GND))) # (!\inst|s_divCounter\(14) & (!\inst|s_divCounter[13]~52\ & VCC))
-- \inst|s_divCounter[14]~54\ = CARRY((\inst|s_divCounter\(14) & !\inst|s_divCounter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(14),
	datad => VCC,
	cin => \inst|s_divCounter[13]~52\,
	combout => \inst|s_divCounter[14]~53_combout\,
	cout => \inst|s_divCounter[14]~54\);

-- Location: FF_X102_Y33_N5
\inst|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[14]~53_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(14));

-- Location: LCCOMB_X102_Y33_N6
\inst|s_divCounter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[15]~55_combout\ = (\inst|s_divCounter\(15) & (!\inst|s_divCounter[14]~54\)) # (!\inst|s_divCounter\(15) & ((\inst|s_divCounter[14]~54\) # (GND)))
-- \inst|s_divCounter[15]~56\ = CARRY((!\inst|s_divCounter[14]~54\) # (!\inst|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(15),
	datad => VCC,
	cin => \inst|s_divCounter[14]~54\,
	combout => \inst|s_divCounter[15]~55_combout\,
	cout => \inst|s_divCounter[15]~56\);

-- Location: FF_X102_Y33_N7
\inst|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[15]~55_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(15));

-- Location: LCCOMB_X102_Y33_N8
\inst|s_divCounter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[16]~57_combout\ = (\inst|s_divCounter\(16) & (\inst|s_divCounter[15]~56\ $ (GND))) # (!\inst|s_divCounter\(16) & (!\inst|s_divCounter[15]~56\ & VCC))
-- \inst|s_divCounter[16]~58\ = CARRY((\inst|s_divCounter\(16) & !\inst|s_divCounter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(16),
	datad => VCC,
	cin => \inst|s_divCounter[15]~56\,
	combout => \inst|s_divCounter[16]~57_combout\,
	cout => \inst|s_divCounter[16]~58\);

-- Location: FF_X102_Y33_N9
\inst|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[16]~57_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(16));

-- Location: LCCOMB_X102_Y33_N10
\inst|s_divCounter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[17]~59_combout\ = (\inst|s_divCounter\(17) & (!\inst|s_divCounter[16]~58\)) # (!\inst|s_divCounter\(17) & ((\inst|s_divCounter[16]~58\) # (GND)))
-- \inst|s_divCounter[17]~60\ = CARRY((!\inst|s_divCounter[16]~58\) # (!\inst|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(17),
	datad => VCC,
	cin => \inst|s_divCounter[16]~58\,
	combout => \inst|s_divCounter[17]~59_combout\,
	cout => \inst|s_divCounter[17]~60\);

-- Location: FF_X102_Y33_N11
\inst|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[17]~59_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(17));

-- Location: LCCOMB_X102_Y33_N12
\inst|s_divCounter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[18]~61_combout\ = (\inst|s_divCounter\(18) & (\inst|s_divCounter[17]~60\ $ (GND))) # (!\inst|s_divCounter\(18) & (!\inst|s_divCounter[17]~60\ & VCC))
-- \inst|s_divCounter[18]~62\ = CARRY((\inst|s_divCounter\(18) & !\inst|s_divCounter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(18),
	datad => VCC,
	cin => \inst|s_divCounter[17]~60\,
	combout => \inst|s_divCounter[18]~61_combout\,
	cout => \inst|s_divCounter[18]~62\);

-- Location: FF_X102_Y33_N13
\inst|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[18]~61_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(18));

-- Location: LCCOMB_X102_Y33_N14
\inst|s_divCounter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[19]~63_combout\ = (\inst|s_divCounter\(19) & (!\inst|s_divCounter[18]~62\)) # (!\inst|s_divCounter\(19) & ((\inst|s_divCounter[18]~62\) # (GND)))
-- \inst|s_divCounter[19]~64\ = CARRY((!\inst|s_divCounter[18]~62\) # (!\inst|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(19),
	datad => VCC,
	cin => \inst|s_divCounter[18]~62\,
	combout => \inst|s_divCounter[19]~63_combout\,
	cout => \inst|s_divCounter[19]~64\);

-- Location: FF_X102_Y33_N15
\inst|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[19]~63_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(19));

-- Location: LCCOMB_X102_Y33_N16
\inst|s_divCounter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[20]~65_combout\ = (\inst|s_divCounter\(20) & (\inst|s_divCounter[19]~64\ $ (GND))) # (!\inst|s_divCounter\(20) & (!\inst|s_divCounter[19]~64\ & VCC))
-- \inst|s_divCounter[20]~66\ = CARRY((\inst|s_divCounter\(20) & !\inst|s_divCounter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(20),
	datad => VCC,
	cin => \inst|s_divCounter[19]~64\,
	combout => \inst|s_divCounter[20]~65_combout\,
	cout => \inst|s_divCounter[20]~66\);

-- Location: FF_X102_Y33_N17
\inst|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[20]~65_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(20));

-- Location: LCCOMB_X102_Y33_N18
\inst|s_divCounter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[21]~67_combout\ = (\inst|s_divCounter\(21) & (!\inst|s_divCounter[20]~66\)) # (!\inst|s_divCounter\(21) & ((\inst|s_divCounter[20]~66\) # (GND)))
-- \inst|s_divCounter[21]~68\ = CARRY((!\inst|s_divCounter[20]~66\) # (!\inst|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(21),
	datad => VCC,
	cin => \inst|s_divCounter[20]~66\,
	combout => \inst|s_divCounter[21]~67_combout\,
	cout => \inst|s_divCounter[21]~68\);

-- Location: FF_X102_Y33_N19
\inst|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[21]~67_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(21));

-- Location: LCCOMB_X102_Y33_N20
\inst|s_divCounter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[22]~69_combout\ = (\inst|s_divCounter\(22) & (\inst|s_divCounter[21]~68\ $ (GND))) # (!\inst|s_divCounter\(22) & (!\inst|s_divCounter[21]~68\ & VCC))
-- \inst|s_divCounter[22]~70\ = CARRY((\inst|s_divCounter\(22) & !\inst|s_divCounter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(22),
	datad => VCC,
	cin => \inst|s_divCounter[21]~68\,
	combout => \inst|s_divCounter[22]~69_combout\,
	cout => \inst|s_divCounter[22]~70\);

-- Location: FF_X102_Y33_N21
\inst|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[22]~69_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(22));

-- Location: LCCOMB_X102_Y33_N22
\inst|s_divCounter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[23]~71_combout\ = (\inst|s_divCounter\(23) & (!\inst|s_divCounter[22]~70\)) # (!\inst|s_divCounter\(23) & ((\inst|s_divCounter[22]~70\) # (GND)))
-- \inst|s_divCounter[23]~72\ = CARRY((!\inst|s_divCounter[22]~70\) # (!\inst|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(23),
	datad => VCC,
	cin => \inst|s_divCounter[22]~70\,
	combout => \inst|s_divCounter[23]~71_combout\,
	cout => \inst|s_divCounter[23]~72\);

-- Location: FF_X102_Y33_N23
\inst|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[23]~71_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(23));

-- Location: LCCOMB_X102_Y33_N24
\inst|s_divCounter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[24]~73_combout\ = \inst|s_divCounter\(24) $ (!\inst|s_divCounter[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(24),
	cin => \inst|s_divCounter[23]~72\,
	combout => \inst|s_divCounter[24]~73_combout\);

-- Location: FF_X102_Y33_N25
\inst|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[24]~73_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(24));

-- Location: LCCOMB_X102_Y33_N26
\inst|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~2_combout\ = (\inst|s_divCounter\(18) & (\inst|s_divCounter\(21) & (\inst|s_divCounter\(19) & \inst|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(18),
	datab => \inst|s_divCounter\(21),
	datac => \inst|s_divCounter\(19),
	datad => \inst|s_divCounter\(20),
	combout => \inst|clkOut~2_combout\);

-- Location: LCCOMB_X102_Y33_N30
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ((!\inst|s_divCounter\(17) & !\inst|s_divCounter\(16))) # (!\inst|s_divCounter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(17),
	datac => \inst|s_divCounter\(16),
	datad => \inst|s_divCounter\(22),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X103_Y34_N12
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = ((!\inst|s_divCounter\(23) & ((\inst|LessThan0~4_combout\) # (!\inst|clkOut~2_combout\)))) # (!\inst|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(23),
	datab => \inst|s_divCounter\(24),
	datac => \inst|clkOut~2_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X103_Y34_N26
\inst|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~4_combout\ = (\inst|s_divCounter\(13) & (\inst|s_divCounter\(12) & \inst|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(13),
	datac => \inst|s_divCounter\(12),
	datad => \inst|s_divCounter\(11),
	combout => \inst|clkOut~4_combout\);

-- Location: LCCOMB_X103_Y34_N4
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|s_divCounter\(17) & (!\inst|s_divCounter\(15) & !\inst|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(17),
	datac => \inst|s_divCounter\(15),
	datad => \inst|s_divCounter\(23),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X103_Y34_N0
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~0_combout\ & ((!\inst|s_divCounter\(14)) # (!\inst|clkOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~4_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|s_divCounter\(14),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X103_Y34_N30
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|LessThan0~5_combout\ & (!\inst|LessThan0~2_combout\ & !\inst|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: FF_X102_Y34_N9
\inst|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[0]~25_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(0));

-- Location: LCCOMB_X102_Y34_N10
\inst|s_divCounter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[1]~27_combout\ = (\inst|s_divCounter\(1) & (!\inst|s_divCounter[0]~26\)) # (!\inst|s_divCounter\(1) & ((\inst|s_divCounter[0]~26\) # (GND)))
-- \inst|s_divCounter[1]~28\ = CARRY((!\inst|s_divCounter[0]~26\) # (!\inst|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(1),
	datad => VCC,
	cin => \inst|s_divCounter[0]~26\,
	combout => \inst|s_divCounter[1]~27_combout\,
	cout => \inst|s_divCounter[1]~28\);

-- Location: FF_X102_Y34_N11
\inst|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[1]~27_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(1));

-- Location: LCCOMB_X102_Y34_N12
\inst|s_divCounter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[2]~29_combout\ = (\inst|s_divCounter\(2) & (\inst|s_divCounter[1]~28\ $ (GND))) # (!\inst|s_divCounter\(2) & (!\inst|s_divCounter[1]~28\ & VCC))
-- \inst|s_divCounter[2]~30\ = CARRY((\inst|s_divCounter\(2) & !\inst|s_divCounter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(2),
	datad => VCC,
	cin => \inst|s_divCounter[1]~28\,
	combout => \inst|s_divCounter[2]~29_combout\,
	cout => \inst|s_divCounter[2]~30\);

-- Location: FF_X102_Y34_N13
\inst|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[2]~29_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(2));

-- Location: LCCOMB_X102_Y34_N14
\inst|s_divCounter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[3]~31_combout\ = (\inst|s_divCounter\(3) & (!\inst|s_divCounter[2]~30\)) # (!\inst|s_divCounter\(3) & ((\inst|s_divCounter[2]~30\) # (GND)))
-- \inst|s_divCounter[3]~32\ = CARRY((!\inst|s_divCounter[2]~30\) # (!\inst|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(3),
	datad => VCC,
	cin => \inst|s_divCounter[2]~30\,
	combout => \inst|s_divCounter[3]~31_combout\,
	cout => \inst|s_divCounter[3]~32\);

-- Location: FF_X102_Y34_N15
\inst|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[3]~31_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(3));

-- Location: LCCOMB_X102_Y34_N16
\inst|s_divCounter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[4]~33_combout\ = (\inst|s_divCounter\(4) & (\inst|s_divCounter[3]~32\ $ (GND))) # (!\inst|s_divCounter\(4) & (!\inst|s_divCounter[3]~32\ & VCC))
-- \inst|s_divCounter[4]~34\ = CARRY((\inst|s_divCounter\(4) & !\inst|s_divCounter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(4),
	datad => VCC,
	cin => \inst|s_divCounter[3]~32\,
	combout => \inst|s_divCounter[4]~33_combout\,
	cout => \inst|s_divCounter[4]~34\);

-- Location: FF_X102_Y34_N17
\inst|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[4]~33_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(4));

-- Location: LCCOMB_X102_Y34_N18
\inst|s_divCounter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[5]~35_combout\ = (\inst|s_divCounter\(5) & (!\inst|s_divCounter[4]~34\)) # (!\inst|s_divCounter\(5) & ((\inst|s_divCounter[4]~34\) # (GND)))
-- \inst|s_divCounter[5]~36\ = CARRY((!\inst|s_divCounter[4]~34\) # (!\inst|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(5),
	datad => VCC,
	cin => \inst|s_divCounter[4]~34\,
	combout => \inst|s_divCounter[5]~35_combout\,
	cout => \inst|s_divCounter[5]~36\);

-- Location: FF_X102_Y34_N19
\inst|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[5]~35_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(5));

-- Location: LCCOMB_X102_Y34_N20
\inst|s_divCounter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[6]~37_combout\ = (\inst|s_divCounter\(6) & (\inst|s_divCounter[5]~36\ $ (GND))) # (!\inst|s_divCounter\(6) & (!\inst|s_divCounter[5]~36\ & VCC))
-- \inst|s_divCounter[6]~38\ = CARRY((\inst|s_divCounter\(6) & !\inst|s_divCounter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(6),
	datad => VCC,
	cin => \inst|s_divCounter[5]~36\,
	combout => \inst|s_divCounter[6]~37_combout\,
	cout => \inst|s_divCounter[6]~38\);

-- Location: FF_X102_Y34_N21
\inst|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[6]~37_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(6));

-- Location: LCCOMB_X102_Y34_N22
\inst|s_divCounter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[7]~39_combout\ = (\inst|s_divCounter\(7) & (!\inst|s_divCounter[6]~38\)) # (!\inst|s_divCounter\(7) & ((\inst|s_divCounter[6]~38\) # (GND)))
-- \inst|s_divCounter[7]~40\ = CARRY((!\inst|s_divCounter[6]~38\) # (!\inst|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(7),
	datad => VCC,
	cin => \inst|s_divCounter[6]~38\,
	combout => \inst|s_divCounter[7]~39_combout\,
	cout => \inst|s_divCounter[7]~40\);

-- Location: FF_X102_Y34_N23
\inst|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[7]~39_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(7));

-- Location: LCCOMB_X102_Y34_N24
\inst|s_divCounter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[8]~41_combout\ = (\inst|s_divCounter\(8) & (\inst|s_divCounter[7]~40\ $ (GND))) # (!\inst|s_divCounter\(8) & (!\inst|s_divCounter[7]~40\ & VCC))
-- \inst|s_divCounter[8]~42\ = CARRY((\inst|s_divCounter\(8) & !\inst|s_divCounter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(8),
	datad => VCC,
	cin => \inst|s_divCounter[7]~40\,
	combout => \inst|s_divCounter[8]~41_combout\,
	cout => \inst|s_divCounter[8]~42\);

-- Location: FF_X102_Y34_N25
\inst|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[8]~41_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(8));

-- Location: LCCOMB_X102_Y34_N26
\inst|s_divCounter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[9]~43_combout\ = (\inst|s_divCounter\(9) & (!\inst|s_divCounter[8]~42\)) # (!\inst|s_divCounter\(9) & ((\inst|s_divCounter[8]~42\) # (GND)))
-- \inst|s_divCounter[9]~44\ = CARRY((!\inst|s_divCounter[8]~42\) # (!\inst|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(9),
	datad => VCC,
	cin => \inst|s_divCounter[8]~42\,
	combout => \inst|s_divCounter[9]~43_combout\,
	cout => \inst|s_divCounter[9]~44\);

-- Location: FF_X102_Y34_N27
\inst|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[9]~43_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(9));

-- Location: FF_X102_Y34_N29
\inst|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_divCounter[10]~45_combout\,
	sclr => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(10));

-- Location: LCCOMB_X102_Y34_N0
\inst|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~0_combout\ = (\inst|s_divCounter\(1) & (\inst|s_divCounter\(0) & (\inst|s_divCounter\(3) & \inst|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(1),
	datab => \inst|s_divCounter\(0),
	datac => \inst|s_divCounter\(3),
	datad => \inst|s_divCounter\(2),
	combout => \inst|clkOut~0_combout\);

-- Location: LCCOMB_X102_Y34_N2
\inst|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~1_combout\ = (!\inst|s_divCounter\(9) & (!\inst|s_divCounter\(8) & (!\inst|s_divCounter\(7) & !\inst|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(9),
	datab => \inst|s_divCounter\(8),
	datac => \inst|s_divCounter\(7),
	datad => \inst|s_divCounter\(6),
	combout => \inst|clkOut~1_combout\);

-- Location: LCCOMB_X103_Y34_N6
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|clkOut~1_combout\ & (((!\inst|clkOut~0_combout\) # (!\inst|s_divCounter\(5))) # (!\inst|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(4),
	datab => \inst|s_divCounter\(5),
	datac => \inst|clkOut~0_combout\,
	datad => \inst|clkOut~1_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X103_Y34_N8
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|s_divCounter\(10) & (\inst|LessThan0~0_combout\ & \inst|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(10),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X103_Y34_N22
\inst|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~3_combout\ = (\inst|clkOut~0_combout\ & (\inst|s_divCounter\(4) & (\inst|clkOut~2_combout\ & \inst|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~0_combout\,
	datab => \inst|s_divCounter\(4),
	datac => \inst|clkOut~2_combout\,
	datad => \inst|clkOut~1_combout\,
	combout => \inst|clkOut~3_combout\);

-- Location: LCCOMB_X102_Y33_N28
\inst|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~6_combout\ = (\inst|s_divCounter\(23) & (!\inst|s_divCounter\(22) & (!\inst|s_divCounter\(24) & \inst|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(23),
	datab => \inst|s_divCounter\(22),
	datac => \inst|s_divCounter\(24),
	datad => \inst|s_divCounter\(17),
	combout => \inst|clkOut~6_combout\);

-- Location: LCCOMB_X103_Y34_N10
\inst|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~5_combout\ = (\inst|s_divCounter\(15) & (\inst|s_divCounter\(10) & (!\inst|s_divCounter\(16) & !\inst|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(15),
	datab => \inst|s_divCounter\(10),
	datac => \inst|s_divCounter\(16),
	datad => \inst|s_divCounter\(14),
	combout => \inst|clkOut~5_combout\);

-- Location: LCCOMB_X103_Y34_N24
\inst|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~7_combout\ = (\inst|clkOut~4_combout\ & (!\inst|s_divCounter\(5) & (\inst|clkOut~6_combout\ & \inst|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~4_combout\,
	datab => \inst|s_divCounter\(5),
	datac => \inst|clkOut~6_combout\,
	datad => \inst|clkOut~5_combout\,
	combout => \inst|clkOut~7_combout\);

-- Location: LCCOMB_X103_Y34_N28
\inst|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~8_combout\ = (\inst|clkOut~q\) # ((\inst|clkOut~3_combout\ & \inst|clkOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~3_combout\,
	datac => \inst|clkOut~q\,
	datad => \inst|clkOut~7_combout\,
	combout => \inst|clkOut~8_combout\);

-- Location: LCCOMB_X103_Y34_N16
\inst|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~9_combout\ = (\inst|clkOut~8_combout\ & ((\inst|LessThan0~2_combout\) # ((\inst|LessThan0~5_combout\) # (\inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|clkOut~8_combout\,
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|clkOut~9_combout\);

-- Location: FF_X103_Y34_N17
\inst|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkOut~q\);

-- Location: CLKCTRL_G8
\inst|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X91_Y66_N6
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|free_run_counter\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|free_run_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X92_Y66_N6
\inst2|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~23_combout\ = (\inst2|Add0~0_combout\ & !\inst2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~0_combout\,
	datac => \inst2|process_0~0_combout\,
	combout => \inst2|Add0~23_combout\);

-- Location: FF_X92_Y66_N7
\inst2|free_run_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(0));

-- Location: LCCOMB_X91_Y66_N8
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|free_run_counter\(1) & (!\inst2|Add0~1\)) # (!\inst2|free_run_counter\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|free_run_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X90_Y66_N18
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|Add0~2_combout\ & !\inst2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~2_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|Add0~22_combout\);

-- Location: FF_X90_Y66_N19
\inst2|free_run_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(1));

-- Location: LCCOMB_X91_Y66_N10
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|free_run_counter\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|free_run_counter\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|free_run_counter\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X90_Y66_N8
\inst2|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_combout\ = (\inst2|Add0~4_combout\ & !\inst2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|Add0~21_combout\);

-- Location: FF_X90_Y66_N9
\inst2|free_run_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(2));

-- Location: LCCOMB_X91_Y66_N12
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|free_run_counter\(3) & ((\inst2|Add0~5\) # (GND))) # (!\inst2|free_run_counter\(3) & (!\inst2|Add0~5\))
-- \inst2|Add0~7\ = CARRY((\inst2|free_run_counter\(3)) # (!\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X92_Y66_N12
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (!\inst2|process_0~0_combout\ & !\inst2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|process_0~0_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|Add0~20_combout\);

-- Location: FF_X92_Y66_N13
\inst2|free_run_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(3));

-- Location: LCCOMB_X91_Y66_N14
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|free_run_counter\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|free_run_counter\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|free_run_counter\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X90_Y66_N14
\inst2|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~19_combout\ = (\inst2|Add0~8_combout\ & !\inst2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~8_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|Add0~19_combout\);

-- Location: FF_X90_Y66_N15
\inst2|free_run_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(4));

-- Location: LCCOMB_X91_Y66_N16
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|free_run_counter\(5) & ((\inst2|Add0~9\) # (GND))) # (!\inst2|free_run_counter\(5) & (!\inst2|Add0~9\))
-- \inst2|Add0~11\ = CARRY((\inst2|free_run_counter\(5)) # (!\inst2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X90_Y66_N24
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (!\inst2|process_0~0_combout\ & !\inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|process_0~0_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|Add0~18_combout\);

-- Location: FF_X90_Y66_N25
\inst2|free_run_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(5));

-- Location: LCCOMB_X90_Y66_N10
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|free_run_counter\(6) & (!\inst2|free_run_counter\(5) & (!\inst2|free_run_counter\(4) & !\inst2|free_run_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(6),
	datab => \inst2|free_run_counter\(5),
	datac => \inst2|free_run_counter\(4),
	datad => \inst2|free_run_counter\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X90_Y66_N4
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|free_run_counter\(0) & (!\inst2|free_run_counter\(1) & (!\inst2|free_run_counter\(2) & \inst2|free_run_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(0),
	datab => \inst2|free_run_counter\(1),
	datac => \inst2|free_run_counter\(2),
	datad => \inst2|free_run_counter\(3),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y66_N20
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|free_run_counter\(7) & ((\inst2|Add0~13\) # (GND))) # (!\inst2|free_run_counter\(7) & (!\inst2|Add0~13\))
-- \inst2|Add0~15\ = CARRY((\inst2|free_run_counter\(7)) # (!\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X91_Y66_N22
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|free_run_counter\(8) & (!\inst2|Add0~15\ & VCC)) # (!\inst2|free_run_counter\(8) & (\inst2|Add0~15\ $ (GND)))
-- \inst2|Add0~25\ = CARRY((!\inst2|free_run_counter\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X91_Y66_N0
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (!\inst2|Add0~24_combout\ & !\inst2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|Add0~34_combout\);

-- Location: FF_X91_Y66_N1
\inst2|free_run_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(8));

-- Location: LCCOMB_X91_Y66_N24
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|free_run_counter\(9) & ((\inst2|Add0~25\) # (GND))) # (!\inst2|free_run_counter\(9) & (!\inst2|Add0~25\))
-- \inst2|Add0~27\ = CARRY((\inst2|free_run_counter\(9)) # (!\inst2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(9),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X91_Y66_N30
\inst2|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~35_combout\ = (!\inst2|process_0~0_combout\ & !\inst2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~0_combout\,
	datad => \inst2|Add0~26_combout\,
	combout => \inst2|Add0~35_combout\);

-- Location: FF_X91_Y66_N31
\inst2|free_run_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(9));

-- Location: LCCOMB_X91_Y66_N26
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|free_run_counter\(10) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|free_run_counter\(10) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|free_run_counter\(10) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(10),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X91_Y66_N4
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|Add0~28_combout\ & !\inst2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|Add0~30_combout\);

-- Location: FF_X91_Y66_N5
\inst2|free_run_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(10));

-- Location: LCCOMB_X91_Y66_N28
\inst2|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~31_combout\ = \inst2|Add0~29\ $ (\inst2|free_run_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|free_run_counter\(11),
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~31_combout\);

-- Location: LCCOMB_X91_Y66_N2
\inst2|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_combout\ = (!\inst2|process_0~0_combout\ & \inst2|Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~0_combout\,
	datad => \inst2|Add0~31_combout\,
	combout => \inst2|Add0~33_combout\);

-- Location: FF_X91_Y66_N3
\inst2|free_run_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(11));

-- Location: LCCOMB_X90_Y66_N0
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|free_run_counter\(11) & (!\inst2|free_run_counter\(8) & (!\inst2|free_run_counter\(9) & \inst2|free_run_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(11),
	datab => \inst2|free_run_counter\(8),
	datac => \inst2|free_run_counter\(9),
	datad => \inst2|free_run_counter\(10),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y66_N2
\inst2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = (\SW[0]~input_o\) # ((\inst2|Equal0~1_combout\ & (\inst2|Equal0~0_combout\ & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|process_0~0_combout\);

-- Location: LCCOMB_X91_Y66_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|free_run_counter\(6) & (!\inst2|Add0~11\ & VCC)) # (!\inst2|free_run_counter\(6) & (\inst2|Add0~11\ $ (GND)))
-- \inst2|Add0~13\ = CARRY((!\inst2|free_run_counter\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X90_Y66_N6
\inst2|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_combout\ = (!\inst2|process_0~0_combout\ & !\inst2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|process_0~0_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|Add0~17_combout\);

-- Location: FF_X90_Y66_N7
\inst2|free_run_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(6));

-- Location: LCCOMB_X90_Y66_N16
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (!\inst2|Add0~14_combout\ & !\inst2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|Add0~16_combout\);

-- Location: FF_X90_Y66_N17
\inst2|free_run_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(7));

-- Location: LCCOMB_X90_Y66_N28
\inst2|random_value[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[7]~0_combout\ = !\inst2|free_run_counter\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(7),
	combout => \inst2|random_value[7]~0_combout\);

-- Location: FF_X90_Y66_N29
\inst2|random_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(7));

-- Location: LCCOMB_X90_Y66_N22
\inst2|random_value[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[6]~1_combout\ = !\inst2|free_run_counter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(6),
	combout => \inst2|random_value[6]~1_combout\);

-- Location: FF_X90_Y66_N23
\inst2|random_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(6));

-- Location: LCCOMB_X90_Y66_N12
\inst2|random_value[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[5]~2_combout\ = !\inst2|free_run_counter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(5),
	combout => \inst2|random_value[5]~2_combout\);

-- Location: FF_X90_Y66_N13
\inst2|random_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(5));

-- Location: LCCOMB_X90_Y66_N26
\inst2|random_value[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[4]~feeder_combout\ = \inst2|free_run_counter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|free_run_counter\(4),
	combout => \inst2|random_value[4]~feeder_combout\);

-- Location: FF_X90_Y66_N27
\inst2|random_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(4));

-- Location: LCCOMB_X92_Y66_N8
\inst2|random_value[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[3]~3_combout\ = !\inst2|free_run_counter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(3),
	combout => \inst2|random_value[3]~3_combout\);

-- Location: FF_X92_Y66_N9
\inst2|random_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(3));

-- Location: LCCOMB_X90_Y66_N20
\inst2|random_value[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[2]~feeder_combout\ = \inst2|free_run_counter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|free_run_counter\(2),
	combout => \inst2|random_value[2]~feeder_combout\);

-- Location: FF_X90_Y66_N21
\inst2|random_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(2));

-- Location: LCCOMB_X90_Y66_N30
\inst2|random_value[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[1]~feeder_combout\ = \inst2|free_run_counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|free_run_counter\(1),
	combout => \inst2|random_value[1]~feeder_combout\);

-- Location: FF_X90_Y66_N31
\inst2|random_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(1));

-- Location: LCCOMB_X92_Y66_N18
\inst2|random_value[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[0]~feeder_combout\ = \inst2|free_run_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|free_run_counter\(0),
	combout => \inst2|random_value[0]~feeder_combout\);

-- Location: FF_X92_Y66_N19
\inst2|random_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(0));

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


