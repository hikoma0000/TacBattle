execute if data storage tacb:var {battle_area:{phase:1}} run data merge storage tacb:var {battle_area:{phase_name:"tacbattle.ui.select_start_position",fallback:"Decide on a start position"}}
execute if data storage tacb:var {battle_area:{phase:2}} run data merge storage tacb:var {battle_area:{phase_name:"tacbattle.ui.select_end_position",fallback:"Decide on a end position"}}
execute if data storage tacb:var {battle_area:{phase:3}} run data merge storage tacb:var {battle_area:{phase_name:"tacbattle.ui.select_decision",fallback:"Confirm the area"}}

function tacbattle:core/battle_area/area_marker/name_macro with storage tacb:var battle_area

execute if items entity @s weapon.mainhand stick[minecraft:enchantments={"tacbattle:battle_area_marker":1}] run item modify entity @s weapon.mainhand tacbattle:item_name_change
execute if items entity @s weapon.offhand stick[minecraft:enchantments={"tacbattle:battle_area_marker":1}] run item modify entity @s weapon.offhand tacbattle:item_name_change