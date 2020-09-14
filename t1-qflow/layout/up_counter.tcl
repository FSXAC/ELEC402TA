# IRSIM simulation for up_counter

# NOTE: I have not gotten luck to make this work by just sourcing this file
#       Only use IRSIM by typing in the commands manually!!!

l gnd
h vdd

# Start analyzer window
analyzer

# Add nodes to waveform window
ana clk rst en

# make a bus using these nodes and display it in waveform
# NOTE: I replaced the signals in .sim file from count[0] to count<0> etc. to avoid confusion
#       with the TCL commands.
vector count_out count<7:0>
ana count_out

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
