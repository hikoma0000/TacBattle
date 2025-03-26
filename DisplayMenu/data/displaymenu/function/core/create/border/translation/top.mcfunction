# data modify storage simple_float: x set from entity @s transformation.translation[1]
# data modify storage simple_float: y set from storage displaymenu:_ cache.core/create/border/translation/scale.1
# function displaymenu:core/util/simple_float/add

# data modify entity @s transformation.translation[1] set from storage simple_float: output


execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.y set value 0.02f
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.y set value 0.01333f
function km_float_op:operations/mul

data modify storage simple_float: x set from entity @s transformation.translation[1]
data modify storage simple_float: y set from storage km_float_op: output
function displaymenu:core/util/simple_float/add

data modify entity @s transformation.translation[1] set from storage simple_float: output

data modify entity @s transformation.scale[1] set from storage displaymenu:_ cache.core/create/cache.border_house_set_scale_01


data modify storage simple_float: x set from storage displaymenu:_ cache.core/create/cache.border_house_set_translation_2
function displaymenu:core/util/simple_float/inv

data modify entity @s transformation.translation[2] set from storage simple_float: output
