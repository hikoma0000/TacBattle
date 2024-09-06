#> helperbar:core/bossbar/phase/set/
#
# @within helperbar:api/set_phase


$bossbar set helperbar:$(converted_uuid) value $(current_phase)
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name set from storage helperbar:_ data.$(converted_uuid).phase_name


$data modify storage helperbar:_ temp.phase_name_loop set from storage helperbar:_ data.$(converted_uuid)._phase_name
$scoreboard players set $current_phase helperbar $(current_phase)
scoreboard players set $phase_loop helperbar 0
function helperbar:core/bossbar/phase/set/loop with storage helperbar:_ macro
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name set from storage helperbar:_ temp.phase_name_loop


$data modify storage helperbar:_ temp set from storage helperbar:_ data.$(converted_uuid)._phase_name
$data modify storage helperbar:_ temp.converted_uuid set value $(converted_uuid)
$data modify storage helperbar:_ temp.total_phase set from storage helperbar:_ data.$(converted_uuid).total_phase

function helperbar:core/bossbar/phase/name/set with storage helperbar:_ temp