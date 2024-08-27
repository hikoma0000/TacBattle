#> helperbar:core/bossbar/phase/name/
#
# @pubric


$data modify storage helperbar:_ temp.name_macro.converted_uuid set value $(converted_uuid)
$data modify storage helperbar:_ temp.name_macro.translate set value $(translate)
$data modify storage helperbar:_ temp.name_macro.fallback set value $(fallback)
$data modify storage helperbar:_ temp.name_macro.translate_id set from storage helperbar:_ temp.name_macro.translate[-$(total_phase)]
$data modify storage helperbar:_ temp.name_macro.fallback_word set from storage helperbar:_ temp.name_macro.fallback[-$(total_phase)]

function helperbar:core/bossbar/phase/name/set with storage helperbar:_ temp.name_macro

data remove storage helperbar:_ temp.name_macro