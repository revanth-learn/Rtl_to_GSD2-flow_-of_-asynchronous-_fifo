#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2019.09
# platform  : Linux 3.10.0-1160.119.1.el7.x86_64
# version   : 2019.09p002 64 bits
# build date: 2019.11.26 18:17:27 PST
#----------------------------------------
# started Wed Sep 30 14:42:55 IST 2026
# hostname  : nsdcs.iiti.ac.in
# pid       : 3306
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44780' '-style' 'windows' '-data' 'AQAAADx/////AAAAAAAAA3oBAAAAEABMAE0AUgBFAE0ATwBWAEU=' '-proj' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/jgproject/.tmp/.initCmds.tcl'
analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo_empty.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo_full.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo_mem.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/reset_sync.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/sync_ptr_clx.v} ; 
clear -all
set_elaborate_single_run_mode off
analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo_empty.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo_full.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo_mem.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/fifo.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/reset_sync.v} ; analyze -verilog {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/01_Async_FIFO_src/sync_ptr_clx.v} ; 
elaborate -parameter {DATASIZE} {8} -parameter {ADDRSIZE} {4} -parameter {MEM_DEPTH} {16} -top {fifo}
get_clock_info -gui
clock i_wr_clk {i_wr_clk} 1 1
clock i_rd_clk {i_rd_clk} 1 1
reset -expression {!(i_wr_rst_n)} {!(i_rd_rst_n)};
catch {task -remove FIFOXPROP}; task -create FIFOXPROP -set; set_xprop_use_bbox_outputs on -task FIFOXPROP; set_xprop_use_internal_undriven on -task FIFOXPROP; set_xprop_use_inputs off -task FIFOXPROP; set_xprop_use_stopats on -task FIFOXPROP; set_xprop_use_reset_state on -task FIFOXPROP; set_xprop_use_init_abstraction on -task FIFOXPROP; set_xprop_use_reset_abstraction on -task FIFOXPROP; set_xprop_use_x_assignments on -task FIFOXPROP; set_xprop_use_bus_contention on -task FIFOXPROP; set_xprop_use_bus_floating on -task FIFOXPROP; set_xprop_use_low_power on -task FIFOXPROP; check_xprop -create -bbox_inputs -task FIFOXPROP; check_xprop -create -clocks_and_resets -task FIFOXPROP; check_xprop -create -outputs -task FIFOXPROP; check_xprop -create -flops_with_reset_pin -task FIFOXPROP; check_xprop -create -counters -task FIFOXPROP; check_xprop -create -fsms -task FIFOXPROP
check_xprop -prove -task FIFOXPROP -bg
catch {task -remove FIFOXPROPDIFFERENT}; task -create FIFOXPROPDIFFERENT -set; set_xprop_use_bbox_outputs on -task FIFOXPROPDIFFERENT; set_xprop_use_internal_undriven on -task FIFOXPROPDIFFERENT; set_xprop_use_inputs off -task FIFOXPROPDIFFERENT; set_xprop_use_stopats on -task FIFOXPROPDIFFERENT; set_xprop_use_reset_state off -task FIFOXPROPDIFFERENT; set_xprop_use_init_abstraction off -task FIFOXPROPDIFFERENT; set_xprop_use_reset_abstraction off -task FIFOXPROPDIFFERENT; set_xprop_use_x_assignments on -task FIFOXPROPDIFFERENT; set_xprop_use_bus_contention on -task FIFOXPROPDIFFERENT; set_xprop_use_bus_floating off -task FIFOXPROPDIFFERENT; set_xprop_use_low_power off -task FIFOXPROPDIFFERENT; check_xprop -create -bbox_inputs -task FIFOXPROPDIFFERENT; check_xprop -create -clocks_and_resets -task FIFOXPROPDIFFERENT; check_xprop -create -outputs -task FIFOXPROPDIFFERENT; check_xprop -create -flops_with_reset_pin -task FIFOXPROPDIFFERENT; check_xprop -create -counters -task FIFOXPROPDIFFERENT; check_xprop -create -fsms -task FIFOXPROPDIFFERENT
check_xprop -prove -task FIFOXPROPDIFFERENT -bg
check_xprop -clear
check_xprop -init_all_control true -init_all_data true -init_index true
catch {task -remove FIFOXPROPDIFFERENT}; task -create FIFOXPROPDIFFERENT -set; set_xprop_use_bbox_outputs on -task FIFOXPROPDIFFERENT; set_xprop_use_internal_undriven on -task FIFOXPROPDIFFERENT; set_xprop_use_inputs off -task FIFOXPROPDIFFERENT; set_xprop_use_stopats on -task FIFOXPROPDIFFERENT; set_xprop_use_reset_state off -task FIFOXPROPDIFFERENT; set_xprop_use_init_abstraction off -task FIFOXPROPDIFFERENT; set_xprop_use_reset_abstraction off -task FIFOXPROPDIFFERENT; set_xprop_use_x_assignments on -task FIFOXPROPDIFFERENT; set_xprop_use_bus_contention on -task FIFOXPROPDIFFERENT; set_xprop_use_bus_floating off -task FIFOXPROPDIFFERENT; set_xprop_use_low_power off -task FIFOXPROPDIFFERENT; check_xprop -create -bbox_inputs -task FIFOXPROPDIFFERENT; check_xprop -create -clocks_and_resets -task FIFOXPROPDIFFERENT; check_xprop -create -outputs -task FIFOXPROPDIFFERENT; check_xprop -create -flops_with_reset_pin -task FIFOXPROPDIFFERENT; check_xprop -create -counters -task FIFOXPROPDIFFERENT; check_xprop -create -fsms -task FIFOXPROPDIFFERENT
check_xprop -prove -task FIFOXPROPDIFFERENT -bg
check_xprop -waiver -export -file_name /home/Revanth_BTP/Desktop/ChipIN_RefDesign/06_Async_FIFO_Xprop/export_fifo_xprop_wavier.tcl
set_prove_time_limit 86401s
check_xprop -prove -bg -all
set taskTmp [task]; task -set FIFOXPROPDIFFERENT;
set_xprop_use_internal_undriven on -task FIFOXPROPDIFFERENT;
set_xprop_use_stopats on -task FIFOXPROPDIFFERENT;
set_xprop_use_init_abstraction on -task FIFOXPROPDIFFERENT;
set_xprop_use_reset_abstraction on -task FIFOXPROPDIFFERENT;
set_xprop_use_low_power on -task FIFOXPROPDIFFERENT;
task -set $taskTmp;

check_xprop -clear
check_xprop -init_all_control true -init_all_data true -init_index true
catch {task -remove FIFOXPROP}; task -create FIFOXPROP -set; set_xprop_use_bbox_outputs on -task FIFOXPROP; set_xprop_use_internal_undriven on -task FIFOXPROP; set_xprop_use_inputs off -task FIFOXPROP; set_xprop_use_stopats off -task FIFOXPROP; set_xprop_use_reset_state on -task FIFOXPROP; set_xprop_use_init_abstraction on -task FIFOXPROP; set_xprop_use_reset_abstraction on -task FIFOXPROP; set_xprop_use_x_assignments on -task FIFOXPROP; set_xprop_use_bus_contention on -task FIFOXPROP; set_xprop_use_bus_floating on -task FIFOXPROP; set_xprop_use_low_power on -task FIFOXPROP; check_xprop -create -bbox_inputs -task FIFOXPROP; check_xprop -create -clocks_and_resets -task FIFOXPROP; check_xprop -create -outputs -task FIFOXPROP; check_xprop -create -flops_with_reset_pin -task FIFOXPROP; check_xprop -create -counters -task FIFOXPROP; check_xprop -create -fsms -task FIFOXPROP
check_xprop -prove -task FIFOXPROP -bg
