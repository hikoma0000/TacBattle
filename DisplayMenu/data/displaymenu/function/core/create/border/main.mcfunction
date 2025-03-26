#> displaymenu:core/create/border/main
#
# メイン;DMのボーダーを作成
#
# @within function displaymenu:core/create/main


function displaymenu:core/update_nbt/border with storage displaymenu:_ temp.input

data modify entity @s transformation.translation[1] set from storage displaymenu:_ cache.core/create/cache.border_set_translation_1


execute if entity @s[tag=display_menu.border.wall] run data modify entity @s transformation.scale[1] set from storage displaymenu:_ cache.core/create/cache.border_wall_set_scale_1
execute if entity @s[tag=display_menu.border.wall] run data modify entity @s transformation.translation[1] set from storage displaymenu:_ cache.core/create/cache.border_wall_sub_translation_1


execute if entity @s[tag=display_menu.border.x] run data modify entity @s transformation.scale[0] set from storage displaymenu:_ temp.input.MainWidth
execute if entity @s[tag=display_menu.border.x] run function displaymenu:core/update_nbt/x

# execute if entity @s[tag=display_menu.border.z] run data modify entity @s transformation.scale[2] set from storage displaymenu:_ temp.input.MainWidth
# execute if entity @s[tag=display_menu.border.z] run function displaymenu:core/update_nbt/x


execute if entity @s[tag=display_menu.border.front] run function displaymenu:core/create/border/translation/front
execute if entity @s[tag=display_menu.border.back] run function displaymenu:core/create/border/translation/back
execute if entity @s[tag=display_menu.border.right] run function displaymenu:core/create/border/translation/right
execute if entity @s[tag=display_menu.border.left] run function displaymenu:core/create/border/translation/left
execute if entity @s[tag=display_menu.border.top] run function displaymenu:core/create/border/translation/top
execute if entity @s[tag=display_menu.border.bottom] run function displaymenu:core/create/border/translation/bottom



# icon
execute if entity @s[tag=display_menu.border.icon] run function displaymenu:core/create/border/icon with storage displaymenu:_ temp.input.Icon