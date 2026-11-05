#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2019.09
# platform  : Linux 3.10.0-1160.119.1.el7.x86_64
# version   : 2019.09p002 64 bits
# build date: 2019.11.26 18:17:27 PST
#----------------------------------------
# started Wed Sep 30 11:41:45 IST 2026
# hostname  : nsdcs.iiti.ac.in
# pid       : 13770
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42213' '-style' 'windows' '-data' 'AQAAADx/////AAAAAAAAA3oBAAAAEABMAE0AUgBFAE0ATwBWAEU=' '-proj' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/jgproject/.tmp/.initCmds.tcl'
analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo_empty.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo_full.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo_mem.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/reset_sync.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/sync_ptr_clx.v} ; 
clear -all
set_elaborate_single_run_mode off
analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo_empty.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo_full.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo_mem.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/fifo.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/reset_sync.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/sync_ptr_clx.v} ; 
elaborate -parameter {DATASIZE} {8} -parameter {ADDRSIZE} {4} -parameter {MEM_DEPTH} {16} -top {fifo}
get_clock_info -gui
clock i_wr_clk {i_wr_clk} 1 1
clock i_rd_clk {i_rd_clk} 1 1
reset -expression {!(i_wr_rst_n)} {!(i_rd_rst_n)};
check_cdc -init
check_cdc -clock_domain -port o_full -clock_signal i_wr_clk
check_cdc -clock_domain -port o_empty -clock_signal i_rd_clk
check_cdc -clock_domain -find
check_cdc -clock_domain -sync_all_unclocked
check_cdc -pair -find
check_cdc -scheme -find
check_cdc -group -find
check_cdc -metastability -inject
check_cdc -metastability -inject
check_cdc -group -find
check_cdc -protocol_check -generate
check_cdc -metastability -inject
check_cdc -reset -find
check_cdc -signal_config -prove
check_cdc -protocol_check -prove
visualize -violation -property <CDC_scheme_properties>::CDC_u_sync_wr2rd_clx.o_ptr_clx_data_stable -new_window
check_cdc -protocol_check -export -file /home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/01_Async_FIFO_src/export_fifo_cdc.svp -force
check_cdc -metastability -export -dir /home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC -force -time_window 1000
check_cdc -waiver -add -filter [check_cdc -filter -add -regexp -check reconvergence_check] -comment {Empty and Full flags involve synchronized read/write pointers that normally
converge into comparators for Empty and Full flag calculation}
check_cdc -waiver -add -filter [check_cdc -filter -add -regexp -check convergence_check] -comment {o_rd_data is assigned asynchronously}
check_cdc -waiver -add -filter [check_cdc -filter -add -regexp -check data_stable] -comment {output of sync_ptr_clx module have NDFF Scheme}
check_cdc -report -violation -order category -file /home/Revanth_BTP/Desktop/ChipIN_RefDesign/05_Async_FIFO_CDC_RDC/fifo_cdc_report.txt -force -detailed
check_cdc -report -violation -order category -detailed
check_cdc -debug -show_schematic
check_cdc -debug -show_schematic
check_cdc -debug -show_schematic
check_cdc -debug -show_schematic
