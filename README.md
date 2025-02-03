# VHDL Multiplier Overflow Bug

This repository demonstrates a common, subtle bug in VHDL code related to integer multiplication overflow.  The provided VHDL code implements a simple 8-bit by 8-bit multiplier. However, the multiplication can result in a 16-bit number which may cause overflow if the `product` output is not large enough.

## Bug Description:
The `multiplier` entity multiplies two 8-bit unsigned inputs (`a` and `b`). The result is assigned to a 16-bit output vector `product`. However, the code lacks explicit overflow handling. If the result exceeds 15 bits, it will be truncated, leading to incorrect results. 

## Bug Solution:
The solution involves adding explicit overflow detection and handling (e.g., an overflow flag or saturation).