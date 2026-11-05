#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2019.09
# platform  : Linux 3.10.0-1160.119.1.el7.x86_64
# version   : 2019.09p002 64 bits
# build date: 2019.11.26 18:17:27 PST
#----------------------------------------
# started Wed Sep 30 11:34:46 IST 2026
# hostname  : nsdcs.iiti.ac.in
# pid       : 8897
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44700' '-style' 'windows' '-data' 'AQAAADx/////AAAAAAAAA3oBAAAAEABMAE0AUgBFAE0ATwBWAEU=' '-proj' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/jgproject/.tmp/.initCmds.tcl' 'script_lint.tcl'
check_superlint -init
analyze -verilog {../01_Async_FIFO_src/fifo_empty.v} ;
analyze -verilog {../01_Async_FIFO_src/fifo_full.v} ;
analyze -verilog {../01_Async_FIFO_src/fifo_mem.v} ;
analyze -verilog {../01_Async_FIFO_src/fifo.v} ;
analyze -verilog {../01_Async_FIFO_src/reset_sync.v} ;
analyze -verilog {../01_Async_FIFO_src/sync_ptr_clx.v};
elaborate -top {fifo} -parameter {DATASIZE} {8} -parameter {ADDRSIZE} {4} -parameter {MEM_DEPTH}
