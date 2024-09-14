#> helperbar:core/bossbar/update/macro
#
# @within helperbar:api/update


$bossbar set helperbar:$(converted_uuid) max $(total_phase)
$bossbar set helperbar:$(converted_uuid) value $(current_phase)

$data modify storage helperbar:_ data.$(converted_uuid).total_phase set from storage helperbar:_ macro.total_phase
$data modify storage helperbar:_ data.$(converted_uuid).phase_name set from storage helperbar:_ macro.phase_name
function helperbar:core/bossbar/phase/util/shift/set with storage helperbar:_ macro