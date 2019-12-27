//  Catapult System Level Synthesis 2011a.41 (Production Release) Thu Apr  7 20:28:55 PDT 2011
//  
//  Copyright (c) Mentor Graphics Corporation, 1996-2011, All Rights Reserved.
//                       UNPUBLISHED, LICENSED SOFTWARE.
//            CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//          PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS
//  
//  Running on Windows XP ss@DESKTOP-UB05SU4 Service Pack 3 5.01.2600 i686
//  
//  Package information: SIFLIBS v17.0_1.1, HLS_PKGS v17.0_1.1, 
//                       DesignPad v2.78_0.0
//  
project new
solution file add {./ESL.c} -type C++
directive set -REGISTER_IDLE_SIGNAL false
directive set -IDLE_SIGNAL {}
directive set -TRANSACTION_DONE_SIGNAL false
directive set -DONE_FLAG {}
directive set -START_FLAG {}
directive set -FSM_ENCODING none
directive set -REG_MAX_FANOUT 0
directive set -NO_X_ASSIGNMENTS true
directive set -SAFE_FSM false
directive set -RESET_CLEARS_ALL_REGS true
directive set -ASSIGN_OVERHEAD 0
directive set -DESIGN_GOAL area
directive set -OLD_SCHED false
directive set -CSA 0
directive set -TIMING_CHECKS true
directive set -MUXPATH true
directive set -REALLOC true
directive set -PIPELINE_RAMP_UP true
directive set -COMPGRADE fast
directive set -SPECULATE true
directive set -MERGEABLE true
directive set -REGISTER_THRESHOLD 256
directive set -MEM_MAP_THRESHOLD 32
directive set -UNROLL no
directive set -CLOCK_OVERHEAD 20.000000
directive set -OPT_CONST_MULTS -1
go analyze
directive set -CLOCK_NAME clk
directive set -CLOCKS {clk {-CLOCK_PERIOD 20.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 10.0 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_NAME {} -ENABLE_ACTIVE high}}
directive set -TECHLIBS {{Altera_accel_CycloneII.lib Altera_accel_CycloneII} {mgc_Altera-Cyclone-II-6_beh_psr.lib {{mgc_Altera-Cyclone-II-6_beh_psr part EP2C5F256C}}} {ram_Altera-Cyclone-II-6_RAMSB.lib ram_Altera-Cyclone-II-6_RAMSB}}
directive set -DESIGN_HIERARCHY Adding
go compile
directive set /Adding/core -DESIGN_GOAL latency
go architect
go extract
