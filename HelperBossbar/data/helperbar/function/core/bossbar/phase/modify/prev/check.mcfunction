#> helperbar:core/bossbar/phase/modify/prev/
#
# @within helperbar:api/prev_phase


$execute store result score $prev_total_phase helperbar run data get storage helperbar:_ data.$(converted_uuid).total_phase
$execute store result score $prev_phase_list_length helperbar run data get storage helperbar:_ data.$(converted_uuid)._phase_name.translate

execute unless score $prev_total_phase helperbar >= $prev_phase_list_length helperbar run function helperbar:core/bossbar/phase/modify/prev/ with storage helperbar:_ macro