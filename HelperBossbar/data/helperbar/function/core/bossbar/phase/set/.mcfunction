#> helperbar:core/bossbar/phase/set/
#
# @within helperbar:api/set_phase


$bossbar set helperbar:$(converted_uuid) value $(current_phase)
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name set from helperbar:_ data.$(converted_uuid).phase_name
data modify storage helperbar:_ temp.phase_set_loop.list set value []
function helperbar:core/bossbar/phase/set/loop with storage helperbar:_ macro
data remove storage helperbar:_ temp.phase_set_loop

$data modify storage helperbar:_ temp set from helperbar:_ data.$(converted_uuid).phase_name

$data modify storage helperbar:_ temp.converted_uuid set value $(converted_uuid)
function helperbar:core/bossbar/phase/name/main with storage helperbar:_ temp