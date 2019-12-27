
//------> ./rtl_mgc_ioport.v 
//------------------------------------------------------------------
//                M G C _ I O P O R T _ C O M P S
//------------------------------------------------------------------

//------------------------------------------------------------------
//                       M O D U L E S
//------------------------------------------------------------------

//------------------------------------------------------------------
//-- INPUT ENTITIES
//------------------------------------------------------------------

module mgc_in_wire (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] d;
  input  [width-1:0] z;

  wire   [width-1:0] d;

  assign d = z;

endmodule

//------------------------------------------------------------------

module mgc_in_wire_en (ld, d, lz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output [width-1:0] d;
  output             lz;
  input  [width-1:0] z;

  wire   [width-1:0] d;
  wire               lz;

  assign d = z;
  assign lz = ld;

endmodule

//------------------------------------------------------------------

module mgc_in_wire_wait (ld, vd, d, lz, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output             vd;
  output [width-1:0] d;
  output             lz;
  input              vz;
  input  [width-1:0] z;

  wire               vd;
  wire   [width-1:0] d;
  wire               lz;

  assign d = z;
  assign lz = ld;
  assign vd = vz;

endmodule
//------------------------------------------------------------------

module mgc_chan_in (ld, vd, d, lz, vz, z, size, req_size, sizez, sizelz);

  parameter integer rscid = 1;
  parameter integer width = 8;
  parameter integer sz_width = 8;

  input              ld;
  output             vd;
  output [width-1:0] d;
  output             lz;
  input              vz;
  input  [width-1:0] z;
  output [sz_width-1:0] size;
  input              req_size;
  input  [sz_width-1:0] sizez;
  output             sizelz;


  wire               vd;
  wire   [width-1:0] d;
  wire               lz;
  wire   [sz_width-1:0] size;
  wire               sizelz;

  assign d = z;
  assign lz = ld;
  assign vd = vz;
  assign size = sizez;
  assign sizelz = req_size;

endmodule


//------------------------------------------------------------------
//-- OUTPUT ENTITIES
//------------------------------------------------------------------

module mgc_out_stdreg (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input    [width-1:0] d;
  output   [width-1:0] z;

  wire     [width-1:0] z;

  assign z = d;

endmodule

//------------------------------------------------------------------

module mgc_out_stdreg_en (ld, d, lz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  input  [width-1:0] d;
  output             lz;
  output [width-1:0] z;

  wire               lz;
  wire   [width-1:0] z;

  assign z = d;
  assign lz = ld;

endmodule

//------------------------------------------------------------------

module mgc_out_stdreg_wait (ld, vd, d, lz, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output             vd;
  input  [width-1:0] d;
  output             lz;
  input              vz;
  output [width-1:0] z;

  wire               vd;
  wire               lz;
  wire   [width-1:0] z;

  assign z = d;
  assign lz = ld;
  assign vd = vz;

endmodule

//------------------------------------------------------------------

module mgc_out_prereg_en (ld, d, lz, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    wire               lz;
    wire   [width-1:0] z;

    assign z = d;
    assign lz = ld;

endmodule

//------------------------------------------------------------------
//-- INOUT ENTITIES
//------------------------------------------------------------------

module mgc_inout_stdreg_en (ldin, din, ldout, dout, lzin, lzout, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ldin;
    output [width-1:0] din;
    input              ldout;
    input  [width-1:0] dout;
    output             lzin;
    output             lzout;
    inout  [width-1:0] z;

    wire   [width-1:0] din;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = ldout;
    assign z = ldout ? dout : {width{1'bz}};

endmodule

//------------------------------------------------------------------
module hid_tribuf( I_SIG, ENABLE, O_SIG);
  parameter integer width = 8;

  input [width-1:0] I_SIG;
  input ENABLE;
  inout [width-1:0] O_SIG;

  assign O_SIG = (ENABLE) ? I_SIG : { width{1'bz}};

endmodule
//------------------------------------------------------------------

module mgc_inout_stdreg_wait (ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;
    wire   ldout_and_vzout;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = ldout;
    assign vdout = vzout ;
    assign ldout_and_vzout = ldout && vzout ;

    hid_tribuf #(width) tb( .I_SIG(dout),
                            .ENABLE(ldout_and_vzout),
                            .O_SIG(z) );

endmodule

//------------------------------------------------------------------

module mgc_inout_buf_wait (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter         ph_clk  =  1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   =  1'b1; // clock enable polarity
    parameter         ph_arst =  1'b1; // async reset polarity
    parameter         ph_srst =  1'b1; // sync reset polarity

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               lzout_buf;
    wire               vzout_buf;
    wire   [width-1:0] z_buf;
    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = lzout_buf & ~ldin;
    assign vzout_buf = vzout & ~ldin;
    hid_tribuf #(width) tb( .I_SIG(z_buf),
                            .ENABLE((lzout_buf && (!ldin) && vzout) ),
                            .O_SIG(z)  );

    mgc_out_buf_wait
    #(
        .rscid   (rscid),
        .width   (width),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    BUFF
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (lzout_buf),
        .vz      (vzout_buf),
        .z       (z_buf)
    );


endmodule

module mgc_inout_fifo_wait (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  = 1'b1;  // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1;  // clock enable polarity
    parameter         ph_arst = 1'b1;  // async reset polarity
    parameter         ph_srst = 1'b1;  // sync reset polarity
    parameter integer ph_log2 = 3;     // log2(fifo_sz)
    parameter integer pwropt  = 0;     // pwropt

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               lzout_buf;
    wire               vzout_buf;
    wire   [width-1:0] z_buf;
    wire               comb;
    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = lzout_buf & ~ldin;
    assign vzout_buf = vzout & ~ldin;
    assign comb = (lzout_buf && (!ldin) && vzout);

    hid_tribuf #(width) tb2( .I_SIG(z_buf), .ENABLE(comb), .O_SIG(z)  );

    mgc_out_fifo_wait
    #(
        .rscid   (rscid),
        .width   (width),
        .fifo_sz (fifo_sz),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .ph_log2 (ph_log2),
        .pwropt  (pwropt)
    )
    FIFO
    (
        .clk   (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (lzout_buf),
        .vz      (vzout_buf),
        .z       (z_buf)
    );

endmodule

//------------------------------------------------------------------
//-- I/O SYNCHRONIZATION ENTITIES
//------------------------------------------------------------------

module mgc_io_sync (ld, lz);

    input  ld;
    output lz;

    assign lz = ld;

endmodule

module mgc_bsync_rdy (rd, rz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 1;
    parameter valid = 0;

    input  rd;
    output rz;

    wire   rz;

    assign rz = rd;

endmodule

module mgc_bsync_vld (vd, vz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 0;
    parameter valid = 1;

    output vd;
    input  vz;

    wire   vd;

    assign vd = vz;

endmodule

module mgc_bsync_rv (rd, vd, rz, vz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 1;
    parameter valid = 1;

    input  rd;
    output vd;
    output rz;
    input  vz;

    wire   vd;
    wire   rz;

    assign rz = rd;
    assign vd = vz;

endmodule

//------------------------------------------------------------------

module mgc_sync (ldin, vdin, ldout, vdout);

  input  ldin;
  output vdin;
  input  ldout;
  output vdout;

  wire   vdin;
  wire   vdout;

  assign vdin = ldout;
  assign vdout = ldin;

endmodule

///////////////////////////////////////////////////////////////////////////////
// dummy function used to preserve funccalls for modulario
// it looks like a memory read to the caller
///////////////////////////////////////////////////////////////////////////////
module funccall_inout (d, ad, bd, z, az, bz);

  parameter integer ram_id = 1;
  parameter integer width = 8;
  parameter integer addr_width = 8;

  output [width-1:0]       d;
  input  [addr_width-1:0]  ad;
  input                    bd;
  input  [width-1:0]       z;
  output [addr_width-1:0]  az;
  output                   bz;

  wire   [width-1:0]       d;
  wire   [addr_width-1:0]  az;
  wire                     bz;

  assign d  = z;
  assign az = ad;
  assign bz = bd;

endmodule


///////////////////////////////////////////////////////////////////////////////
// inlinable modular io not otherwise found in mgc_ioport
///////////////////////////////////////////////////////////////////////////////

module modulario_en_in (vd, d, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output             vd;
  output [width-1:0] d;
  input              vz;
  input  [width-1:0] z;

  wire   [width-1:0] d;
  wire               vd;

  assign d = z;
  assign vd = vz;

endmodule

//------> ./rtl_mgc_ioport_v2001.v 
//------------------------------------------------------------------

module mgc_out_reg_pos (clk, en, arst, srst, ld, d, lz, z);

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    reg                lz;
    reg    [width-1:0] z;

    generate
    if (ph_arst == 1'b0)
    begin: NEG_ARST
        always @(posedge clk or negedge arst)
        if (arst == 1'b0)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    else
    begin: POS_ARST
        always @(posedge clk or posedge arst)
        if (arst == 1'b1)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    endgenerate

endmodule

//------------------------------------------------------------------

module mgc_out_reg_neg (clk, en, arst, srst, ld, d, lz, z);

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    reg                lz;
    reg    [width-1:0] z;

    generate
    if (ph_arst == 1'b0)
    begin: NEG_ARST
        always @(negedge clk or negedge arst)
        if (arst == 1'b0)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    else
    begin: POS_ARST
        always @(negedge clk or posedge arst)
        if (arst == 1'b1)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    endgenerate

endmodule

//------------------------------------------------------------------

module mgc_out_reg (clk, en, arst, srst, ld, d, lz, z); // Not Supported

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_clk  =  1'b1;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;


    generate
    if (ph_clk == 1'b0)
    begin: NEG_EDGE

        mgc_out_reg_neg
        #(
            .rscid   (rscid),
            .width   (width),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        mgc_out_reg_neg_inst
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (ld),
            .d       (d),
            .lz      (lz),
            .z       (z)
        );

    end
    else
    begin: POS_EDGE

        mgc_out_reg_pos
        #(
            .rscid   (rscid),
            .width   (width),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        mgc_out_reg_pos_inst
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (ld),
            .d       (d),
            .lz      (lz),
            .z       (z)
        );

    end
    endgenerate

endmodule




//------------------------------------------------------------------

module mgc_out_buf_wait (clk, en, arst, srst, ld, vd, d, vz, lz, z); // Not supported

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_clk  =  1'b1;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    output             vd;
    input  [width-1:0] d;
    output             lz;
    input              vz;
    output [width-1:0] z;

    wire               filled;
    wire               filled_next;
    wire   [width-1:0] abuf;
    wire               lbuf;


    assign filled_next = (filled & (~vz)) | (filled & ld) | (ld & (~vz));

    assign lbuf = ld & ~(filled ^ vz);

    assign vd = vz | ~filled;

    assign lz = ld | filled;

    assign z = (filled) ? abuf : d;

    wire dummy;
    wire dummy_bufreg_lz;

    // Output registers:
    mgc_out_reg
    #(
        .rscid   (rscid),
        .width   (1'b1),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    STATREG
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (filled_next),
        .d       (1'b0),       // input d is unused
        .lz      (filled),
        .z       (dummy)            // output z is unused
    );

    mgc_out_reg
    #(
        .rscid   (rscid),
        .width   (width),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    BUFREG
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (lbuf),
        .d       (d),
        .lz      (dummy_bufreg_lz),
        .z       (abuf)
    );

endmodule

//------------------------------------------------------------------

module mgc_out_fifo_wait (clk, en, arst, srst, ld, vd, d, lz, vz,  z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  = 1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1; // clock enable polarity
    parameter         ph_arst = 1'b1; // async reset polarity
    parameter         ph_srst = 1'b1; // sync reset polarity
    parameter integer ph_log2 = 3; // log2(fifo_sz)
    parameter integer pwropt  = 0; // pwropt


    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 ld;    // load data
    output                vd;    // fifo full active low
    input     [width-1:0] d;
    output                lz;    // fifo ready to send
    input                 vz;    // dest ready for data
    output    [width-1:0] z;

    wire    [31:0]      size;


      // Output registers:
 mgc_out_fifo_wait_core#(
        .rscid   (rscid),
        .width   (width),
        .sz_width (32),
        .fifo_sz (fifo_sz),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .ph_log2 (ph_log2),
        .pwropt  (pwropt)
        ) CORE (
        .clk (clk),
        .en (en),
        .arst (arst),
        .srst (srst),
        .ld (ld),
        .vd (vd),
        .d (d),
        .lz (lz),
        .vz (vz),
        .z (z),
        .size (size)
        );

endmodule



module mgc_out_fifo_wait_core (clk, en, arst, srst, ld, vd, d, lz, vz,  z, size);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer sz_width = 8; // size of port for elements in fifo
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  =  1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   =  1'b1; // clock enable polarity
    parameter         ph_arst =  1'b1; // async reset polarity
    parameter         ph_srst =  1'b1; // sync reset polarity
    parameter integer ph_log2 = 3; // log2(fifo_sz)
    parameter integer pwropt  = 0; // pwropt

   localparam integer  fifo_b = width * fifo_sz;

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 ld;    // load data
    output                vd;    // fifo full active low
    input     [width-1:0] d;
    output                lz;    // fifo ready to send
    input                 vz;    // dest ready for data
    output    [width-1:0] z;
    output    [sz_width-1:0]      size;

    reg      [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] stat_pre;
    wire     [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] en_l;
    reg      [(((fifo_sz > 0) ? fifo_sz : 1)-1)/8:0] en_l_s;

    reg       [width-1:0] buff_nxt;

    reg                   stat_nxt;
    reg                   stat_before;
    reg                   stat_after;
    reg                   en_l_var;

    integer               i;
    genvar                eni;

    integer               count;
    integer               count_t;
    integer               n_elem;
// pragma translate_off
    integer               peak;
// pragma translate_on

    wire [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] dummy_statreg_lz;
    wire [( (fifo_b > 0) ? fifo_b : 1)-1:0] dummy_bufreg_lz;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
      assign vd = vz | ~stat[0];
      assign lz = ld | stat[fifo_sz-1];
      assign size = (count - (vz && stat[fifo_sz-1])) + ld;
      assign z = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : d;

      always @(*)
      begin: FIFOPROC
        n_elem = 0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          if (i != 0)
            stat_before = stat[i-1];
          else
            stat_before = 1'b0;

          if (i != (fifo_sz-1))
            stat_after = stat[i+1];
          else
            stat_after = 1'b1;

          stat_nxt = stat_after &
                    (stat_before | (stat[i] & (~vz)) | (stat[i] & ld) | (ld & (~vz)));

          stat_pre[i] = stat_nxt;
          en_l_var = 1'b1;
          if (!stat_nxt)
            begin
              buff_nxt = {width{1'b0}};
              en_l_var = 1'b0;
            end
          else if (vz && stat_before)
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
          else if (ld && !((vz && stat_before) || ((!vz) && stat[i])))
            buff_nxt = d;
          else
            begin
              if (pwropt == 0)
                buff_nxt[0+:width] = buff[width*i+:width];
              else
                buff_nxt = {width{1'b0}};
              en_l_var = 1'b0;
            end

          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          buff_pre[width*i+:width] = buff_nxt[0+:width];

          if ((stat_after == 1'b1) && (stat[i] == 1'b0))
            n_elem = (fifo_sz - 1) - i;
        end

        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = 1'b1;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = 1'b0;

        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if ((i%2) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]|stat_pre[i-1]);
            else
              en_l_s[(i/8)-1] = en | ~(stat[i]|stat_pre[i-1]);
          end
        end

        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 0;
        else if ( stat[0] == 1'b1 )
          count_t = fifo_sz;
        else
          count_t = n_elem;
        count = count_t;
// pragma translate_off
        if ( peak < count )
          peak = count;
// pragma translate_on
      end

      if (pwropt == 0)
      begin: NOCGFIFO
        // Output registers:
        mgc_out_reg
        #(
            .rscid   (rscid),
            .width   (fifo_sz),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        STATREG
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (stat_pre),
            .lz      (dummy_statreg_lz[0]),
            .z       (stat)
        );
        mgc_out_reg
        #(
            .rscid   (rscid),
            .width   (fifo_b),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        BUFREG
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (buff_pre),
            .lz      (dummy_bufreg_lz[0]),
            .z       (buff)
        );
      end
      else
      begin: CGFIFO
        // Output registers:
        if ( pwropt > 1)
        begin: CGSTATFIFO2
          for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
          begin: pwroptGEN1
            mgc_out_reg
            #(
              .rscid   (rscid),
              .width   (1),
              .ph_clk  (ph_clk),
              .ph_en   (ph_en),
              .ph_arst (ph_arst),
              .ph_srst (ph_srst)
            )
            STATREG
            (
              .clk     (clk),
              .en      (en_l_s[eni/8]),
              .arst    (arst),
              .srst    (srst),
              .ld      (1'b1),
              .d       (stat_pre[eni]),
              .lz      (dummy_statreg_lz[eni]),
              .z       (stat[eni])
            );
          end
        end
        else
        begin: CGSTATFIFO
          mgc_out_reg
          #(
            .rscid   (rscid),
            .width   (fifo_sz),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
          )
          STATREG
          (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (stat_pre),
            .lz      (dummy_statreg_lz[0]),
            .z       (stat)
          );
        end
        for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
        begin: pwroptGEN2
          mgc_out_reg
          #(
            .rscid   (rscid),
            .width   (width),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
          )
          BUFREG
          (
            .clk     (clk),
            .en      (en_l[eni]),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (buff_pre[width*eni+:width]),
            .lz      (dummy_bufreg_lz[width*eni+:width]),
            .z       (buff[width*eni+:width])
          );
        end
      end
    end
    else
    begin: FEED_THRU
      assign vd = vz;
      assign lz = ld;
      assign z = d;
      assign size = ld && !vz;
    end
    endgenerate

endmodule

//------------------------------------------------------------------
//-- PIPE ENTITIES
//------------------------------------------------------------------
/*
 *
 *             _______________________________________________
 * WRITER    |                                               |          READER
 *           |           MGC_PIPE                            |
 *           |           __________________________          |
 *        --<| vdout  --<| vd ---------------  vz<|-----ldin<|---
 *           |           |      FIFO              |          |
 *        ---|>ldout  ---|>ld ---------------- lz |> ---vdin |>--
 *        ---|>dout -----|>d  ---------------- dz |> ----din |>--
 *           |           |________________________|          |
 *           |_______________________________________________|
 */
// two clock pipe
module mgc_pipe (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, size, req_size);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz = 8; // fifo depth
    parameter integer log2_sz = 3; // log2(fifo_sz)
    parameter         ph_clk  = 1'b1;  // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1;  // clock enable polarity
    parameter         ph_arst = 1'b1;  // async reset polarity
    parameter         ph_srst = 1'b1;  // sync reset polarity
    parameter integer pwropt  = 0; // pwropt

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output [sz_width-1:0]      size;
    input              req_size;


    mgc_out_fifo_wait_core
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz),
        .pwropt   (pwropt)
    )
    FIFO
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (vdin),
        .vz      (ldin),
        .z       (din),
        .size    (size)
    );

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.41 Production Release
//  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
// 
//  Generated by:   ss@DESKTOP-UB05SU4
//  Generated date: Fri Apr 19 10:04:40 2019
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Convolotion_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module Convolotion_core_fsm (
  clk, rst, core_wen, fsm_output, st_for_for_for_for_1_tr0, st_for_for_for_tr0, st_for_for_tr0,
      st_for_tr0
);
  input clk;
  input rst;
  input core_wen;
  output [7:0] fsm_output;
  reg [7:0] fsm_output;
  input st_for_for_for_for_1_tr0;
  input st_for_for_for_tr0;
  input st_for_for_tr0;
  input st_for_tr0;


  // FSM State Type Declaration for Convolotion_core_fsm_1
  parameter
    st_main = 3'd0,
    st_main_1 = 3'd1,
    st_for_for_for_for = 3'd2,
    st_for_for_for_for_1 = 3'd3,
    st_for_for_for = 3'd4,
    st_for_for = 3'd5,
    st_for = 3'd6,
    st_main_2 = 3'd7,
    state_x = 3'b000;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;

  always @(st_for_for_for_for_1_tr0 or st_for_for_for_tr0 or st_for_for_tr0 or st_for_tr0
      or state_var)
  begin : Convolotion_core_fsm_1
    case (state_var)
      st_main : begin
        fsm_output = 8'b1;
        state_var_NS = st_main_1;
      end
      st_main_1 : begin
        fsm_output = 8'b10;
        state_var_NS = st_for_for_for_for;
      end
      st_for_for_for_for : begin
        fsm_output = 8'b100;
        state_var_NS = st_for_for_for_for_1;
      end
      st_for_for_for_for_1 : begin
        fsm_output = 8'b1000;
        if ( st_for_for_for_for_1_tr0 ) begin
          state_var_NS = st_for_for_for;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      st_for_for_for : begin
        fsm_output = 8'b10000;
        if ( st_for_for_for_tr0 ) begin
          state_var_NS = st_for_for;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      st_for_for : begin
        fsm_output = 8'b100000;
        if ( st_for_for_tr0 ) begin
          state_var_NS = st_for;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      st_for : begin
        fsm_output = 8'b1000000;
        if ( st_for_tr0 ) begin
          state_var_NS = st_main_2;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      st_main_2 : begin
        fsm_output = 8'b10000000;
        state_var_NS = st_main;
      end
      default : begin
        fsm_output = 8'b00000000;
        state_var_NS = st_main;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= st_main;
    end
    else if ( core_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    Convolotion_core_wait_ctrl
// ------------------------------------------------------------------


module Convolotion_core_wait_ctrl (
  clk, rst, core_wen, in_rsc_singleport_re_core_sct, out_rsc_singleport_we_core_sct,
      mgc_start_sync_mgc_bsync_rv_rd_core_sct, mgc_start_sync_mgc_bsync_rv_vd, mgc_done_sync_mgc_bsync_rdy_rd_core_sct,
      in_rsc_singleport_oswt_1, in_rsc_singleport_bcwt_1, out_rsc_singleport_oswt,
      mgc_start_sync_mgc_bsync_rv_rd_core_psct, mgc_done_sync_mgc_bsync_rdy_rd_core_psct,
      in_rsc_singleport_oswt_1_pff, out_rsc_singleport_oswt_pff
);
  input clk;
  input rst;
  output core_wen;
  output in_rsc_singleport_re_core_sct;
  output out_rsc_singleport_we_core_sct;
  output mgc_start_sync_mgc_bsync_rv_rd_core_sct;
  input mgc_start_sync_mgc_bsync_rv_vd;
  output mgc_done_sync_mgc_bsync_rdy_rd_core_sct;
  input in_rsc_singleport_oswt_1;
  output in_rsc_singleport_bcwt_1;
  reg in_rsc_singleport_bcwt_1;
  input out_rsc_singleport_oswt;
  input mgc_start_sync_mgc_bsync_rv_rd_core_psct;
  input mgc_done_sync_mgc_bsync_rdy_rd_core_psct;
  input in_rsc_singleport_oswt_1_pff;
  input out_rsc_singleport_oswt_pff;


  // Interconnect Declarations
  wire in_rsc_singleport_tiswt0_1;
  wire in_rsc_singleport_biwt_1;
  reg in_rsc_singleport_icwt_1;
  reg core_wten;
  wire out_rsc_singleport_tiswt0;
  wire out_rsc_singleport_biwt;
  reg out_rsc_singleport_icwt;
  reg out_rsc_singleport_bcwt;
  wire mgc_start_sync_mgc_bsync_rv_ogwt;
  wire mgc_start_sync_mgc_bsync_rv_pdswt0;
  wire mgc_start_sync_mgc_bsync_rv_biwt;
  reg mgc_start_sync_mgc_bsync_rv_icwt;
  reg mgc_start_sync_mgc_bsync_rv_bcwt;
  wire mgc_done_sync_mgc_bsync_rdy_ogwt;
  wire mgc_done_sync_mgc_bsync_rdy_pdswt0;
  reg mgc_done_sync_mgc_bsync_rdy_icwt;
  reg mgc_done_sync_mgc_bsync_rdy_bcwt;

  assign in_rsc_singleport_tiswt0_1 = (~ core_wten) & in_rsc_singleport_oswt_1;
  assign in_rsc_singleport_biwt_1 = in_rsc_singleport_tiswt0_1 | in_rsc_singleport_icwt_1;
  assign out_rsc_singleport_tiswt0 = (~ core_wten) & out_rsc_singleport_oswt;
  assign out_rsc_singleport_biwt = out_rsc_singleport_tiswt0 | out_rsc_singleport_icwt;
  assign mgc_start_sync_mgc_bsync_rv_pdswt0 = (~ core_wten) & mgc_start_sync_mgc_bsync_rv_rd_core_psct;
  assign mgc_start_sync_mgc_bsync_rv_biwt = mgc_start_sync_mgc_bsync_rv_ogwt & mgc_start_sync_mgc_bsync_rv_vd;
  assign mgc_start_sync_mgc_bsync_rv_ogwt = mgc_start_sync_mgc_bsync_rv_pdswt0 |
      mgc_start_sync_mgc_bsync_rv_icwt;
  assign mgc_start_sync_mgc_bsync_rv_rd_core_sct = mgc_start_sync_mgc_bsync_rv_rd_core_psct
      & mgc_start_sync_mgc_bsync_rv_ogwt;
  assign mgc_done_sync_mgc_bsync_rdy_pdswt0 = (~ core_wten) & mgc_done_sync_mgc_bsync_rdy_rd_core_psct;
  assign mgc_done_sync_mgc_bsync_rdy_ogwt = mgc_done_sync_mgc_bsync_rdy_pdswt0 |
      mgc_done_sync_mgc_bsync_rdy_icwt;
  assign mgc_done_sync_mgc_bsync_rdy_rd_core_sct = mgc_done_sync_mgc_bsync_rdy_rd_core_psct
      & mgc_done_sync_mgc_bsync_rdy_ogwt;
  assign core_wen = ((~ in_rsc_singleport_oswt_1) | in_rsc_singleport_biwt_1 | in_rsc_singleport_bcwt_1)
      & ((~ out_rsc_singleport_oswt) | out_rsc_singleport_biwt | out_rsc_singleport_bcwt)
      & ((~ mgc_start_sync_mgc_bsync_rv_rd_core_psct) | mgc_start_sync_mgc_bsync_rv_biwt
      | mgc_start_sync_mgc_bsync_rv_bcwt) & ((~ mgc_done_sync_mgc_bsync_rdy_rd_core_psct)
      | mgc_done_sync_mgc_bsync_rdy_ogwt | mgc_done_sync_mgc_bsync_rdy_bcwt);
  assign in_rsc_singleport_re_core_sct = in_rsc_singleport_oswt_1_pff & core_wen;
  assign out_rsc_singleport_we_core_sct = out_rsc_singleport_oswt_pff & core_wen;
  always @(posedge clk) begin
    if ( rst ) begin
      in_rsc_singleport_icwt_1 <= 1'b0;
      in_rsc_singleport_bcwt_1 <= 1'b0;
      out_rsc_singleport_icwt <= 1'b0;
      out_rsc_singleport_bcwt <= 1'b0;
      mgc_start_sync_mgc_bsync_rv_icwt <= 1'b0;
      mgc_start_sync_mgc_bsync_rv_bcwt <= 1'b0;
      mgc_done_sync_mgc_bsync_rdy_icwt <= 1'b0;
      mgc_done_sync_mgc_bsync_rdy_bcwt <= 1'b0;
      core_wten <= 1'b0;
    end
    else begin
      in_rsc_singleport_icwt_1 <= in_rsc_singleport_icwt_1 ^ in_rsc_singleport_tiswt0_1
          ^ in_rsc_singleport_biwt_1;
      in_rsc_singleport_bcwt_1 <= in_rsc_singleport_bcwt_1 ^ in_rsc_singleport_biwt_1
          ^ (in_rsc_singleport_oswt_1 & core_wen);
      out_rsc_singleport_icwt <= out_rsc_singleport_icwt ^ out_rsc_singleport_tiswt0
          ^ out_rsc_singleport_biwt;
      out_rsc_singleport_bcwt <= out_rsc_singleport_bcwt ^ out_rsc_singleport_biwt
          ^ (out_rsc_singleport_oswt & core_wen);
      mgc_start_sync_mgc_bsync_rv_icwt <= mgc_start_sync_mgc_bsync_rv_icwt ^ mgc_start_sync_mgc_bsync_rv_pdswt0
          ^ mgc_start_sync_mgc_bsync_rv_biwt;
      mgc_start_sync_mgc_bsync_rv_bcwt <= mgc_start_sync_mgc_bsync_rv_bcwt ^ mgc_start_sync_mgc_bsync_rv_biwt
          ^ (mgc_start_sync_mgc_bsync_rv_rd_core_psct & core_wen);
      mgc_done_sync_mgc_bsync_rdy_icwt <= mgc_done_sync_mgc_bsync_rdy_icwt ^ mgc_done_sync_mgc_bsync_rdy_pdswt0
          ^ mgc_done_sync_mgc_bsync_rdy_ogwt;
      mgc_done_sync_mgc_bsync_rdy_bcwt <= mgc_done_sync_mgc_bsync_rdy_bcwt ^ mgc_done_sync_mgc_bsync_rdy_ogwt
          ^ (mgc_done_sync_mgc_bsync_rdy_rd_core_psct & core_wen);
      core_wten <= ~ core_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Convolotion_core
// ------------------------------------------------------------------


module Convolotion_core (
  clk, rst, in_rsc_singleport_data_out, in_rsc_singleport_addr_core, in_rsc_singleport_re_core_sct,
      out_rsc_singleport_data_in_core, out_rsc_singleport_addr_core, out_rsc_singleport_we_core_sct,
      mgc_start_sync_mgc_bsync_rv_rd_core_sct, mgc_start_sync_mgc_bsync_rv_vd, mgc_done_sync_mgc_bsync_rdy_rd_core_sct
);
  input clk;
  input rst;
  input [7:0] in_rsc_singleport_data_out;
  output [17:0] in_rsc_singleport_addr_core;
  output in_rsc_singleport_re_core_sct;
  output [7:0] out_rsc_singleport_data_in_core;
  output [17:0] out_rsc_singleport_addr_core;
  output out_rsc_singleport_we_core_sct;
  output mgc_start_sync_mgc_bsync_rv_rd_core_sct;
  input mgc_start_sync_mgc_bsync_rv_vd;
  output mgc_done_sync_mgc_bsync_rdy_rd_core_sct;


  // Interconnect Declarations
  wire in_rsc_singleport_bcwt_1;
  wire [7:0] in_rsc_singleport_data_out_mxwt;
  reg [7:0] in_rsc_singleport_data_out_bfwt;
  wire core_wen;
  wire [7:0] fsm_output;
  wire or_dcpl_18;
  wire or_dcpl_21;
  wire and_dcpl_14;
  reg [1:0] Kcolumn_1_sva;
  reg [5:0] Result_sg1_lpi_4_reg;
  reg Result_1_lpi_4_reg;
  reg Result_sg2_lpi_4_reg;
  reg [1:0] Krow_1_reg;
  reg for_for_for_for_lor_lpi_4_dfm_st;
  reg [1:0] for_for_for_for_else_mux_itm;
  reg for_for_for_for_else_mux_1_itm;
  reg for_for_for_for_slc_itm;
  reg [8:0] Dcolumn_1_sva_2;
  reg [8:0] Drow_1_sva_2;
  wire or_28_cse;
  wire or_30_cse;
  reg reg_done_sync_mgc_bsync_rdy_iswt0_cse;
  reg reg_start_sync_mgc_bsync_rv_iswt0_cse;
  reg reg_out_rsc_singleport_we_core_psct_cse;
  reg reg_in_rsc_singleport_re_core_psct_cse;
  wire in_rsc_singleport_re_core_sct_reg;
  wire and_12_rmff;
  wire out_rsc_singleport_we_core_sct_reg;
  wire and_8_rmff;
  wire [1:0] for_for_for_for_oelse_2_acc_itm;
  wire [2:0] xfor_for_for_for_oelse_2_acc_itm;
  wire [1:0] z_out;
  wire [2:0] xz_out;
  wire [1:0] z_out_1;
  wire [2:0] xz_out_1;
  wire [10:0] z_out_2;
  wire [11:0] xz_out_2;
  wire [10:0] z_out_3;
  wire [11:0] xz_out_3;
  wire [2:0] for_for_for_for_else_acc_6_sdt;
  wire [3:0] xfor_for_for_for_else_acc_6_sdt;
  wire [7:0] for_for_for_for_else_ac_fixed_cctor_sva;
  wire [8:0] slc_sat_sva;
  wire [9:0] xslc_sat_sva;
  wire nor_3_cse;
  wire [2:0] for_for_for_for_else_acc_7_itm;
  wire [3:0] xfor_for_for_for_else_acc_7_itm;

  wire[1:0] mux_12_nl;
  wire[1:0] mux_9_nl;
  wire[1:0] mux_11_nl;
  Convolotion_core_wait_ctrl Convolotion_core_wait_ctrl_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .in_rsc_singleport_re_core_sct(in_rsc_singleport_re_core_sct_reg),
      .out_rsc_singleport_we_core_sct(out_rsc_singleport_we_core_sct_reg),
      .mgc_start_sync_mgc_bsync_rv_rd_core_sct(mgc_start_sync_mgc_bsync_rv_rd_core_sct),
      .mgc_start_sync_mgc_bsync_rv_vd(mgc_start_sync_mgc_bsync_rv_vd),
      .mgc_done_sync_mgc_bsync_rdy_rd_core_sct(mgc_done_sync_mgc_bsync_rdy_rd_core_sct),
      .in_rsc_singleport_oswt_1(reg_in_rsc_singleport_re_core_psct_cse),
      .in_rsc_singleport_bcwt_1(in_rsc_singleport_bcwt_1),
      .out_rsc_singleport_oswt(reg_out_rsc_singleport_we_core_psct_cse),
      .mgc_start_sync_mgc_bsync_rv_rd_core_psct(reg_start_sync_mgc_bsync_rv_iswt0_cse),
      .mgc_done_sync_mgc_bsync_rdy_rd_core_psct(reg_done_sync_mgc_bsync_rdy_iswt0_cse),
      .in_rsc_singleport_oswt_1_pff(and_12_rmff),
      .out_rsc_singleport_oswt_pff(and_8_rmff)
    );
  Convolotion_core_fsm Convolotion_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .fsm_output(fsm_output),
      .st_for_for_for_for_1_tr0((~ for_for_for_for_slc_itm)),
      .st_for_for_for_tr0((~ (z_out_1[1]))),
      .st_for_for_tr0((z_out_2[9])),
      .st_for_tr0((z_out_3[9]))
    );
  assign in_rsc_singleport_data_out_mxwt = MUX_v_8_2_2({in_rsc_singleport_data_out
      , in_rsc_singleport_data_out_bfwt}, in_rsc_singleport_bcwt_1);
  assign nor_3_cse = ~((fsm_output[1]) | (fsm_output[6]));
  assign and_8_rmff = (fsm_output[4]) & (~ (z_out_1[1]));
  assign and_12_rmff = (~((z_out_3[9]) | (z_out_3[10]) | (z_out_2[10]))) & (~ (for_for_for_for_oelse_2_acc_itm[1]))
      & (fsm_output[2]);
  assign xfor_for_for_for_else_acc_6_sdt = conv_u2u_2_3(Krow_1_reg) + conv_u2u_2_3(Kcolumn_1_sva);
  assign for_for_for_for_else_acc_6_sdt = xfor_for_for_for_else_acc_6_sdt[2:0];
  assign xfor_for_for_for_oelse_2_acc_itm = (~ (z_out_2[10:9])) + 2'b1;
  assign for_for_for_for_oelse_2_acc_itm = xfor_for_for_for_oelse_2_acc_itm[1:0];
  assign xfor_for_for_for_else_acc_7_itm = conv_u2u_2_3(for_for_for_for_else_acc_6_sdt[2:1])
      + conv_u2u_2_3(Krow_1_reg);
  assign for_for_for_for_else_acc_7_itm = xfor_for_for_for_else_acc_7_itm[2:0];
  assign for_for_for_for_else_ac_fixed_cctor_sva = (slc_sat_sva[7:0]) | (signext_8_1(slc_sat_sva[8]));
  assign xslc_sat_sva = conv_u2u_8_9({Result_sg2_lpi_4_reg , Result_sg1_lpi_4_reg
      , Result_1_lpi_4_reg}) + conv_u2u_5_9(readslicef_12_5_7(conv_u2u_24_12(conv_u2u_8_12(in_rsc_singleport_data_out_mxwt)
      * conv_u2u_5_12({for_for_for_for_else_mux_itm , 1'b0 , ({{1{for_for_for_for_else_mux_1_itm}},
      for_for_for_for_else_mux_1_itm})}))));
  assign slc_sat_sva = xslc_sat_sva[8:0];
  assign or_dcpl_18 = (fsm_output[6]) | (fsm_output[4]);
  assign or_dcpl_21 = (fsm_output[5]) | (fsm_output[1]);
  assign or_28_cse = or_dcpl_21 | (fsm_output[6]);
  assign and_dcpl_14 = ~((fsm_output[5]) | (fsm_output[1]));
  assign or_30_cse = ((fsm_output[3]) & for_for_for_for_lor_lpi_4_dfm_st) | (fsm_output[4])
      | (fsm_output[2]);
  assign in_rsc_singleport_addr_core = {((z_out_2[8:0]) + conv_s2u_2_9(z_out_3[10:9]))
      , (z_out_3[8:0])};
  assign in_rsc_singleport_re_core_sct = in_rsc_singleport_re_core_sct_reg;
  assign out_rsc_singleport_data_in_core = {Result_sg2_lpi_4_reg , Result_sg1_lpi_4_reg
      , Result_1_lpi_4_reg};
  assign out_rsc_singleport_addr_core = {Drow_1_sva_2 , Dcolumn_1_sva_2};
  assign out_rsc_singleport_we_core_sct = out_rsc_singleport_we_core_sct_reg;
  always @(posedge clk) begin
    if ( rst ) begin
      in_rsc_singleport_data_out_bfwt <= 8'b0;
    end
    else begin
      in_rsc_singleport_data_out_bfwt <= in_rsc_singleport_data_out_mxwt;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      Dcolumn_1_sva_2 <= 9'b0;
      reg_done_sync_mgc_bsync_rdy_iswt0_cse <= 1'b0;
      reg_start_sync_mgc_bsync_rv_iswt0_cse <= 1'b0;
      reg_out_rsc_singleport_we_core_psct_cse <= 1'b0;
      reg_in_rsc_singleport_re_core_psct_cse <= 1'b0;
      Krow_1_reg <= 2'b0;
      Kcolumn_1_sva <= 2'b0;
      Result_1_lpi_4_reg <= 1'b0;
      Result_sg1_lpi_4_reg <= 6'b0;
      Result_sg2_lpi_4_reg <= 1'b0;
      Drow_1_sva_2 <= 9'b0;
      for_for_for_for_else_mux_1_itm <= 1'b0;
      for_for_for_for_else_mux_itm <= 2'b0;
      for_for_for_for_slc_itm <= 1'b0;
      for_for_for_for_lor_lpi_4_dfm_st <= 1'b0;
    end
    else if ( core_wen ) begin
      Dcolumn_1_sva_2 <= (MUX_v_9_2_2({(z_out_3[8:0]) , Dcolumn_1_sva_2}, nor_3_cse))
          & (signext_9_1(~ (fsm_output[1])));
      reg_done_sync_mgc_bsync_rdy_iswt0_cse <= (z_out_3[9]) & (fsm_output[6]);
      reg_start_sync_mgc_bsync_rv_iswt0_cse <= ~(or_dcpl_21 | (fsm_output[3]) | (fsm_output[7])
          | or_dcpl_18 | (fsm_output[2]));
      reg_out_rsc_singleport_we_core_psct_cse <= and_8_rmff;
      reg_in_rsc_singleport_re_core_psct_cse <= and_12_rmff;
      Krow_1_reg <= (MUX_v_2_2_2({z_out , Krow_1_reg}, fsm_output[3])) & (signext_2_1(~(or_dcpl_21
          | or_dcpl_18)));
      Kcolumn_1_sva <= (MUX_v_2_2_2({z_out , Kcolumn_1_sva}, and_dcpl_14 & (~((fsm_output[6])
          | (fsm_output[4]))))) & (signext_2_1(~ or_28_cse));
      Result_1_lpi_4_reg <= (MUX_s_1_2_2({(for_for_for_for_else_ac_fixed_cctor_sva[0])
          , Result_1_lpi_4_reg}, or_30_cse)) & (~ or_28_cse);
      Result_sg1_lpi_4_reg <= (MUX_v_6_2_2({(for_for_for_for_else_ac_fixed_cctor_sva[6:1])
          , Result_sg1_lpi_4_reg}, or_30_cse)) & (signext_6_1(~ or_28_cse));
      Result_sg2_lpi_4_reg <= (MUX_s_1_2_2({(for_for_for_for_else_ac_fixed_cctor_sva[7])
          , Result_sg2_lpi_4_reg}, or_30_cse)) & (~ or_28_cse);
      Drow_1_sva_2 <= (MUX_v_9_2_2({(z_out_2[8:0]) , Drow_1_sva_2}, and_dcpl_14 &
          (~ (fsm_output[6])))) & ({{8{nor_3_cse}}, nor_3_cse});
      for_for_for_for_else_mux_1_itm <= MUX_s_1_16_2({1'b0 , 1'b0 , 1'b0 , 1'b0 ,
          1'b1 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0
          , 1'b0}, {for_for_for_for_else_acc_7_itm , (for_for_for_for_else_acc_6_sdt[0])});
      for_for_for_for_else_mux_itm <= MUX_v_2_16_2({2'b1 , 2'b10 , 2'b1 , 2'b10 ,
          2'b0 , 2'b10 , 2'b1 , 2'b10 , 2'b1 , 2'b0 , 2'b0 , 2'b0 , 2'b0 , 2'b0 ,
          2'b0 , 2'b0}, {for_for_for_for_else_acc_7_itm , (for_for_for_for_else_acc_6_sdt[0])});
      for_for_for_for_slc_itm <= z_out_1[1];
      for_for_for_for_lor_lpi_4_dfm_st <= (for_for_for_for_oelse_2_acc_itm[1]) |
          (z_out_2[10]) | (z_out_3[9]) | (z_out_3[10]);
    end
  end
  assign mux_12_nl = MUX_v_2_2_2({Krow_1_reg , Kcolumn_1_sva}, fsm_output[4]);
  assign xz_out = (mux_12_nl) + 2'b1;
  assign z_out = xz_out[1:0];
  assign xz_out_1 = z_out + 2'b1;
  assign z_out_1 = xz_out_1[1:0];
  assign mux_9_nl = MUX_v_2_2_2({(Krow_1_reg + 2'b11) , 2'b1}, fsm_output[5]);
  assign xz_out_2 = conv_u2u_9_11(Drow_1_sva_2) + conv_s2u_2_11(mux_9_nl);
  assign z_out_2 = xz_out_2[10:0];
  assign mux_11_nl = MUX_v_2_2_2({(Kcolumn_1_sva + 2'b11) , 2'b1}, fsm_output[6]);
  assign xz_out_3 = conv_u2u_9_11(Dcolumn_1_sva_2) + conv_s2u_2_11(mux_11_nl);
  assign z_out_3 = xz_out_3[10:0];

  function [7:0] MUX_v_8_2_2;
    input [15:0] inputs;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[15:8];
      end
      1'b1 : begin
        result = inputs[7:0];
      end
      default : begin
        result = inputs[15:8];
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function [7:0] signext_8_1;
    input [0:0] vector;
  begin
    signext_8_1= {{7{vector[0]}}, vector};
  end
  endfunction


  function [4:0] readslicef_12_5_7;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 7;
    readslicef_12_5_7 = tmp[4:0];
  end
  endfunction


  function [8:0] MUX_v_9_2_2;
    input [17:0] inputs;
    input [0:0] sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[17:9];
      end
      1'b1 : begin
        result = inputs[8:0];
      end
      default : begin
        result = inputs[17:9];
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function [8:0] signext_9_1;
    input [0:0] vector;
  begin
    signext_9_1= {{8{vector[0]}}, vector};
  end
  endfunction


  function [1:0] MUX_v_2_2_2;
    input [3:0] inputs;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[3:2];
      end
      1'b1 : begin
        result = inputs[1:0];
      end
      default : begin
        result = inputs[3:2];
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function [5:0] MUX_v_6_2_2;
    input [11:0] inputs;
    input [0:0] sel;
    reg [5:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[11:6];
      end
      1'b1 : begin
        result = inputs[5:0];
      end
      default : begin
        result = inputs[11:6];
      end
    endcase
    MUX_v_6_2_2 = result;
  end
  endfunction


  function [5:0] signext_6_1;
    input [0:0] vector;
  begin
    signext_6_1= {{5{vector[0]}}, vector};
  end
  endfunction


  function [0:0] MUX_s_1_16_2;
    input [15:0] inputs;
    input [3:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = inputs[15:15];
      end
      4'b0001 : begin
        result = inputs[14:14];
      end
      4'b0010 : begin
        result = inputs[13:13];
      end
      4'b0011 : begin
        result = inputs[12:12];
      end
      4'b0100 : begin
        result = inputs[11:11];
      end
      4'b0101 : begin
        result = inputs[10:10];
      end
      4'b0110 : begin
        result = inputs[9:9];
      end
      4'b0111 : begin
        result = inputs[8:8];
      end
      4'b1000 : begin
        result = inputs[7:7];
      end
      4'b1001 : begin
        result = inputs[6:6];
      end
      4'b1010 : begin
        result = inputs[5:5];
      end
      4'b1011 : begin
        result = inputs[4:4];
      end
      4'b1100 : begin
        result = inputs[3:3];
      end
      4'b1101 : begin
        result = inputs[2:2];
      end
      4'b1110 : begin
        result = inputs[1:1];
      end
      4'b1111 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[15:15];
      end
    endcase
    MUX_s_1_16_2 = result;
  end
  endfunction


  function [1:0] MUX_v_2_16_2;
    input [31:0] inputs;
    input [3:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = inputs[31:30];
      end
      4'b0001 : begin
        result = inputs[29:28];
      end
      4'b0010 : begin
        result = inputs[27:26];
      end
      4'b0011 : begin
        result = inputs[25:24];
      end
      4'b0100 : begin
        result = inputs[23:22];
      end
      4'b0101 : begin
        result = inputs[21:20];
      end
      4'b0110 : begin
        result = inputs[19:18];
      end
      4'b0111 : begin
        result = inputs[17:16];
      end
      4'b1000 : begin
        result = inputs[15:14];
      end
      4'b1001 : begin
        result = inputs[13:12];
      end
      4'b1010 : begin
        result = inputs[11:10];
      end
      4'b1011 : begin
        result = inputs[9:8];
      end
      4'b1100 : begin
        result = inputs[7:6];
      end
      4'b1101 : begin
        result = inputs[5:4];
      end
      4'b1110 : begin
        result = inputs[3:2];
      end
      4'b1111 : begin
        result = inputs[1:0];
      end
      default : begin
        result = inputs[31:30];
      end
    endcase
    MUX_v_2_16_2 = result;
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_5_9 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_9 = {{4{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_24_12 ;
    input [23:0]  vector ;
  begin
    conv_u2u_24_12 = vector[11:0];
  end
  endfunction


  function  [11:0] conv_u2u_8_12 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_12 = {{4{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_5_12 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_12 = {{7{1'b0}}, vector};
  end
  endfunction


  function  [8:0] conv_s2u_2_9 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_9 = {{7{vector[1]}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_s2u_2_11 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_11 = {{9{vector[1]}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    Convolotion
//  Generated from file(s):
//    2) $PROJECT_HOME/ESL_CA2.c
// ------------------------------------------------------------------


module Convolotion (
  start, ready, done, clk, rst, in_rsc_singleport_data_in, in_rsc_singleport_addr,
      in_rsc_singleport_re, in_rsc_singleport_we, in_rsc_singleport_data_out, out_rsc_singleport_data_in,
      out_rsc_singleport_addr, out_rsc_singleport_re, out_rsc_singleport_we, out_rsc_singleport_data_out
);
  input start;
  output ready;
  output done;
  input clk;
  input rst;
  output [7:0] in_rsc_singleport_data_in;
  output [17:0] in_rsc_singleport_addr;
  output in_rsc_singleport_re;
  output in_rsc_singleport_we;
  input [7:0] in_rsc_singleport_data_out;
  output [7:0] out_rsc_singleport_data_in;
  output [17:0] out_rsc_singleport_addr;
  output out_rsc_singleport_re;
  output out_rsc_singleport_we;
  input [7:0] out_rsc_singleport_data_out;


  // Interconnect Declarations
  wire [17:0] in_rsc_singleport_addr_core;
  wire in_rsc_singleport_re_core_sct;
  wire [7:0] out_rsc_singleport_data_in_core;
  wire [17:0] out_rsc_singleport_addr_core;
  wire out_rsc_singleport_we_core_sct;
  wire mgc_start_sync_mgc_bsync_rv_rd_core_sct;
  wire mgc_start_sync_mgc_bsync_rv_vd;
  wire mgc_done_sync_mgc_bsync_rdy_rd_core_sct;

  mgc_bsync_rv #(.rscid(4),
  .ready(1),
  .valid(1)) mgc_start_sync_mgc_bsync_rv (
      .rd(mgc_start_sync_mgc_bsync_rv_rd_core_sct),
      .vd(mgc_start_sync_mgc_bsync_rv_vd),
      .rz(ready),
      .vz(start)
    );
  mgc_bsync_rdy #(.rscid(5),
  .ready(1),
  .valid(0)) mgc_done_sync_mgc_bsync_rdy (
      .rd(mgc_done_sync_mgc_bsync_rdy_rd_core_sct),
      .rz(done)
    );
  Convolotion_core Convolotion_core_inst (
      .clk(clk),
      .rst(rst),
      .in_rsc_singleport_data_out(in_rsc_singleport_data_out),
      .in_rsc_singleport_addr_core(in_rsc_singleport_addr_core),
      .in_rsc_singleport_re_core_sct(in_rsc_singleport_re_core_sct),
      .out_rsc_singleport_data_in_core(out_rsc_singleport_data_in_core),
      .out_rsc_singleport_addr_core(out_rsc_singleport_addr_core),
      .out_rsc_singleport_we_core_sct(out_rsc_singleport_we_core_sct),
      .mgc_start_sync_mgc_bsync_rv_rd_core_sct(mgc_start_sync_mgc_bsync_rv_rd_core_sct),
      .mgc_start_sync_mgc_bsync_rv_vd(mgc_start_sync_mgc_bsync_rv_vd),
      .mgc_done_sync_mgc_bsync_rdy_rd_core_sct(mgc_done_sync_mgc_bsync_rdy_rd_core_sct)
    );
  assign in_rsc_singleport_data_in = 8'b0;
  assign in_rsc_singleport_addr = in_rsc_singleport_addr_core;
  assign in_rsc_singleport_re = ~ in_rsc_singleport_re_core_sct;
  assign in_rsc_singleport_we = 1'b1;
  assign out_rsc_singleport_data_in = out_rsc_singleport_data_in_core;
  assign out_rsc_singleport_addr = out_rsc_singleport_addr_core;
  assign out_rsc_singleport_re = 1'b1;
  assign out_rsc_singleport_we = ~ out_rsc_singleport_we_core_sct;
endmodule



