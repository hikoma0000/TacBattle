#> helperbar:core/bossbar/register/macro
#
# @within helperbar:core/bossbar/register/main


$data modify storage helperbar:_ data.$(converted_uuid).phase_name.translate set from storage helperbar:_ macro.phase_name.translate
$data modify storage helperbar:_ data.$(converted_uuid).phase_name.fallback set from storage helperbar:_ macro.phase_name.fallback
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.translate set from storage helperbar:_ macro.phase_name.translate
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.fallback set from storage helperbar:_ macro.phase_name.fallback

$data modify storage helperbar:_ data.$(converted_uuid).total_phase set from storage helperbar:_ macro.total_phase

$bossbar add helperbar:$(converted_uuid) ""
$execute as $(converted_uuid) run bossbar set helperbar:$(converted_uuid) players @s
$bossbar set helperbar:$(converted_uuid) max $(total_phase)
$bossbar set helperbar:$(converted_uuid) value $(current_phase)
$bossbar set helperbar:$(converted_uuid) style progress
$bossbar set helperbar:$(converted_uuid) visible true

function helperbar:core/bossbar/phase/util/shift/set with storage helperbar:_ macro

$tag $(converted_uuid) add helperbar.registered