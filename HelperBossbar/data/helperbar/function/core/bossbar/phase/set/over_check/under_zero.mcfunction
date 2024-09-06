#> helperbar:core/bossbar/phase/set/over_check/under_zero
#
# @within helperbar:core/bossbar/phase/set/over_check/


scoreboard players add $current_phase helperbar 1
scoreboard players operation $current_phase helperbar += $total_phase helperbar

execute store result storage helperbar:_ macro.current_phase int 1 run scoreboard players get $current_phase helperbar

execute if score $current_phase helperbar matches ..0 run data modify storage helperbar:_ macro.current_phase set value 1