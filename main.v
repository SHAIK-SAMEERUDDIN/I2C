`timescale 1ns / 1ps


module top_v1(
input clk,
input reset,
input rw,
input [7:0] data_in,
input [6:0] addr,
input [7:0] block_addr,
input enable, //start signal
output [7:0] data_out,
output ack,
output busy,
output scl,
inout sda
    );
    
i2c_master master_uut(
                      .clk(clk),
                      .reset(reset),
                      .rw(rw),
                      .data_in(data_in),
                      .addr(addr),
                      .block_addr(block_addr),
                      .enable(enable),
                      .data_out(data_out),
                      .busy(busy),
                      .scl(scl),
                      .sda(sda),
                      .ack(ack));
           
i2c_slave slave_uut(
                     .sda(sda),
                     .scl(scl),
                     .reset(reset));
                     
endmodule