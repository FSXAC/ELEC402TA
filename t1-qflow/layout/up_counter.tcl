# IRSIM simulation for up_counter

l gnd
h vdd

# Start analyzer window
analyzer

# Add nodes to waveform window
ana clk rst en

# setvector N 0d220 (this is to set a vector)
# here is equivalent to initial begin
l clk
l en
h rst

# make a bus using these nodes and display it in waveform
vector count_out count<7:0>
ana count_out

# enable after 1500
s 500
l rst
h en


# always clock toggle
every 100 { toggle clk }

# stop after certain time
s 10000
