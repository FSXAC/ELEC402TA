onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Input -color {Dark Green} -radix binary /foobar_tb/clk
add wave -noupdate -expand -group Input -radix binary /foobar_tb/en
add wave -noupdate -expand -group Input -radix binary /foobar_tb/rst
add wave -noupdate -expand -group Output -radix unsigned /foobar_tb/count
add wave -noupdate -expand -group Output -color Orange -radix binary /foobar_tb/foo
add wave -noupdate -expand -group Output -color Turquoise -radix binary /foobar_tb/bar
add wave -noupdate -expand -group Output -color Orange -radix unsigned -childformat {{{/foobar_tb/count_foo[7]} -radix decimal} {{/foobar_tb/count_foo[6]} -radix decimal} {{/foobar_tb/count_foo[5]} -radix decimal} {{/foobar_tb/count_foo[4]} -radix decimal} {{/foobar_tb/count_foo[3]} -radix decimal} {{/foobar_tb/count_foo[2]} -radix decimal} {{/foobar_tb/count_foo[1]} -radix decimal} {{/foobar_tb/count_foo[0]} -radix decimal}} -subitemconfig {{/foobar_tb/count_foo[7]} {-color Orange -height 16 -radix decimal} {/foobar_tb/count_foo[6]} {-color Orange -height 16 -radix decimal} {/foobar_tb/count_foo[5]} {-color Orange -height 16 -radix decimal} {/foobar_tb/count_foo[4]} {-color Orange -height 16 -radix decimal} {/foobar_tb/count_foo[3]} {-color Orange -height 16 -radix decimal} {/foobar_tb/count_foo[2]} {-color Orange -height 16 -radix decimal} {/foobar_tb/count_foo[1]} {-color Orange -height 16 -radix decimal} {/foobar_tb/count_foo[0]} {-color Orange -height 16 -radix decimal}} /foobar_tb/count_foo
add wave -noupdate -expand -group Output -color Turquoise -radix unsigned /foobar_tb/count_bar
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2100 ps}
