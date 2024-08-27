#> helperbar:core/bossbar/regist/input_check
#
# @within helperbar:api/regist


execute unless data storage helperbar:_ macro.current_phase run data modify storage helperbar:_ macro.currtent_phase set value 1
execute unless data storage helperbar:_ macro.phase_name_translate run data modify storage helperbar:_ macro.phase_name_translate set value ""
execute unless data storage helperbar:_ macro.phase_name_fallback run data modify storage helperbar:_ macro.phase_name_fallback set value "Helper Bossbar"