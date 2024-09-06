#> helperbar:core/bossbar/regist/macro
#
# @within helperbar:core/bossbar/regist/main


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
$bossbar set helperbar:$(converted_uuid) visible false

data modify storage helperbar:_ name_macro.translate set from storage helperbar:_ macro.phase_name.translate
data modify storage helperbar:_ name_macro.fallback set from storage helperbar:_ macro.phase_name.fallback
data modify storage helperbar:_ name_macro.converted_uuid set from storage helperbar:_ macro.converted_uuid
data modify storage helperbar:_ name_macro.total_phase set from storage helperbar:_ macro.total_phase
function helperbar:core/bossbar/phase/name/set with storage helperbar:_ name_macro
data remove storage helperbar:_ name_macro

$tag $(converted_uuid) add helperbar.registed