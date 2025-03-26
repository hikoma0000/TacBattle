data modify entity @s item merge from storage displaymenu:_ temp.input.Icon 
data merge entity @s {brightness:{block:15,sky:15}}

execute if data storage displaymenu:_ {temp:{input:{Icon:{view:"front"}}}} run data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]}
execute if data storage displaymenu:_ {temp:{input:{Icon:{view:"isometric"}}}} run data merge entity @s {Rotation:[0f,90f], transformation:[0.707f,-0f,-0.707f,0f,0f,0f,0f,0f,0.518f,-0.707f,0.518f,0f,0f,0f,0f,1f]}
execute if data storage displaymenu:_ {temp:{input:{Icon:{view:"isometric"}}}} run tag @s add display_menu.border.icon.iso


