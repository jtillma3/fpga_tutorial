/*
This program ties the state of the LED to the state of the RESET button
*/

module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,
    // cclk input from AVR, high when AVR is ready
    input cclk,
    // Outputs to the 8 onboard LEDs
    output[7:0]led,
    // AVR SPI connections
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    // AVR ADC channel select
    output [3:0] spi_channel,
    // Serial connections
    input avr_tx, // AVR Tx => FPGA Rx
    output avr_rx, // AVR Rx => FPGA Tx
    input avr_rx_busy // AVR Rx buffer full
    );

wire rst = ~rst_n; // make reset active high
wire [9:0] array; // this is a declaration of the 8-bit wire (I/O line)
// these signals should be high-z when not used
//append _n to wires that are active-low

//The following three lines are constant declarations
//x'yz 
//x - represents the number of bits to use
//y  - represents how to interpret the written number
//		possible values: b(inary), he(x)
//z - represents the value
//Binary :  1,0, Z,X
//				Z - High Impedence - disconnected
//				X - Don't Care - could be anything
assign spi_miso = 1'bz;   //The spi ports are disconnected to prevent board damage from driving them
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;



assign led[6:0] = 7'b0; //these pins are set to a constant zero
assign led[7] = rst; // this pin is tied to rst

endmodule