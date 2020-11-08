module A_ESTF (
	//////////// CLOCK //////////
	input			CLOCK_50,

	//////////// LED //////////
	output	[7:0]	LED,
	
	//////////// BELL //////////
	output          BELL,
	
	//////////// UART //////////
	output          UART_TXD,
	input          UART_RXD,
	
	//////////// KEY //////////
	input	[1:0]	KEY,

	//////////// SW //////////
	input	[3:0]	SW,

	//////////// SDRAM //////////
	output	[12:0]	DRAM_ADDR,
	output	[1:0]	DRAM_BA,
	output			DRAM_CAS_N,
	output			DRAM_CKE,
	output			DRAM_CLK,
	output			DRAM_CS_N,
	inout	[15:0]	DRAM_DQ,
	output	[1:0]	DRAM_DQM,
	output			DRAM_RAS_N,
	output			DRAM_WE_N,

	//////////// EPCS //////////
	output			EPCS_ASDO,
	input				EPCS_DATA0,
	output			EPCS_DCLK,
	output			EPCS_NCSO,
	
	//////////// Flash //////////

	//////////// EEPROM //////////
	output			I2C_SCLK,
	inout				I2C_SDAT,

	//////////// ADC //////////
	output			ADC_CS_N,
	output			ADC_SADDR,
	output			ADC_SCLK,
	input			ADC_SDAT,

	//////////// 2x13 GPIO Header //////////
	inout	[12:0]	GPIO_2,
	input	[2:0]	GPIO_2_IN,

	//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
	inout	[33:0]	GPIO_0_D,
	input	[1:0]	GPIO_0_IN,

	//////////// GPIO_0, GPIO_1 connect to GPIO Default //////////
	inout	[33:0]	GPIO_1_D,
	input	[1:0]	GPIO_1_IN
);

	wire			clk_core;
	wire			clk_sdram;
	wire			clk_25M;
	
	wire	[31:0]	gpioA_read;
	wire	[31:0]	gpioA_write;
	wire	[31:0]	gpioA_writeEnable;
  
	wire	[15:0]	io_sdram_DQ_write;
	wire			io_sdram_DQ_writeEnable;
	
	pll pll_inst (
		.inclk0		(CLOCK_50),
		.areset		(~KEY[0]),
		.c0			(clk_core),
		.c1			(clk_sdram),
		.c2			(clk_25M),
		.locked		()
	);
	
	assign DRAM_CLK = clk_sdram;
	assign LED[7:0] = gpioA_write[7:0];   
	assign gpioA_read[3:0] = SW[3:0];
	assign DRAM_DQ = (io_sdram_DQ_writeEnable) ? io_sdram_DQ_write : 16'bz;

	assign GPIO_0_D[0]  = 1'b1;		// VCC
	assign GPIO_0_D[10] = 1'b0;		// reset
	assign BELL = 1'b1;
	
	// GND
	assign GPIO_0_D[1]  = 1'b0;
	assign GPIO_0_D[3]  = 1'b0;
	assign GPIO_0_D[5]  = 1'b0;
	assign GPIO_0_D[7]  = 1'b0;
	assign GPIO_0_D[9]  = 1'b0;
	assign GPIO_0_D[11] = 1'b0;
	assign GPIO_0_D[13] = 1'b0;
	assign GPIO_0_D[15] = 1'b0;

	Briey briey_inst (
		.io_asyncReset				(~KEY[0]),
		.io_axiClk					(clk_core),
		.io_vgaClk					(clk_25M),
		.io_jtag_tck				(GPIO_0_D[6]),
		.io_jtag_tms				(GPIO_0_D[4]),
		.io_jtag_tdi				(GPIO_0_D[2]),
		.io_jtag_tdo				(GPIO_0_D[8]),
		.io_gpioA_read				(gpioA_read),
		.io_gpioA_write				(gpioA_write),
		.io_gpioA_writeEnable		(gpioA_writeEnable),
		.io_gpioB_read				(32'b0),
		.io_gpioB_write				(),
		.io_gpioB_writeEnable		(),
		.io_timerExternal_clear		(1'b0),
		.io_timerExternal_tick		(1'b0),
		.io_uart_txd				(UART_TXD),
		.io_uart_rxd				(UART_RXD),
		.io_coreInterrupt			(~KEY[1]),
		.io_sdram_ADDR				(DRAM_ADDR),
		.io_sdram_BA				(DRAM_BA),
		.io_sdram_DQ_read			(DRAM_DQ),
		.io_sdram_DQ_write			(io_sdram_DQ_write),
		.io_sdram_DQ_writeEnable	(io_sdram_DQ_writeEnable),
		.io_sdram_DQM				(DRAM_DQM),
		.io_sdram_CASn				(DRAM_CAS_N),
		.io_sdram_CKE				(DRAM_CKE),
		.io_sdram_CSn				(DRAM_CS_N),
		.io_sdram_RASn				(DRAM_RAS_N),
		.io_sdram_WEn				(DRAM_WE_N)
    );

endmodule
