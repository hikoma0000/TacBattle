title @s actionbar {"translate":"tacbattle.ui.position_determined","fallback":"Position determined","color":"white"}

function helperbar:api/delete

playsound minecraft:block.anvil.place player @s ~ ~ ~ 1 1.5

function area_selector:api/get_pos

execute if items entity @s weapon.mainhand stick[minecraft:custom_data={"tacb":{"tags":["battle_area_marker"]}}] run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand stick[minecraft:custom_data={"tacb":{"tags":["battle_area_marker"]}}] run item replace entity @s weapon.offhand with air