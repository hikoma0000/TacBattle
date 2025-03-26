# int_array型ではないなら処理を実行しない
data modify storage gu:temp int_array_list set value [[I;]]
execute store success storage gu:temp int_array_check byte 1 run data modify storage gu:temp int_array_list append from storage gu:main in
execute if data storage gu:temp {int_array_check:1b} run function gu:convert