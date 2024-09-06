#> helperbar:core/bossbar/phase/name/set
#
# @pubric


$data modify storage helperbar:_ temp.process_name.converted_uuid set value $(converted_uuid)
$data modify storage helperbar:_ temp.process_name.translate set value $(translate)
$data modify storage helperbar:_ temp.process_name.fallback set value $(fallback)
$data modify storage helperbar:_ temp.process_name.translate_id set from storage helperbar:_ temp.process_name.translate[-$(total_phase)]
$data modify storage helperbar:_ temp.process_name.fallback_word set from storage helperbar:_ temp.process_name.fallback[-$(total_phase)]

function helperbar:core/bossbar/phase/name/macro with storage helperbar:_ temp.process_name

data remove storage helperbar:_ temp.process_name