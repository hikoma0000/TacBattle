#> helperbar:core/bossbar/phase/set
#
# @within helperbar:api/set_phase


$bossbar set helperbar:$(converted_uuid) value $(current_phase)
$data modify storage helperbar:_ temp set from helperbar:_ data.$(converted_uuid)

$bossbar set helperbar:$(converted_uuid) name {"translate":"%s","with":[{"nbt": "temp.phase_name_translate[0]","storage": "helperbar:_","interpret":true}],"fallback":}