#> helperbar:core/bossbar/phase/modify/prev/
#
# @within helperbar:api/prev_phase


$data remove storage helperbar:_ data.$(converted_uuid)._phase_name.translate[-1]
$data remove storage helperbar:_ data.$(converted_uuid)._phase_name.fallback[-1]

function helperbar:core/bossbar/phase/modify/s with storage helperbar:_ macro

scoreboard players remove $current_phase helperbar 1
$execute store result bossbar helperbar:$(converted_uuid) value run scoreboard players get $current_phase helperbar