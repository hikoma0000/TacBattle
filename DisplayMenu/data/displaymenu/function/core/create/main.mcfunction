#> displaymenu:core/create/main
#
# ;DMを作成するメイン処理
#
# @within function displaymenu:api/create


function displaymenu:core/update_nbt/main
execute on passengers if entity @s[tag=display_menu.behind] run function displaymenu:core/create/behind/main


execute if data storage displaymenu:_ {temp:{input:{Borderless:true}}} on passengers if entity @s[tag=display_menu.border.root] on passengers run kill @s
execute unless data storage displaymenu:_ {temp:{input:{Borderless:true}}} on passengers if entity @s[tag=display_menu.border.root] on passengers run function displaymenu:core/create/border/main with storage displaymenu:_ temp.input