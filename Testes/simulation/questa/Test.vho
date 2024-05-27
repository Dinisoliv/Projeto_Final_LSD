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

-- DATE "05/27/2024 11:13:11"

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
SIGNAL \inst|clkOut~0_combout\ : std_logic;
SIGNAL \inst|clkOut~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
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
SIGNAL \inst|s_divCounter[10]~46\ : std_logic;
SIGNAL \inst|s_divCounter[11]~47_combout\ : std_logic;
SIGNAL \inst|s_divCounter[11]~48\ : std_logic;
SIGNAL \inst|s_divCounter[12]~49_combout\ : std_logic;
SIGNAL \inst|s_divCounter[12]~50\ : std_logic;
SIGNAL \inst|s_divCounter[13]~51_combout\ : std_logic;
SIGNAL \inst|s_divCounter[13]~52\ : std_logic;
SIGNAL \inst|s_divCounter[14]~53_combout\ : std_logic;
SIGNAL \inst|clkOut~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clkOut~3_combout\ : std_logic;
SIGNAL \inst|clkOut~6_combout\ : std_logic;
SIGNAL \inst|clkOut~5_combout\ : std_logic;
SIGNAL \inst|clkOut~7_combout\ : std_logic;
SIGNAL \inst|clkOut~8_combout\ : std_logic;
SIGNAL \inst|clkOut~9_combout\ : std_logic;
SIGNAL \inst|clkOut~q\ : std_logic;
SIGNAL \inst|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|free_run_counter[0]~8_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|free_run_counter[0]~9\ : std_logic;
SIGNAL \inst2|free_run_counter[1]~10_combout\ : std_logic;
SIGNAL \inst2|free_run_counter[1]~11\ : std_logic;
SIGNAL \inst2|free_run_counter[2]~12_combout\ : std_logic;
SIGNAL \inst2|free_run_counter[2]~13\ : std_logic;
SIGNAL \inst2|free_run_counter[3]~14_combout\ : std_logic;
SIGNAL \inst2|free_run_counter[3]~15\ : std_logic;
SIGNAL \inst2|free_run_counter[4]~16_combout\ : std_logic;
SIGNAL \inst2|free_run_counter[4]~17\ : std_logic;
SIGNAL \inst2|free_run_counter[5]~18_combout\ : std_logic;
SIGNAL \inst2|free_run_counter[5]~19\ : std_logic;
SIGNAL \inst2|free_run_counter[6]~20_combout\ : std_logic;
SIGNAL \inst2|free_run_counter[6]~21\ : std_logic;
SIGNAL \inst2|free_run_counter[7]~22_combout\ : std_logic;
SIGNAL \inst2|random_value[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|random_value[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|free_run_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|s_divCounter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst2|random_value\ : std_logic_vector(7 DOWNTO 0);

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
	i => \inst2|free_run_counter\(7),
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
	i => \inst2|free_run_counter\(6),
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
	i => \inst2|free_run_counter\(5),
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
	i => \inst2|free_run_counter\(3),
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

-- Location: LCCOMB_X60_Y70_N8
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

-- Location: LCCOMB_X60_Y69_N4
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

-- Location: LCCOMB_X60_Y69_N6
\inst|s_divCounter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[15]~55_combout\ = (\inst|s_divCounter\(15) & (!\inst|s_divCounter[14]~54\)) # (!\inst|s_divCounter\(15) & ((\inst|s_divCounter[14]~54\) # (GND)))
-- \inst|s_divCounter[15]~56\ = CARRY((!\inst|s_divCounter[14]~54\) # (!\inst|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(15),
	datad => VCC,
	cin => \inst|s_divCounter[14]~54\,
	combout => \inst|s_divCounter[15]~55_combout\,
	cout => \inst|s_divCounter[15]~56\);

-- Location: FF_X59_Y70_N11
\inst|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_divCounter[15]~55_combout\,
	sclr => \inst|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(15));

-- Location: LCCOMB_X60_Y69_N8
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

-- Location: FF_X60_Y69_N9
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

-- Location: LCCOMB_X60_Y69_N10
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

-- Location: FF_X60_Y69_N11
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

-- Location: LCCOMB_X60_Y69_N12
\inst|s_divCounter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[18]~61_combout\ = (\inst|s_divCounter\(18) & (\inst|s_divCounter[17]~60\ $ (GND))) # (!\inst|s_divCounter\(18) & (!\inst|s_divCounter[17]~60\ & VCC))
-- \inst|s_divCounter[18]~62\ = CARRY((\inst|s_divCounter\(18) & !\inst|s_divCounter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(18),
	datad => VCC,
	cin => \inst|s_divCounter[17]~60\,
	combout => \inst|s_divCounter[18]~61_combout\,
	cout => \inst|s_divCounter[18]~62\);

-- Location: FF_X60_Y69_N13
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

-- Location: LCCOMB_X60_Y69_N14
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

-- Location: FF_X60_Y69_N15
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

-- Location: LCCOMB_X60_Y69_N16
\inst|s_divCounter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[20]~65_combout\ = (\inst|s_divCounter\(20) & (\inst|s_divCounter[19]~64\ $ (GND))) # (!\inst|s_divCounter\(20) & (!\inst|s_divCounter[19]~64\ & VCC))
-- \inst|s_divCounter[20]~66\ = CARRY((\inst|s_divCounter\(20) & !\inst|s_divCounter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(20),
	datad => VCC,
	cin => \inst|s_divCounter[19]~64\,
	combout => \inst|s_divCounter[20]~65_combout\,
	cout => \inst|s_divCounter[20]~66\);

-- Location: FF_X60_Y69_N17
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

-- Location: LCCOMB_X60_Y69_N18
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

-- Location: FF_X60_Y69_N19
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

-- Location: LCCOMB_X60_Y69_N20
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

-- Location: FF_X60_Y69_N21
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

-- Location: LCCOMB_X60_Y69_N22
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

-- Location: FF_X60_Y69_N23
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

-- Location: LCCOMB_X60_Y69_N24
\inst|s_divCounter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[24]~73_combout\ = \inst|s_divCounter[23]~72\ $ (!\inst|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_divCounter\(24),
	cin => \inst|s_divCounter[23]~72\,
	combout => \inst|s_divCounter[24]~73_combout\);

-- Location: FF_X60_Y69_N25
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

-- Location: LCCOMB_X60_Y69_N26
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

-- Location: LCCOMB_X60_Y69_N30
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

-- Location: LCCOMB_X59_Y70_N4
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = ((!\inst|s_divCounter\(23) & ((\inst|LessThan0~4_combout\) # (!\inst|clkOut~2_combout\)))) # (!\inst|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(24),
	datab => \inst|s_divCounter\(23),
	datac => \inst|clkOut~2_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X60_Y70_N4
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

-- Location: LCCOMB_X60_Y70_N2
\inst|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~1_combout\ = (!\inst|s_divCounter\(9) & (!\inst|s_divCounter\(6) & (!\inst|s_divCounter\(7) & !\inst|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(9),
	datab => \inst|s_divCounter\(6),
	datac => \inst|s_divCounter\(7),
	datad => \inst|s_divCounter\(8),
	combout => \inst|clkOut~1_combout\);

-- Location: LCCOMB_X59_Y70_N22
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|clkOut~1_combout\ & (((!\inst|s_divCounter\(4)) # (!\inst|s_divCounter\(5))) # (!\inst|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~0_combout\,
	datab => \inst|s_divCounter\(5),
	datac => \inst|clkOut~1_combout\,
	datad => \inst|s_divCounter\(4),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y70_N12
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|s_divCounter\(15) & (!\inst|s_divCounter\(17) & !\inst|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(15),
	datac => \inst|s_divCounter\(17),
	datad => \inst|s_divCounter\(23),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y70_N2
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|s_divCounter\(10) & (\inst|LessThan0~1_combout\ & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(10),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y70_N18
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|LessThan0~5_combout\ & (!\inst|LessThan0~3_combout\ & !\inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: FF_X60_Y70_N9
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

-- Location: LCCOMB_X60_Y70_N10
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

-- Location: FF_X60_Y70_N11
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

-- Location: LCCOMB_X60_Y70_N12
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

-- Location: FF_X60_Y70_N13
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

-- Location: LCCOMB_X60_Y70_N14
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

-- Location: FF_X60_Y70_N15
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

-- Location: LCCOMB_X60_Y70_N16
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

-- Location: FF_X60_Y70_N17
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

-- Location: LCCOMB_X60_Y70_N18
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

-- Location: FF_X60_Y70_N19
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

-- Location: LCCOMB_X60_Y70_N20
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

-- Location: FF_X60_Y70_N21
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

-- Location: LCCOMB_X60_Y70_N22
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

-- Location: FF_X60_Y70_N23
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

-- Location: LCCOMB_X60_Y70_N24
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

-- Location: FF_X60_Y70_N25
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

-- Location: LCCOMB_X60_Y70_N26
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

-- Location: FF_X60_Y70_N27
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

-- Location: LCCOMB_X60_Y70_N28
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

-- Location: FF_X60_Y70_N29
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

-- Location: LCCOMB_X60_Y70_N30
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

-- Location: FF_X60_Y70_N31
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

-- Location: LCCOMB_X60_Y69_N0
\inst|s_divCounter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[12]~49_combout\ = (\inst|s_divCounter\(12) & (\inst|s_divCounter[11]~48\ $ (GND))) # (!\inst|s_divCounter\(12) & (!\inst|s_divCounter[11]~48\ & VCC))
-- \inst|s_divCounter[12]~50\ = CARRY((\inst|s_divCounter\(12) & !\inst|s_divCounter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(12),
	datad => VCC,
	cin => \inst|s_divCounter[11]~48\,
	combout => \inst|s_divCounter[12]~49_combout\,
	cout => \inst|s_divCounter[12]~50\);

-- Location: FF_X59_Y70_N7
\inst|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_divCounter[12]~49_combout\,
	sclr => \inst|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_divCounter\(12));

-- Location: LCCOMB_X60_Y69_N2
\inst|s_divCounter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_divCounter[13]~51_combout\ = (\inst|s_divCounter\(13) & (!\inst|s_divCounter[12]~50\)) # (!\inst|s_divCounter\(13) & ((\inst|s_divCounter[12]~50\) # (GND)))
-- \inst|s_divCounter[13]~52\ = CARRY((!\inst|s_divCounter[12]~50\) # (!\inst|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(13),
	datad => VCC,
	cin => \inst|s_divCounter[12]~50\,
	combout => \inst|s_divCounter[13]~51_combout\,
	cout => \inst|s_divCounter[13]~52\);

-- Location: FF_X59_Y70_N21
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

-- Location: FF_X60_Y69_N5
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

-- Location: LCCOMB_X59_Y70_N14
\inst|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~4_combout\ = (\inst|s_divCounter\(12) & (\inst|s_divCounter\(11) & \inst|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(12),
	datac => \inst|s_divCounter\(11),
	datad => \inst|s_divCounter\(13),
	combout => \inst|clkOut~4_combout\);

-- Location: LCCOMB_X59_Y70_N26
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~0_combout\ & ((!\inst|clkOut~4_combout\) # (!\inst|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_divCounter\(14),
	datac => \inst|clkOut~4_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y70_N8
\inst|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~3_combout\ = (\inst|s_divCounter\(4) & (\inst|clkOut~1_combout\ & (\inst|clkOut~2_combout\ & \inst|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(4),
	datab => \inst|clkOut~1_combout\,
	datac => \inst|clkOut~2_combout\,
	datad => \inst|clkOut~0_combout\,
	combout => \inst|clkOut~3_combout\);

-- Location: LCCOMB_X60_Y69_N28
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

-- Location: LCCOMB_X59_Y70_N30
\inst|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~5_combout\ = (\inst|s_divCounter\(15) & (\inst|s_divCounter\(10) & (!\inst|s_divCounter\(14) & !\inst|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(15),
	datab => \inst|s_divCounter\(10),
	datac => \inst|s_divCounter\(14),
	datad => \inst|s_divCounter\(16),
	combout => \inst|clkOut~5_combout\);

-- Location: LCCOMB_X59_Y70_N28
\inst|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~7_combout\ = (!\inst|s_divCounter\(5) & (\inst|clkOut~4_combout\ & (\inst|clkOut~6_combout\ & \inst|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_divCounter\(5),
	datab => \inst|clkOut~4_combout\,
	datac => \inst|clkOut~6_combout\,
	datad => \inst|clkOut~5_combout\,
	combout => \inst|clkOut~7_combout\);

-- Location: LCCOMB_X59_Y70_N24
\inst|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~8_combout\ = (\inst|clkOut~q\) # ((\inst|clkOut~3_combout\ & \inst|clkOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOut~q\,
	datac => \inst|clkOut~3_combout\,
	datad => \inst|clkOut~7_combout\,
	combout => \inst|clkOut~8_combout\);

-- Location: LCCOMB_X59_Y70_N16
\inst|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOut~9_combout\ = (\inst|clkOut~8_combout\ & ((\inst|LessThan0~3_combout\) # ((\inst|LessThan0~5_combout\) # (\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~3_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|clkOut~8_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|clkOut~9_combout\);

-- Location: FF_X59_Y70_N17
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X87_Y69_N12
\inst2|free_run_counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[0]~8_combout\ = \inst2|free_run_counter\(0) $ (VCC)
-- \inst2|free_run_counter[0]~9\ = CARRY(\inst2|free_run_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(0),
	datad => VCC,
	combout => \inst2|free_run_counter[0]~8_combout\,
	cout => \inst2|free_run_counter[0]~9\);

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

-- Location: FF_X87_Y69_N13
\inst2|free_run_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[0]~8_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(0));

-- Location: LCCOMB_X87_Y69_N14
\inst2|free_run_counter[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[1]~10_combout\ = (\inst2|free_run_counter\(1) & (!\inst2|free_run_counter[0]~9\)) # (!\inst2|free_run_counter\(1) & ((\inst2|free_run_counter[0]~9\) # (GND)))
-- \inst2|free_run_counter[1]~11\ = CARRY((!\inst2|free_run_counter[0]~9\) # (!\inst2|free_run_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(1),
	datad => VCC,
	cin => \inst2|free_run_counter[0]~9\,
	combout => \inst2|free_run_counter[1]~10_combout\,
	cout => \inst2|free_run_counter[1]~11\);

-- Location: FF_X87_Y69_N15
\inst2|free_run_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[1]~10_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(1));

-- Location: LCCOMB_X87_Y69_N16
\inst2|free_run_counter[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[2]~12_combout\ = (\inst2|free_run_counter\(2) & (\inst2|free_run_counter[1]~11\ $ (GND))) # (!\inst2|free_run_counter\(2) & (!\inst2|free_run_counter[1]~11\ & VCC))
-- \inst2|free_run_counter[2]~13\ = CARRY((\inst2|free_run_counter\(2) & !\inst2|free_run_counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(2),
	datad => VCC,
	cin => \inst2|free_run_counter[1]~11\,
	combout => \inst2|free_run_counter[2]~12_combout\,
	cout => \inst2|free_run_counter[2]~13\);

-- Location: FF_X87_Y69_N17
\inst2|free_run_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[2]~12_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(2));

-- Location: LCCOMB_X87_Y69_N18
\inst2|free_run_counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[3]~14_combout\ = (\inst2|free_run_counter\(3) & (!\inst2|free_run_counter[2]~13\)) # (!\inst2|free_run_counter\(3) & ((\inst2|free_run_counter[2]~13\) # (GND)))
-- \inst2|free_run_counter[3]~15\ = CARRY((!\inst2|free_run_counter[2]~13\) # (!\inst2|free_run_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(3),
	datad => VCC,
	cin => \inst2|free_run_counter[2]~13\,
	combout => \inst2|free_run_counter[3]~14_combout\,
	cout => \inst2|free_run_counter[3]~15\);

-- Location: FF_X87_Y69_N19
\inst2|free_run_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[3]~14_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(3));

-- Location: LCCOMB_X87_Y69_N20
\inst2|free_run_counter[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[4]~16_combout\ = (\inst2|free_run_counter\(4) & (\inst2|free_run_counter[3]~15\ $ (GND))) # (!\inst2|free_run_counter\(4) & (!\inst2|free_run_counter[3]~15\ & VCC))
-- \inst2|free_run_counter[4]~17\ = CARRY((\inst2|free_run_counter\(4) & !\inst2|free_run_counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(4),
	datad => VCC,
	cin => \inst2|free_run_counter[3]~15\,
	combout => \inst2|free_run_counter[4]~16_combout\,
	cout => \inst2|free_run_counter[4]~17\);

-- Location: FF_X87_Y69_N21
\inst2|free_run_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[4]~16_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(4));

-- Location: LCCOMB_X87_Y69_N22
\inst2|free_run_counter[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[5]~18_combout\ = (\inst2|free_run_counter\(5) & (!\inst2|free_run_counter[4]~17\)) # (!\inst2|free_run_counter\(5) & ((\inst2|free_run_counter[4]~17\) # (GND)))
-- \inst2|free_run_counter[5]~19\ = CARRY((!\inst2|free_run_counter[4]~17\) # (!\inst2|free_run_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(5),
	datad => VCC,
	cin => \inst2|free_run_counter[4]~17\,
	combout => \inst2|free_run_counter[5]~18_combout\,
	cout => \inst2|free_run_counter[5]~19\);

-- Location: FF_X87_Y69_N23
\inst2|free_run_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[5]~18_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(5));

-- Location: LCCOMB_X87_Y69_N24
\inst2|free_run_counter[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[6]~20_combout\ = (\inst2|free_run_counter\(6) & (\inst2|free_run_counter[5]~19\ $ (GND))) # (!\inst2|free_run_counter\(6) & (!\inst2|free_run_counter[5]~19\ & VCC))
-- \inst2|free_run_counter[6]~21\ = CARRY((\inst2|free_run_counter\(6) & !\inst2|free_run_counter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(6),
	datad => VCC,
	cin => \inst2|free_run_counter[5]~19\,
	combout => \inst2|free_run_counter[6]~20_combout\,
	cout => \inst2|free_run_counter[6]~21\);

-- Location: FF_X87_Y69_N25
\inst2|free_run_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[6]~20_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(6));

-- Location: LCCOMB_X87_Y69_N26
\inst2|free_run_counter[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|free_run_counter[7]~22_combout\ = \inst2|free_run_counter[6]~21\ $ (\inst2|free_run_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|free_run_counter\(7),
	cin => \inst2|free_run_counter[6]~21\,
	combout => \inst2|free_run_counter[7]~22_combout\);

-- Location: FF_X87_Y69_N27
\inst2|free_run_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOut~clkctrl_outclk\,
	d => \inst2|free_run_counter[7]~22_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|free_run_counter\(7));

-- Location: LCCOMB_X87_Y69_N4
\inst2|random_value[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[7]~feeder_combout\ = \inst2|free_run_counter\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(7),
	combout => \inst2|random_value[7]~feeder_combout\);

-- Location: FF_X87_Y69_N5
\inst2|random_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(7));

-- Location: LCCOMB_X87_Y69_N2
\inst2|random_value[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[6]~feeder_combout\ = \inst2|free_run_counter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(6),
	combout => \inst2|random_value[6]~feeder_combout\);

-- Location: FF_X87_Y69_N3
\inst2|random_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(6));

-- Location: LCCOMB_X87_Y69_N0
\inst2|random_value[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[5]~feeder_combout\ = \inst2|free_run_counter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(5),
	combout => \inst2|random_value[5]~feeder_combout\);

-- Location: FF_X87_Y69_N1
\inst2|random_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(5));

-- Location: LCCOMB_X87_Y69_N6
\inst2|random_value[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[4]~feeder_combout\ = \inst2|free_run_counter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(4),
	combout => \inst2|random_value[4]~feeder_combout\);

-- Location: FF_X87_Y69_N7
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

-- Location: LCCOMB_X87_Y69_N8
\inst2|random_value[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[3]~feeder_combout\ = \inst2|free_run_counter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(3),
	combout => \inst2|random_value[3]~feeder_combout\);

-- Location: FF_X87_Y69_N9
\inst2|random_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[1]~input_o\,
	d => \inst2|random_value[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|random_value\(3));

-- Location: LCCOMB_X87_Y69_N10
\inst2|random_value[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[2]~feeder_combout\ = \inst2|free_run_counter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|free_run_counter\(2),
	combout => \inst2|random_value[2]~feeder_combout\);

-- Location: FF_X87_Y69_N11
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

-- Location: LCCOMB_X87_Y69_N28
\inst2|random_value[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[1]~feeder_combout\ = \inst2|free_run_counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|free_run_counter\(1),
	combout => \inst2|random_value[1]~feeder_combout\);

-- Location: FF_X87_Y69_N29
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

-- Location: LCCOMB_X87_Y69_N30
\inst2|random_value[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|random_value[0]~feeder_combout\ = \inst2|free_run_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|free_run_counter\(0),
	combout => \inst2|random_value[0]~feeder_combout\);

-- Location: FF_X87_Y69_N31
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


