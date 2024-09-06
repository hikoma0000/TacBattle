#> helperbar:core/bossbar/phase/modify/s
#
#


$data modify storage helperbar:_ temp set from storage helperbar:_ data.$(converted_uuid)._phase_name
$data modify storage helperbar:_ temp.converted_uuid set value $(converted_uuid)
$data modify storage helperbar:_ temp.total_phase set from storage helperbar:_ data.$(converted_uuid).total_phase

function helperbar:core/bossbar/phase/name/set with storage helperbar:_ temp

$execute store result score $current_phase helperbar run bossbar get helperbar:$(converted_uuid) value