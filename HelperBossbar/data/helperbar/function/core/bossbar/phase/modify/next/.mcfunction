#> helperbar:core/bossbar/phase/modify/next/
#
# @within helperbar:api/next_phase




$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.translate append value ""
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.fallback append value ""

function helperbar:core/bossbar/phase/modify/s with storage helperbar:_ macro

scoreboard players add $current_phase helperbar 1
$execute store result bossbar helperbar:$(converted_uuid) value run scoreboard players get $current_phase helperbar