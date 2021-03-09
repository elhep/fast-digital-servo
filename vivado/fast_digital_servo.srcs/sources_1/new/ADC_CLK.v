`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 12:58:48 PM
// Design Name: 
// Module Name: ADC_CLK
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ADC_CLK(
    input wire reset,
    input wire clk_in1_n,
    input wire clk_in1_p,

    output wire clk_out1,
    output locked
    );

    wire clk_in1;
    wire clkfbout_ADC_CLK, clk_out1_ADC_CLK, clkfbout_buf_ADC_CLK;

    IBUFDS clkin1_ibufgds (
        .O(clk_in1),
        .I(clk_in1_p),
        .IB(clk_in1_n)
    );

    PLLE2_BASE #(
    // VCO freq 1GHz
        .CLKFBOUT_MULT(10.0),    
        .CLKFBOUT_PHASE(0.0),
        .CLKIN1_PERIOD(10.0),  // 10 ns if 100 MHz
        
        .CLKOUT0_DIVIDE(10.0),    // ADC clk (frequency)
        
        .CLKOUT0_PHASE(0.0),

        .DIVCLK_DIVIDE(1)   
    )
    ADC_PLL(
        .CLKFBOUT (clkfbout_ADC_CLK),
        .CLKOUT0(clk_out1_ADC_CLK),
        
        // Input clock 
        .CLKFBIN(clkfbout_buf_ADC_CLK),
        .CLKIN1(clk_in1),
        .LOCKED(locked),
        .RST(reset)
    );

    BUFG clkf_buf (
        .O(clkfbout_buf_ADC_CLK),
        .I(clkfbout_ADC_CLK)
    );

    BUFG clkout1_buf (
        .O (clk_out1),
        .I (clk_out1_ADC_CLK)
    );


endmodule

