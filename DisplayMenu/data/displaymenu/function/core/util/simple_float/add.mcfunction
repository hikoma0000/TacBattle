execute store result score $x simple_float run data get storage simple_float: x 10000
execute store result score $y simple_float run data get storage simple_float: y 10000

scoreboard players operation $x simple_float += $y simple_float

execute store result storage simple_float: output float 0.0001 run scoreboard players get $x simple_float