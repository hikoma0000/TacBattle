#> displaymenu:api/tp
#
# DM;をきれいにtpする
#
# execute as
#       display_menu.parent
#
#
# @api


tp @s ~ ~ ~ ~ ~
execute on passengers run tp @s ~ ~ ~ ~ ~
execute on passengers on passengers run tp @s ~ ~ ~ ~ ~
execute on passengers on passengers on passengers run tp @s ~ ~ ~ ~ ~

execute on passengers on passengers if entity @s[tag=display_menu.border.icon.iso] run tp @s ~ ~ ~ ~ ~90
execute on passengers on passengers if entity @s[tag=display_menu.border.icon.iso, x_rotation=90] facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~90


data merge entity @s {teleport_duration:1}
execute on passengers run data merge entity @s {teleport_duration:1}
execute on passengers on passengers run data merge entity @s {teleport_duration:1}
execute on passengers on passengers on passengers run data merge entity @s {teleport_duration:1}