onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /CortexM0_SoC_vlg_tst/i1/clk
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/u_logic/HADDR
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/u_logic/HSIZE
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/u_logic/HTRANS
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/Interconncet/HWRITE
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/u_logic/HWDATA
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/u_logic/HRDATA
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/u_logic/vis_pc_o
add wave -noupdate /CortexM0_SoC_vlg_tst/i1/WaveformGeneratorInterface/write_en
add wave -noupdate /CortexM0_SoC_vlg_tst/i1/WaveformGeneratorInterface/wr_en_reg
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/WaveformGeneratorInterface/HSEL
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/WaveformGeneratorInterface/HTRANS
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/WaveformGeneratorInterface/HWRITE
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/WaveformGeneratorInterface/HREADY
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/WaveformGeneratorInterface/HREADYOUT
add wave -noupdate /CortexM0_SoC_vlg_tst/i1/WG/wgen
add wave -noupdate /CortexM0_SoC_vlg_tst/i1/WG/DACdata
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/Interconncet/Decoder/Port3_en
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/Interconncet/Decoder/HADDR
add wave -noupdate -radix hexadecimal /CortexM0_SoC_vlg_tst/i1/Interconncet/Decoder/P3_HSEL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {25662 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 407
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
WaveRestoreZoom {25268 ps} {25708 ps}
