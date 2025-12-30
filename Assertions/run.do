#vlog handshaking.sv
#vlog hand_shaking_using_sequence.sv
#vlog jitter_check.sv
vlog signal1.sv
vsim -novopt -suppress 12110 top -assertdebug
add wave -r sim:/top/*
run -all
