#> helperbar:core/bossbar/phase/modify/next/
#
# @within helperbar:api/next_phase


$execute store result score $next_total_phase helperbar run data get storage helperbar:_ data.$(converted_uuid).total_phase 2
$execute store result score $next_phase_list_length helperbar run data get storage helperbar:_ data.$(converted_uuid)._phase_name.translate
scoreboard players remove $next_total_phase helperbar 1

execute unless score $next_phase_list_length helperbar >= $next_total_phase helperbar run function helperbar:core/bossbar/phase/modify/next/ with storage helperbar:_ macro