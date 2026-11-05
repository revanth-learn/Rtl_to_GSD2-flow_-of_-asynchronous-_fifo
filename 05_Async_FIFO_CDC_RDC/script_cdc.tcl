analyze -verilog {../01_Async_FIFO_src/fifo_empty.v} ;
analyze -verilog {../01_Async_FIFO_src/fifo_full.v} ;
analyze -verilog {../01_Async_FIFO_src/fifo_mem.v} ;
analyze -verilog {../01_Async_FIFO_src/fifo.v} ;
analyze -verilog {../01_Async_FIFO_src/reset_sync.v} ;
analyze -verilog {../01_Async_FIFO_src/sync_ptr_clx.v};
elaborate -top {fifo} -parameter {DATASIZE} {8} -parameter {ADDRSIZE} {4} -parameter {MEM_DEPTH}
{16}
clock i_wr_clk {i_wr_clk} 1 1
clock i_rd_clk {i_rd_clk} 1 1
reset -expression ~i_wr_rst_n ~i_rd_rst_n
check_cdc -clock_domain -port o_empty -clock_signal i_rd_clk
check_cdc -clock_domain -port o_full -clock_signal i_wr_clk
check_cdc -clock_domain -find
check_cdc -clock_domain -sync_all_unclocked
check_cdc -pair -find
check_cdc -scheme -find
check_cdc -group -find
check_cdc -protocol_check -generate
check_cdc -protocol_check -generate
check_cdc -reset -find
check_cdc -signal_config -prove
check_cdc -protocol_check -prove
check_cdc -protocol_check -export -file export_file_cdc.txt -force
check_cdc -metastability -export -dir ../05_Async_FIFO_CDC_RDC -force -time_window 1000
check_cdc -report -violation -order category -file fifo_cdc_report.txt -force -detailed
check_cdc -report -violation -order category -detailed

