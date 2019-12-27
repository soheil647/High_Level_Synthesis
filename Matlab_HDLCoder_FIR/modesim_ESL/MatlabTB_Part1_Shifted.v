
// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\untitled\Subsystem_tb.v
// Created: 2019-05-08 12:20:26
// 
// Generated by MATLAB 9.4 and HDL Coder 3.12
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.2
// Target subsystem base rate: 0.2
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.2
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// y                             ce_out        0.2
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Subsystem_tb
// Source Path: 
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Subsystem_tb;



  reg  clk;
  reg  reset;
  wire clk_enable;
  wire signed [15:0] rawData_x;  // int16
  wire y_done;  // ufix1
  wire rdEnb;
  wire y_done_enb;  // ufix1
  reg [5:0] y_addr;  // ufix6
  wire y_active;  // ufix1
  reg signed [15:0] holdData_x;  // int16
  reg signed [15:0] x_offset;  // int16
  wire signed [15:0] x_1;  // int16
  reg  check1_done;  // ufix1
  wire snkDonen;
  wire resetn;
  wire tb_enb;
  reg  tb_enb_delay;
  wire ce_out;
  wire signed [15:0] y;  // int16
  wire y_enb;  // ufix1
  wire y_lastAddr;  // ufix1
  wire signed [15:0] y_expected_1;  // int16
  wire signed [15:0] y_ref;  // int16
  reg  y_testFailure;  // ufix1
  wire testFailure;  // ufix1


  // Data source for x
  assign rawData_x = 16'sb0000000000000000;



  assign y_done_enb = y_done & rdEnb;



  assign y_active = y_addr != 6'b110010;



  // holdData reg for x
  always @(posedge clk or posedge reset)
    begin : stimuli_x
      if (reset) begin
        holdData_x <= 16'bx;
      end
      else begin
        holdData_x <= rawData_x;
      end
    end

  always @(rawData_x or rdEnb)
    begin : stimuli_x_1
      if (rdEnb == 1'b0) begin
        x_offset <= holdData_x;
      end
      else begin
        x_offset <= rawData_x;
      end
    end

  assign #2 x_1 = x_offset;

  assign snkDonen =  ~ check1_done;



  assign resetn =  ~ reset;



  assign tb_enb = resetn & snkDonen;



  // Delay inside enable generation: register depth 1
  always @(posedge clk or posedge reset)
    begin : u_enable_delay
      if (reset) begin
        tb_enb_delay <= 0;
      end
      else begin
        tb_enb_delay <= tb_enb;
      end
    end

  assign rdEnb = (check1_done == 1'b0 ? tb_enb_delay :
              1'b0);



  assign #2 clk_enable = rdEnb;

  initial
    begin : reset_gen
      reset <= 1'b1;
      # (20);
      @ (posedge clk)
      # (2);
      reset <= 1'b0;
    end

  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 50
  always 
    begin : clk_gen
      clk <= 1'b1;
      # (5);
      clk <= 1'b0;
      # (5);
      if (check1_done == 1'b1) begin
        clk <= 1'b1;
        # (5);
        clk <= 1'b0;
        # (5);
        $stop;
      end
    end

  Subsystem u_Subsystem (.clk(clk),
                         .reset(reset),
                         .clk_enable(clk_enable),
                         .x(x_1),  // int16
                         .ce_out(ce_out),
                         .y(y)  // int16
                         );

  assign y_enb = ce_out & y_active;



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 50
  always @(posedge clk or posedge reset)
    begin : c_2_process
      if (reset == 1'b1) begin
        y_addr <= 6'b000000;
      end
      else begin
        if (y_enb) begin
          if (y_addr >= 6'b110010) begin
            y_addr <= 6'b000000;
          end
          else begin
            y_addr <= y_addr + 6'b000001;
          end
        end
      end
    end



  assign y_lastAddr = y_addr >= 6'b110010;



  assign y_done = y_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_1
      if (reset) begin
        check1_done <= 0;
      end
      else begin
        if (y_done_enb) begin
          check1_done <= y_done;
        end
      end
    end

  // Data source for y_expected
  assign y_expected_1 = 16'sb0000000000000000;



  assign y_ref = y_expected_1;

  always @(posedge clk or posedge reset)
    begin : y_checker
      if (reset == 1'b1) begin
        y_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && y !== y_ref) begin
          y_testFailure <= 1'b1;
          $display("ERROR in y at time %t : Expected '%h' Actual '%h'", $time, y_ref, y);
        end
      end
    end

  assign testFailure = y_testFailure;

  always @(posedge clk)
    begin : completed_msg
      if (check1_done == 1'b1) begin
        if (testFailure == 1'b0) begin
          $display("**************TEST COMPLETED (PASSED)**************");
        end
        else begin
          $display("**************TEST COMPLETED (FAILED)**************");
        end
      end
    end

endmodule  // Subsystem_tb


