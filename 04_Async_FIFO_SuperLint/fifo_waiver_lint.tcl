# 
# Any disclosure about the Cadence Design Systems software or its use
# model to any third party violates the written Non-Disclosure Agreement
# between Cadence Design Systems, Inc. and the customer.
# 
# THIS SOFTWARE CONTAINS CONFIDENTIAL INFORMATION AND TRADE SECRETS OF
# CADENCE DESIGN SYSTEMS, INC. USE, DISCLOSURE, OR REPRODUCTION IS
# PROHIBITED WITHOUT THE PRIOR EXPRESS WRITTEN PERMISSION OF CADENCE
# DESIGN SYSTEMS, INC.
# 
# Copyright (C) 2000-2019 Cadence Design Systems, Inc. All Rights
# Reserved.  Unpublished -- rights reserved under the copyright laws of
# the United States.
# 
# This product includes software developed by others and redistributed
# according to license agreement. See doc/third_party_readme.txt for
# further details.
# 
# RESTRICTED RIGHTS LEGEND
# 
# Use, duplication, or disclosure by the Government is subject to
# restrictions as set forth in subparagraph (c) (1) (ii) of the Rights in
# Technical Data and Computer Software clause at DFARS 252.227-7013 or
# subparagraphs (c) (1) and (2) of Commercial Computer Software -- Restricted
# Rights at 48 CFR 52.227-19, as applicable.
# 
# 
#                           Cadence Design Systems, Inc. 
#                           2655 Seely Avenue
#                           San Jose, CA 95134
#                           Phone: 408.943.1234
# 
# For technical assistance visit http://support.cadence.com.

# "Input port 'u_fifo_mem.i_full' of instance 'u_fifo_mem' is not a register"
check_superlint -waiver -add -source_file {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/fifo_mem.v} -start_line 52 -end_line 52 -instance {u_fifo_mem} -tag INS_NR_INPR -message {"Input port 'u_fifo_mem.i_full' of instance 'u_fifo_mem' is not a register"} -comment {Input Port cannot be registered} -persistency_data {AAABDHichYxbCoIAEEVPfbkMdyApDUk/7iR8pAhRfuSeWmaHDPoJncOdGe4dBtgDFTWNOnCicyvoyQmu7vFJOkp76Aet+dGZex9SOiExG9WDpXZfvXTvTMw8STcZufhj5ibb1+uc/3iZ/P739pphyd6NqhwI}

# "Clock domain crossing is occurring between nets: 'u_sync_rd2wr_clx.ptr_clx_r' and 'u_fifo_empty.o_rd_ptr', perform CDC verification for more details"
check_superlint -waiver -add -source_file {/home/Revanth_BTP/Desktop/ChipIN_RefDesign/04_Async_FIFO_SuperLint/01_Async_FIFO_src/sync_ptr_clx.v} -start_line 50 -end_line 59 -instance {u_sync_rd2wr_clx} -tag CLK_IS_MCDM -message {"Clock domain crossing is occurring between nets: 'u_sync_rd2wr_clx.ptr_clx_r' and 'u_fifo_empty.o_rd_ptr', perform CDC verification for more details"} -comment {Intentional CDC crossing.pointer signal is syncronized through syncroniser} -persistency_data {AAAClnicrZDNDoIwEIRHTx48+AjoRb0RFYWoiW9ilB8lIWDQg4/vx48GoiSS0Mm22+m0ux1JfUkHrbUgTPmERziygKMVuyUnllwyD5XLzobPmBOwtVHAGwPmkEhUjF4ZExk5sjNDM43Jjkp114M11hxWGpWqMx1cUMRw15IrkKC+cSdldRXpCbfTntnSlHtmTd0G269a9TpZt13Wev/V55denlW5CGf8Pz1p7jP8uNWVJ83+/+qiba1h1ZMXfHNGzg==}

