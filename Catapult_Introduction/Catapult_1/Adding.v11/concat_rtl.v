
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
//  Generated date: Tue Apr 09 16:47:38 2019
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Adding_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module Adding_core_fsm (
  clk, rst, fsm_output, st_out_1_in_tr0, st_out_2_in_tr0, st_out_3_in_tr0, st_out_4_in_tr0,
      st_out_5_in_tr0, st_out_6_in_tr0, st_out_7_in_tr0, st_out_8_in_tr0, st_out_9_in_tr0,
      st_out_10_in_tr0, st_out_11_in_tr0
);
  input clk;
  input rst;
  output [24:0] fsm_output;
  reg [24:0] fsm_output;
  input st_out_1_in_tr0;
  input st_out_2_in_tr0;
  input st_out_3_in_tr0;
  input st_out_4_in_tr0;
  input st_out_5_in_tr0;
  input st_out_6_in_tr0;
  input st_out_7_in_tr0;
  input st_out_8_in_tr0;
  input st_out_9_in_tr0;
  input st_out_10_in_tr0;
  input st_out_11_in_tr0;


  // FSM State Type Declaration for Adding_core_fsm_1
  parameter
    st_main = 5'd0,
    st_out_1_in = 5'd1,
    st_main_1 = 5'd2,
    st_main_2 = 5'd3,
    st_out_2_in = 5'd4,
    st_main_3 = 5'd5,
    st_out_3_in = 5'd6,
    st_main_4 = 5'd7,
    st_out_4_in = 5'd8,
    st_main_5 = 5'd9,
    st_out_5_in = 5'd10,
    st_main_6 = 5'd11,
    st_out_6_in = 5'd12,
    st_main_7 = 5'd13,
    st_out_7_in = 5'd14,
    st_main_8 = 5'd15,
    st_out_8_in = 5'd16,
    st_main_9 = 5'd17,
    st_out_9_in = 5'd18,
    st_main_10 = 5'd19,
    st_out_10_in = 5'd20,
    st_main_11 = 5'd21,
    st_out_11_in = 5'd22,
    st_main_12 = 5'd23,
    st_main_13 = 5'd24,
    state_x = 5'b00000;

  reg [4:0] state_var;
  reg [4:0] state_var_NS;

  always @(st_out_1_in_tr0 or st_out_2_in_tr0 or st_out_3_in_tr0 or st_out_4_in_tr0
      or st_out_5_in_tr0 or st_out_6_in_tr0 or st_out_7_in_tr0 or st_out_8_in_tr0
      or st_out_9_in_tr0 or st_out_10_in_tr0 or st_out_11_in_tr0 or state_var)
  begin : Adding_core_fsm_1
    case (state_var)
      st_main : begin
        fsm_output = 25'b1;
        state_var_NS = st_out_1_in;
      end
      st_out_1_in : begin
        fsm_output = 25'b10;
        if ( st_out_1_in_tr0 ) begin
          state_var_NS = st_main_1;
        end
        else begin
          state_var_NS = st_out_1_in;
        end
      end
      st_main_1 : begin
        fsm_output = 25'b100;
        state_var_NS = st_main_2;
      end
      st_main_2 : begin
        fsm_output = 25'b1000;
        state_var_NS = st_out_2_in;
      end
      st_out_2_in : begin
        fsm_output = 25'b10000;
        if ( st_out_2_in_tr0 ) begin
          state_var_NS = st_main_3;
        end
        else begin
          state_var_NS = st_out_2_in;
        end
      end
      st_main_3 : begin
        fsm_output = 25'b100000;
        state_var_NS = st_out_3_in;
      end
      st_out_3_in : begin
        fsm_output = 25'b1000000;
        if ( st_out_3_in_tr0 ) begin
          state_var_NS = st_main_4;
        end
        else begin
          state_var_NS = st_out_3_in;
        end
      end
      st_main_4 : begin
        fsm_output = 25'b10000000;
        state_var_NS = st_out_4_in;
      end
      st_out_4_in : begin
        fsm_output = 25'b100000000;
        if ( st_out_4_in_tr0 ) begin
          state_var_NS = st_main_5;
        end
        else begin
          state_var_NS = st_out_4_in;
        end
      end
      st_main_5 : begin
        fsm_output = 25'b1000000000;
        state_var_NS = st_out_5_in;
      end
      st_out_5_in : begin
        fsm_output = 25'b10000000000;
        if ( st_out_5_in_tr0 ) begin
          state_var_NS = st_main_6;
        end
        else begin
          state_var_NS = st_out_5_in;
        end
      end
      st_main_6 : begin
        fsm_output = 25'b100000000000;
        state_var_NS = st_out_6_in;
      end
      st_out_6_in : begin
        fsm_output = 25'b1000000000000;
        if ( st_out_6_in_tr0 ) begin
          state_var_NS = st_main_7;
        end
        else begin
          state_var_NS = st_out_6_in;
        end
      end
      st_main_7 : begin
        fsm_output = 25'b10000000000000;
        state_var_NS = st_out_7_in;
      end
      st_out_7_in : begin
        fsm_output = 25'b100000000000000;
        if ( st_out_7_in_tr0 ) begin
          state_var_NS = st_main_8;
        end
        else begin
          state_var_NS = st_out_7_in;
        end
      end
      st_main_8 : begin
        fsm_output = 25'b1000000000000000;
        state_var_NS = st_out_8_in;
      end
      st_out_8_in : begin
        fsm_output = 25'b10000000000000000;
        if ( st_out_8_in_tr0 ) begin
          state_var_NS = st_main_9;
        end
        else begin
          state_var_NS = st_out_8_in;
        end
      end
      st_main_9 : begin
        fsm_output = 25'b100000000000000000;
        state_var_NS = st_out_9_in;
      end
      st_out_9_in : begin
        fsm_output = 25'b1000000000000000000;
        if ( st_out_9_in_tr0 ) begin
          state_var_NS = st_main_10;
        end
        else begin
          state_var_NS = st_out_9_in;
        end
      end
      st_main_10 : begin
        fsm_output = 25'b10000000000000000000;
        state_var_NS = st_out_10_in;
      end
      st_out_10_in : begin
        fsm_output = 25'b100000000000000000000;
        if ( st_out_10_in_tr0 ) begin
          state_var_NS = st_main_11;
        end
        else begin
          state_var_NS = st_out_10_in;
        end
      end
      st_main_11 : begin
        fsm_output = 25'b1000000000000000000000;
        state_var_NS = st_out_11_in;
      end
      st_out_11_in : begin
        fsm_output = 25'b10000000000000000000000;
        if ( st_out_11_in_tr0 ) begin
          state_var_NS = st_main_12;
        end
        else begin
          state_var_NS = st_out_11_in;
        end
      end
      st_main_12 : begin
        fsm_output = 25'b100000000000000000000000;
        state_var_NS = st_main_13;
      end
      st_main_13 : begin
        fsm_output = 25'b1000000000000000000000000;
        state_var_NS = st_main;
      end
      default : begin
        fsm_output = 25'b0000000000000000000000000;
        state_var_NS = st_main;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= st_main;
    end
    else begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    Adding_core
