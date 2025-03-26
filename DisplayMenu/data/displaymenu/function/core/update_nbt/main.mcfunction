#> displaymenu:core/update_nbt/main
#
# translationを調整
#
# @internal


function displaymenu:core/update_nbt/main_display with storage displaymenu:_ temp.input

data modify entity @s transformation.scale[0] set from storage displaymenu:_ temp.input.MainWidth
data modify entity @s transformation.scale[1] set from storage displaymenu:_ temp.input.MainHeight

function displaymenu:core/update_nbt/x
function displaymenu:core/update_nbt/y