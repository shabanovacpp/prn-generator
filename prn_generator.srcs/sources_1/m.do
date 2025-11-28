transcript on
vlib work

vlog -sv new/controller_uart.sv
vlog -sv new/uart_tx.sv
vlog -sv new/tb_controller.sv

vsim -t 1ns -voptargs="+acc" tb_controller

add wave -group "inputs" -color orange  /tb_controller/f /tb_controller/f1 /tb_controller/num1 /tb_controller/tx_enable /tb_controller/num1
add wave -group "outputs" -color orange  /tb_controller/tx_busy
add wave -group "outputs" -color pink /tb_controller/tx

configure wave -timelineunits us

run 1000 us
wave zoom range 0 300us