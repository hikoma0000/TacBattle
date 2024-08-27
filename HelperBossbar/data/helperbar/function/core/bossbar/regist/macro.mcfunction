#> helperbar:core/bossbar/regist/macro
#
# @within helperbar:api/regist


$data modify storage helperbar:_ data.$(converted_uuid).phase_name.translate set from storeage helperbar:_ macro.phase_name_translate
$data modify storage helperbar:_ data.$(converted_uuid).phase_name.fallback set from storeage helperbar:_ macro.phase_name_fallback
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.translate set from storeage helperbar:_ macro.phase_name_translate
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.fallback set from storeage helperbar:_ macro.phase_name_fallback

$data modify storage helperbar:_ data.$(converted_uuid).total_phase set from storage helperbar:_ macro.total_phase

$bossbar add helperbar:$(converted_uuid)
$execute as $(converted_uuid) run bossbar set helperbar:$(converted_uuid) players @s
$bossbar set helperbar:$(converted_uuid) max $(total_phase)
$bossbar set helperbar:$(converted_uuid) value $(current_phase)
$bossbar set helperbar:$(converted_uuid) style progress
$bossbar set helperbar:$(converted_uuid) visible true