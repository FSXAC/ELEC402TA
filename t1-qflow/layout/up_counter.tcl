# IRSIM simulation for up_counter

l gnd
h vdd

# make a bus using these nodes
# vector count_out count\[7\] count\[6\] count\[5\] count\[4\] count\[3\] count\[2\] count\[1\] count\[0\]
# vector count_out2 count\[3\] count\[2\] count\[1\] count\[0\]
# vector count_out3 count\[3:0\]
# vector count_out4 count\[7:0\]

vector count_out count<7:0>

# Start analyzer window
analyzer

# Add nodes to waveform window
ana clk rst en count_out count_out2 count_out3 count_out4 

# setvector N 0d220 (this is to set a vector)
# here is equivalent to initial begin
l clk
l en
h rst

# enable after 1500
s 500
l rst
h en


# always clock toggle
every 100 { toggle clk }

# stop after certain time
s 10000
