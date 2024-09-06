#> helperbar:core/bossbar/phase/set/loop
#
# @within helperbar:core/bossbar/phase/set/


scoreboard players add $phase_loop helperbar 1

execute if score $phase_loop helperbar < $current_phase helperbar run data modify storage helperbar:_ temp.phase_name_loop.translate append value ""
execute if score $phase_loop helperbar < $current_phase helperbar run data modify storage helperbar:_ temp.phase_name_loop.fallback append value ""

execute if score $phase_loop helperbar < $current_phase helperbar run function helperbar:core/bossbar/phase/set/loop with storage helperbar:_ macro