#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2019.09
# platform  : Linux 3.10.0-1160.119.1.el7.x86_64
# version   : 2019.09p002 64 bits
# build date: 2019.11.26 18:17:27 PST
#----------------------------------------
# started Wed Sep 30 10:06:32 IST 2026
# hostname  : nsdcs.iiti.ac.in
# pid       : 31545
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42179' '-style' 'windows' '-data' 'AQAAADx/////AAAAAAAAA3oBAAAAEABMAE0AUgBFAE0ATwBWAEU=' '-proj' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/jgproject/.tmp/.initCmds.tcl'
check_superlint -init
analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_empty.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_full.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_mem.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/reset_sync.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/sync_ptr_clx.v} ; 
clear -all
set_elaborate_single_run_mode off
analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_empty.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_full.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_mem.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/reset_sync.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/sync_ptr_clx.v} ; 
elaborate -parameter {DATASIZE} {8} -parameter {ADDRSIZE} {4} -parameter {MEM_DEPTH} {16} -top {fifo}
get_clock_info -gui
clock i_wr_clk {i_wr_clk} 1 1
clock i_rd_clk {i_rd_clk} 1 1
reset -expression {!(i_wr_rst_n)} {!(i_rd_rst_n)};
config_rtlds -rule  -enable -category {CONNECTIVITY BLACKBOX NAMING FILEFORMAT CODINGSTYLE SIM_SYNTH SYNTHESIS STRUCTURAL RACES} 
config_rtlds -rule  -disable -category {AUTO_FORMAL_ARITHMETIC_OVERFLOW AUTO_FORMAL_BUS AUTO_FORMAL_CASE AUTO_FORMAL_DEAD_CODE AUTO_FORMAL_OUT_OF_BOUND_INDEXING} 
check_superlint -extract  -task  . 
check_superlint -prove -task { . } -bg
check_superlint -show_schematic -constants_values 11
check_superlint -show_schematic -constants_values 10
check_superlint -show_schematic -constants_values 10
check_superlint -waiver -add -source_file /home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_mem.v -start_line 52 -end_line 52 -instance u_fifo_mem -tag INS_NR_INPR -message {"Input port 'u_fifo_mem.i_full' of instance 'u_fifo_mem' is not a register"} -comment {Input Port cannot be registered} -force
check_superlint -waiver -add -source_file /home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/sync_ptr_clx.v -start_line 50 -end_line 59 -instance u_sync_rd2wr_clx -tag CLK_IS_MCDM -message {"Clock domain crossing is occurring between nets: 'u_sync_rd2wr_clx.ptr_clx_r' and 'u_fifo_empty.o_rd_ptr', perform CDC verification for more details"} -comment {Intentional CDC crossing.pointer signal is syncronized through syncroniser} -force
check_superlint -waiver -export -file_name /home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/fifo_waiver_lint.tcl 
check_superlint -report -violation -order category -file /home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/fifo_lint_report.txt -force -detailed
check_superlint -report -violation -order category -detailed
exit
