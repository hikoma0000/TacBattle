function tacbattle:core/area_selector/nbt_data/start_position
function area_selector:api/summon

data modify storage helperbar: input set value {current_phase:1,phase_name:{fallback:["Decide on a start position","Decide on a end position","Confirm the area"],translate:["tacbattle.ui.select_start_position","tacbattle.ui.select_end_position","tacbattle.ui.select_decision"]}}
function helperbar:api/register

tag @s add battle_area_selecting
tag @s add battle_area_select_start