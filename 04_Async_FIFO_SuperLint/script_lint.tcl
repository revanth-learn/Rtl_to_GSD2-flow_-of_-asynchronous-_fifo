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
config_rtlds -rule -enable -category {CONNECTIVITY BLACKBOX NAMING FILEFORMAT CODINGSTYLE
SIM_SYNTH SYNTHESIS STRUCTURAL RACES}
config_rtlds -rule -disable -category {AUTO_FORMAL_ARITHMETIC_OVERFLOW AUTO_FORMAL_BUS
AUTO_FORMAL_CASE AUTO_FORMAL_DEAD_CODE AUTO_FORMAL_OUT_OF_BOUND_INDEXING}
check_superlint -extract -task .
check_superlint -prove -task {.} -bg
check_superlint -report -violation -order category -file fifo_lint.txt -force –detailed
check_superlint -report -violation -order category -detailed

