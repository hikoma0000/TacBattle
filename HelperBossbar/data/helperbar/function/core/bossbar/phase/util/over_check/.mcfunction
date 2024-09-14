#> helperbar:core/bossbar/phase/util/over_check/
#
# 使用箇所:
#   helperbar:api/set_phase
#   helperbar:api/update
#   helperbar:core/bossbar/register/main


$execute store result score $total_phase helperbar run data get storage helperbar:_ data.$(converted_uuid).total_phase
execute store result score $current_phase helperbar run data get storage helperbar:_ macro.current_phase

execute if score $current_phase helperbar > $total_phase helperbar store result storage helperbar:_ macro.current_phase int 1 run scoreboard players get $total_phase helperbar
execute if score $current_phase helperbar matches 0 run data modify storage helperbar:_ macro.current_phase set value 1
execute if score $current_phase helperbar matches ..0 run function helperbar:core/bossbar/phase/util/over_check/under_zero