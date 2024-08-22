#> helperbar:core/bossbar/regist/macro
#
# @within helperbar:api/regist


$data modify storage helperbar:_ data.$(converted_uuid).phase_name_translate set from storeage helperbar:_ macro.phase_name_translate
$data modify storage helperbar:_ data.$(converted_uuid).phase_name_fallback set from storeage helperbar:_ macro.phase_name_fallback

$bossbar add helperbar:$(converted_uuid)
$execute as $(converted_uuid) run bossbar set helperbar:$(converted_uuid) players @s
$bossbar set helperbar:$(converted_uuid) max $(total_phase)
$bossbar set helperbar:$(converted_uuid) value $(current_phase)
$bossbar set helperbar:$(converted_uuid) style notched_6
$bossbar set helperbar:$(converted_uuid) visible true

#  {"translate":$(phase_name_translate), "fallback":$(phase_name_fallback)}