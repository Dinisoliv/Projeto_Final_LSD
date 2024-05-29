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

-- DATE "05/29/2024 16:21:57"

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

ENTITY 	FreeRun IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	don : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END FreeRun;

-- Design Ports Information
-- don[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[5]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[6]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[8]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[9]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[10]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- don[11]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreeRun IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_don : std_logic_vector(11 DOWNTO 0);
SIGNAL \start~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \don[0]~output_o\ : std_logic;
SIGNAL \don[1]~output_o\ : std_logic;
SIGNAL \don[2]~output_o\ : std_logic;
SIGNAL \don[3]~output_o\ : std_logic;
SIGNAL \don[4]~output_o\ : std_logic;
SIGNAL \don[5]~output_o\ : std_logic;
SIGNAL \don[6]~output_o\ : std_logic;
SIGNAL \don[7]~output_o\ : std_logic;
SIGNAL \don[8]~output_o\ : std_logic;
SIGNAL \don[9]~output_o\ : std_logic;
SIGNAL \don[10]~output_o\ : std_logic;
SIGNAL \don[11]~output_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \random_value[1]~feeder_combout\ : std_logic;
SIGNAL \random_value[2]~feeder_combout\ : std_logic;
SIGNAL \random_value[3]~0_combout\ : std_logic;
SIGNAL \random_value[4]~feeder_combout\ : std_logic;
SIGNAL \random_value[5]~1_combout\ : std_logic;
SIGNAL \random_value[6]~2_combout\ : std_logic;
SIGNAL \random_value[7]~3_combout\ : std_logic;
SIGNAL \random_value[8]~4_combout\ : std_logic;
SIGNAL \random_value[9]~5_combout\ : std_logic;
SIGNAL random_value : std_logic_vector(11 DOWNTO 0);
SIGNAL free_run_counter : std_logic_vector(11 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
don <= ww_don;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\start~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \start~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y13_N2
\don[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(0),
	devoe => ww_devoe,
	o => \don[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\don[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(1),
	devoe => ww_devoe,
	o => \don[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\don[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(2),
	devoe => ww_devoe,
	o => \don[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\don[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(3),
	devoe => ww_devoe,
	o => \don[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\don[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(4),
	devoe => ww_devoe,
	o => \don[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\don[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(5),
	devoe => ww_devoe,
	o => \don[5]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\don[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(6),
	devoe => ww_devoe,
	o => \don[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\don[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(7),
	devoe => ww_devoe,
	o => \don[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\don[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(8),
	devoe => ww_devoe,
	o => \don[8]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\don[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(9),
	devoe => ww_devoe,
	o => \don[9]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\don[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(10),
	devoe => ww_devoe,
	o => \don[10]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\don[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => random_value(11),
	devoe => ww_devoe,
	o => \don[11]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: CLKCTRL_G4
\start~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \start~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \start~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y12_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = free_run_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(free_run_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => free_run_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y12_N8
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (free_run_counter(1) & (!\Add0~1\)) # (!free_run_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!free_run_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X1_Y12_N8
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~3_combout\,
	datad => \process_0~0_combout\,
	combout => \Add0~5_combout\);

-- Location: FF_X1_Y12_N9
\free_run_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(1));

-- Location: LCCOMB_X2_Y12_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (free_run_counter(2) & (\Add0~4\ $ (GND))) # (!free_run_counter(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((free_run_counter(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y12_N26
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (!\process_0~0_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~8_combout\);

-- Location: FF_X1_Y12_N27
\free_run_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(2));

-- Location: LCCOMB_X2_Y12_N12
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (free_run_counter(3) & ((\Add0~7\) # (GND))) # (!free_run_counter(3) & (!\Add0~7\))
-- \Add0~10\ = CARRY((free_run_counter(3)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => free_run_counter(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X1_Y12_N20
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (!\Add0~9_combout\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~9_combout\,
	datad => \process_0~0_combout\,
	combout => \Add0~11_combout\);

-- Location: FF_X1_Y12_N21
\free_run_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(3));

-- Location: LCCOMB_X1_Y12_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!free_run_counter(2) & (!free_run_counter(1) & (free_run_counter(3) & !free_run_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(2),
	datab => free_run_counter(1),
	datac => free_run_counter(3),
	datad => free_run_counter(0),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y15_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X2_Y12_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (free_run_counter(4) & (\Add0~10\ $ (GND))) # (!free_run_counter(4) & (!\Add0~10\ & VCC))
-- \Add0~13\ = CARRY((free_run_counter(4) & !\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => free_run_counter(4),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X1_Y12_N30
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~12_combout\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \process_0~0_combout\,
	combout => \Add0~14_combout\);

-- Location: FF_X1_Y12_N31
\free_run_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(4));

-- Location: LCCOMB_X2_Y12_N16
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (free_run_counter(5) & ((\Add0~13\) # (GND))) # (!free_run_counter(5) & (!\Add0~13\))
-- \Add0~16\ = CARRY((free_run_counter(5)) # (!\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(5),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X1_Y12_N0
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (!\process_0~0_combout\ & !\Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X1_Y12_N1
\free_run_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(5));

-- Location: LCCOMB_X2_Y12_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (free_run_counter(6) & (!\Add0~16\ & VCC)) # (!free_run_counter(6) & (\Add0~16\ $ (GND)))
-- \Add0~19\ = CARRY((!free_run_counter(6) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(6),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X3_Y12_N2
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (!\process_0~0_combout\ & !\Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~0_combout\,
	datad => \Add0~18_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X3_Y12_N3
\free_run_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(6));

-- Location: LCCOMB_X2_Y12_N20
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (free_run_counter(7) & ((\Add0~19\) # (GND))) # (!free_run_counter(7) & (!\Add0~19\))
-- \Add0~22\ = CARRY((free_run_counter(7)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => free_run_counter(7),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X1_Y12_N18
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (!\process_0~0_combout\ & !\Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datad => \Add0~21_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X1_Y12_N19
\free_run_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(7));

-- Location: LCCOMB_X2_Y12_N22
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (free_run_counter(8) & (!\Add0~22\ & VCC)) # (!free_run_counter(8) & (\Add0~22\ $ (GND)))
-- \Add0~25\ = CARRY((!free_run_counter(8) & !\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => free_run_counter(8),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X3_Y12_N12
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (!\process_0~0_combout\ & !\Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~0_combout\,
	datad => \Add0~24_combout\,
	combout => \Add0~26_combout\);

-- Location: FF_X3_Y12_N13
\free_run_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(8));

-- Location: LCCOMB_X2_Y12_N24
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (free_run_counter(9) & ((\Add0~25\) # (GND))) # (!free_run_counter(9) & (!\Add0~25\))
-- \Add0~28\ = CARRY((free_run_counter(9)) # (!\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => free_run_counter(9),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X3_Y12_N18
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (!\process_0~0_combout\ & !\Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~0_combout\,
	datad => \Add0~27_combout\,
	combout => \Add0~29_combout\);

-- Location: FF_X3_Y12_N19
\free_run_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(9));

-- Location: LCCOMB_X2_Y12_N26
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (free_run_counter(10) & (\Add0~28\ $ (GND))) # (!free_run_counter(10) & (!\Add0~28\ & VCC))
-- \Add0~31\ = CARRY((free_run_counter(10) & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(10),
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X2_Y12_N4
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~30_combout\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \process_0~0_combout\,
	combout => \Add0~32_combout\);

-- Location: FF_X2_Y12_N5
\free_run_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(10));

-- Location: LCCOMB_X2_Y12_N28
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = \Add0~31\ $ (free_run_counter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => free_run_counter(11),
	cin => \Add0~31\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X2_Y12_N30
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (!\process_0~0_combout\ & \Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datad => \Add0~33_combout\,
	combout => \Add0~35_combout\);

-- Location: FF_X2_Y12_N31
\free_run_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(11));

-- Location: LCCOMB_X2_Y12_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (free_run_counter(10) & (!free_run_counter(8) & (free_run_counter(11) & !free_run_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(10),
	datab => free_run_counter(8),
	datac => free_run_counter(11),
	datad => free_run_counter(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y12_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!free_run_counter(4) & (!free_run_counter(5) & (free_run_counter(6) & !free_run_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => free_run_counter(4),
	datab => free_run_counter(5),
	datac => free_run_counter(6),
	datad => free_run_counter(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y12_N24
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\reset~input_o\) # ((\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \reset~input_o\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X2_Y12_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~0_combout\ & !\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \process_0~0_combout\,
	combout => \Add0~2_combout\);

-- Location: FF_X2_Y12_N3
\free_run_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_run_counter(0));

-- Location: FF_X2_Y12_N27
\random_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	asdata => free_run_counter(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(0));

-- Location: LCCOMB_X1_Y12_N28
\random_value[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[1]~feeder_combout\ = free_run_counter(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => free_run_counter(1),
	combout => \random_value[1]~feeder_combout\);

-- Location: FF_X1_Y12_N29
\random_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(1));

-- Location: LCCOMB_X1_Y12_N10
\random_value[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[2]~feeder_combout\ = free_run_counter(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => free_run_counter(2),
	combout => \random_value[2]~feeder_combout\);

-- Location: FF_X1_Y12_N11
\random_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(2));

-- Location: LCCOMB_X1_Y12_N4
\random_value[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[3]~0_combout\ = !free_run_counter(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => free_run_counter(3),
	combout => \random_value[3]~0_combout\);

-- Location: FF_X1_Y12_N5
\random_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(3));

-- Location: LCCOMB_X1_Y12_N14
\random_value[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[4]~feeder_combout\ = free_run_counter(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => free_run_counter(4),
	combout => \random_value[4]~feeder_combout\);

-- Location: FF_X1_Y12_N15
\random_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(4));

-- Location: LCCOMB_X1_Y12_N16
\random_value[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[5]~1_combout\ = !free_run_counter(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => free_run_counter(5),
	combout => \random_value[5]~1_combout\);

-- Location: FF_X1_Y12_N17
\random_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(5));

-- Location: LCCOMB_X3_Y12_N28
\random_value[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[6]~2_combout\ = !free_run_counter(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => free_run_counter(6),
	combout => \random_value[6]~2_combout\);

-- Location: FF_X3_Y12_N29
\random_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(6));

-- Location: LCCOMB_X1_Y12_N22
\random_value[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[7]~3_combout\ = !free_run_counter(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => free_run_counter(7),
	combout => \random_value[7]~3_combout\);

-- Location: FF_X1_Y12_N23
\random_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(7));

-- Location: LCCOMB_X3_Y12_N30
\random_value[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[8]~4_combout\ = !free_run_counter(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => free_run_counter(8),
	combout => \random_value[8]~4_combout\);

-- Location: FF_X3_Y12_N31
\random_value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(8));

-- Location: LCCOMB_X3_Y12_N24
\random_value[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \random_value[9]~5_combout\ = !free_run_counter(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => free_run_counter(9),
	combout => \random_value[9]~5_combout\);

-- Location: FF_X3_Y12_N25
\random_value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	d => \random_value[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(9));

-- Location: FF_X2_Y12_N11
\random_value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	asdata => free_run_counter(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(10));

-- Location: FF_X2_Y12_N1
\random_value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~inputclkctrl_outclk\,
	asdata => free_run_counter(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => random_value(11));

ww_don(0) <= \don[0]~output_o\;

ww_don(1) <= \don[1]~output_o\;

ww_don(2) <= \don[2]~output_o\;

ww_don(3) <= \don[3]~output_o\;

ww_don(4) <= \don[4]~output_o\;

ww_don(5) <= \don[5]~output_o\;

ww_don(6) <= \don[6]~output_o\;

ww_don(7) <= \don[7]~output_o\;

ww_don(8) <= \don[8]~output_o\;

ww_don(9) <= \don[9]~output_o\;

ww_don(10) <= \don[10]~output_o\;

ww_don(11) <= \don[11]~output_o\;
END structure;


