#> helperbar:core/bossbar/regist/input_check
#
# @within helperbar:core/bossbar/regist/main


execute unless data storage helperbar:_ macro.current_phase run data modify storage helperbar:_ macro.currtent_phase set value 1

data modify storage helperbar:_ temp.input_check.phase_name_check.list set value [[]]
execute store success storage helperbar:_ temp.input_check.phase_name_check.success_translate byte 1 run data modify storage helperbar:_ temp.input_check.phase_name_check.list append from storage helperbar:_ macro.phase_name.translate
execute store success storage helperbar:_ temp.input_check.phase_name_check.success_fallback byte 1 run data modify storage helperbar:_ temp.input_check.phase_name_check.list append from storage helperbar:_ macro.phase_name.fallback
execute unless data storage helperbar:_ {temp:{input_check:{phase_name_check:{success_translate:1b}}}} run data modify storage helperbar:_ macro.phase_name.translate set value [""]
execute unless data storage helperbar:_ {temp:{input_check:{phase_name_check:{success_fallback:1b}}}} run data modify storage helperbar:_ macro.phase_name.fallback set value ["Helper Bossbar"]