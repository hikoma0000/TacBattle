execute store success storage entity_link:_ temp.uuid_check byte 1 run return run function entity_link:core/unlink/loop_macro with storage entity_link:_ temp

scoreboard players add $index entity_link 1
execute store result storage entity_link:_ temp.index int 1 run scoreboard players get $index entity_link

execute if data storage entity_link:_ {temp:{uuid_check:1b}} unless score $index entity_link = $length entity_link run function entity_link:core/unlink/loop