// ------------------------------------------------------------------


module Adding_core (
  clk, rst, A_rsc_mgc_in_wire_d, B_rsc_mgc_in_wire_d, C_rsc_mgc_in_wire_d, D_rsc_mgc_in_wire_d,
      E_rsc_mgc_in_wire_d, Temp_rsc_mgc_out_stdreg_d
);
  input clk;
  input rst;
  input [7:0] A_rsc_mgc_in_wire_d;
  input [7:0] B_rsc_mgc_in_wire_d;
  input [7:0] C_rsc_mgc_in_wire_d;
  input [7:0] D_rsc_mgc_in_wire_d;
  input [7:0] E_rsc_mgc_in_wire_d;
  output [63:0] Temp_rsc_mgc_out_stdreg_d;
  reg [63:0] Temp_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire [24:0] fsm_output;
  wire or_dcpl_172;
  wire or_dcpl_175;
  reg [7:0] A_1_sva;
  reg [7:0] B_1_sva;
  reg [7:0] C_1_sva;
  reg [7:0] D_1_sva;
  reg [7:0] E_1_sva;
  reg [63:0] Temp2_1_sva_1;
  reg [15:0] out_1_mul_1_cse_sva;
  reg [63:0] reg_1;
  reg [2:0] in_reg;
  wire [2:0] out_1_in_acc_12;
  wire [3:0] xout_1_in_acc_12;
  wire or_104_cse;
  wire [63:0] z_out;
  wire [64:0] xz_out;
  wire or_tmp_1;
  wire [63:0] z_out_1;
  wire [79:0] xz_out_1;
  wire [2:0] in_i_2_sva_1;
  wire [3:0] xin_i_2_sva_1;

  wire[63:0] mux_10_nl;
  wire[15:0] mux_9_nl;
  wire[63:0] mux1h_6_nl;
  Adding_core_fsm Adding_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output),
      .st_out_1_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_2_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_3_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_4_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_5_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_6_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_7_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_8_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_9_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_10_in_tr0((~ (out_1_in_acc_12[2]))),
      .st_out_11_in_tr0((~ (out_1_in_acc_12[2])))
    );
  assign or_104_cse = (fsm_output[21]) | (fsm_output[19]) | (fsm_output[17]) | (fsm_output[15])
      | (fsm_output[13]) | (fsm_output[11]) | (fsm_output[9]) | (fsm_output[7]) |
      (fsm_output[5]) | (fsm_output[2]) | (fsm_output[20]) | (fsm_output[18]) | (fsm_output[16])
      | (fsm_output[14]) | (fsm_output[12]) | (fsm_output[10]) | (fsm_output[8])
      | (fsm_output[6]) | (fsm_output[4]) | (fsm_output[22]) | (fsm_output[1]) |
      (fsm_output[3]);
  assign xin_i_2_sva_1 = in_reg + 3'b1;
  assign in_i_2_sva_1 = xin_i_2_sva_1[2:0];
  assign xout_1_in_acc_12 = ({1'b1 , (in_i_2_sva_1[2:1])}) + 3'b1;
  assign out_1_in_acc_12 = xout_1_in_acc_12[2:0];
  assign or_dcpl_172 = (fsm_output[14]) | (fsm_output[12]);
  assign or_dcpl_175 = (fsm_output[20]) | (fsm_output[18]) | (fsm_output[16]);
  assign or_tmp_1 = (fsm_output[5]) | (fsm_output[7]) | (fsm_output[9]) | (fsm_output[11])
      | (fsm_output[13]) | (fsm_output[15]) | (fsm_output[17]) | (fsm_output[19])
      | (fsm_output[21]) | (fsm_output[23]);
  always @(posedge clk) begin
    if ( rst ) begin
      Temp_rsc_mgc_out_stdreg_d <= 64'b0;
      A_1_sva <= 8'b0;
      B_1_sva <= 8'b0;
      C_1_sva <= 8'b0;
      D_1_sva <= 8'b0;
      Temp2_1_sva_1 <= 64'b0;
      E_1_sva <= 8'b0;
      in_reg <= 3'b0;
      out_1_mul_1_cse_sva <= 16'b0;
      reg_1 <= 64'b0;
    end
    else begin
      Temp_rsc_mgc_out_stdreg_d <= MUX_v_64_2_2({Temp_rsc_mgc_out_stdreg_d , z_out_1},
          fsm_output[23]);
      A_1_sva <= MUX_v_8_2_2({A_rsc_mgc_in_wire_d , A_1_sva}, or_104_cse);
      B_1_sva <= MUX_v_8_2_2({B_rsc_mgc_in_wire_d , B_1_sva}, or_104_cse);
      C_1_sva <= MUX_v_8_2_2({C_rsc_mgc_in_wire_d , C_1_sva}, or_104_cse);
      D_1_sva <= MUX_v_8_2_2({D_rsc_mgc_in_wire_d , D_1_sva}, or_104_cse);
      Temp2_1_sva_1 <= MUX_v_64_2_2({Temp2_1_sva_1 , z_out}, fsm_output[1]);
      E_1_sva <= MUX_v_8_2_2({E_1_sva , E_rsc_mgc_in_wire_d}, fsm_output[0]);
      in_reg <= in_i_2_sva_1 & (signext_3_1(or_dcpl_175 | or_dcpl_172 | (fsm_output[10])
          | (fsm_output[8]) | (fsm_output[6]) | (fsm_output[4]) | (fsm_output[22])
          | (fsm_output[1])));
      out_1_mul_1_cse_sva <= MUX_v_16_2_2({out_1_mul_1_cse_sva , (z_out_1[15:0])},
          fsm_output[2]);
      reg_1 <= MUX_v_64_2_2({z_out_1 , z_out}, or_dcpl_175 | or_dcpl_172 | (fsm_output[10])
          | (fsm_output[8]) | (fsm_output[6]) | (fsm_output[4]) | (fsm_output[22]));
    end
  end
  assign mux_10_nl = MUX_v_64_2_2({Temp2_1_sva_1 , reg_1}, (fsm_output[4]) | (fsm_output[6])
      | (fsm_output[8]) | (fsm_output[10]) | (fsm_output[12]) | (fsm_output[14])
      | (fsm_output[16]) | (fsm_output[18]) | (fsm_output[20]) | (fsm_output[22]));
  assign xz_out = (mux_10_nl) + conv_u2u_9_64(readslicef_11_9_2((conv_u2u_10_11({(conv_u2u_8_9(A_1_sva)
      + conv_u2u_7_9(B_1_sva[7:1])) , (B_1_sva[0])}) + conv_u2u_9_11(conv_u2u_8_9(C_1_sva)
      + conv_u2u_8_9(D_1_sva)))));
  assign z_out = xz_out[63:0];
  assign mux_9_nl = MUX_v_16_2_2({({8'b0 , E_1_sva}) , out_1_mul_1_cse_sva}, (fsm_output[3])
      | or_tmp_1);
  assign mux1h_6_nl = MUX1HOT_v_64_3_2({({56'b0 , E_1_sva}) , Temp2_1_sva_1 , reg_1},
      {(fsm_output[2]) , (fsm_output[3]) , or_tmp_1});
  assign xz_out_1 = conv_u2u_16_64(mux_9_nl) * (mux1h_6_nl);
  assign z_out_1 = xz_out_1[63:0];

  function [63:0] MUX_v_64_2_2;
    input [127:0] inputs;
    input [0:0] sel;
    reg [63:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[127:64];
      end
      1'b1 : begin
        result = inputs[63:0];
      end
      default : begin
        result = inputs[127:64];
      end
    endcase
    MUX_v_64_2_2 = result;
  end
  endfunction


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


  function [2:0] signext_3_1;
    input [0:0] vector;
  begin
    signext_3_1= {{2{vector[0]}}, vector};
  end
  endfunction


  function [15:0] MUX_v_16_2_2;
    input [31:0] inputs;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[31:16];
      end
      1'b1 : begin
        result = inputs[15:0];
      end
      default : begin
        result = inputs[31:16];
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function [8:0] readslicef_11_9_2;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 2;
    readslicef_11_9_2 = tmp[8:0];
  end
  endfunction


  function [63:0] MUX1HOT_v_64_3_2;
    input [191:0] inputs;
    input [2:0] sel;
    reg [63:0] result;
    integer i;
  begin
    result = inputs[0+:64] & {64{sel[0]}};
    for( i = 1; i < 3; i = i + 1 )
      result = result | (inputs[i*64+:64] & {64{sel[i]}});
    MUX1HOT_v_64_3_2 = result;
  end
  endfunction


  function  [63:0] conv_u2u_9_64 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_64 = {{55{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_7_9 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_9 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [63:0] conv_u2u_16_64 ;
    input [15:0]  vector ;
  begin
    conv_u2u_16_64 = {{48{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    Adding
//  Generated from file(s):
//    2) $PROJECT_HOME/ESL.c
// ------------------------------------------------------------------


module Adding (
  A_rsc_z, B_rsc_z, C_rsc_z, D_rsc_z, E_rsc_z, Temp_rsc_z, clk, rst
);
  input [7:0] A_rsc_z;
  input [7:0] B_rsc_z;
  input [7:0] C_rsc_z;
  input [7:0] D_rsc_z;
  input [7:0] E_rsc_z;
  output [63:0] Temp_rsc_z;
  input clk;
  input rst;


  // Interconnect Declarations
  wire [7:0] A_rsc_mgc_in_wire_d;
  wire [7:0] B_rsc_mgc_in_wire_d;
  wire [7:0] C_rsc_mgc_in_wire_d;
  wire [7:0] D_rsc_mgc_in_wire_d;
  wire [7:0] E_rsc_mgc_in_wire_d;
  wire [63:0] Temp_rsc_mgc_out_stdreg_d;

  mgc_in_wire #(.rscid(1),
  .width(8)) A_rsc_mgc_in_wire (
      .d(A_rsc_mgc_in_wire_d),
      .z(A_rsc_z)
    );
  mgc_in_wire #(.rscid(2),
  .width(8)) B_rsc_mgc_in_wire (
      .d(B_rsc_mgc_in_wire_d),
      .z(B_rsc_z)
    );
  mgc_in_wire #(.rscid(3),
  .width(8)) C_rsc_mgc_in_wire (
      .d(C_rsc_mgc_in_wire_d),
      .z(C_rsc_z)
    );
  mgc_in_wire #(.rscid(4),
  .width(8)) D_rsc_mgc_in_wire (
      .d(D_rsc_mgc_in_wire_d),
      .z(D_rsc_z)
    );
  mgc_in_wire #(.rscid(5),
  .width(8)) E_rsc_mgc_in_wire (
      .d(E_rsc_mgc_in_wire_d),
      .z(E_rsc_z)
    );
  mgc_out_stdreg #(.rscid(6),
  .width(64)) Temp_rsc_mgc_out_stdreg (
      .d(Temp_rsc_mgc_out_stdreg_d),
      .z(Temp_rsc_z)
    );
  Adding_core Adding_core_inst (
      .clk(clk),
      .rst(rst),
      .A_rsc_mgc_in_wire_d(A_rsc_mgc_in_wire_d),
      .B_rsc_mgc_in_wire_d(B_rsc_mgc_in_wire_d),
      .C_rsc_mgc_in_wire_d(C_rsc_mgc_in_wire_d),
      .D_rsc_mgc_in_wire_d(D_rsc_mgc_in_wire_d),
      .E_rsc_mgc_in_wire_d(E_rsc_mgc_in_wire_d),
      .Temp_rsc_mgc_out_stdreg_d(Temp_rsc_mgc_out_stdreg_d)
    );
endmodule



