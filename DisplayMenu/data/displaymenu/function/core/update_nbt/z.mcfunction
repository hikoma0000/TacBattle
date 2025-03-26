#> displaymenu:core/update_nbt/z
#
# translationのzを調整
#
# @


data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"center"}}} run data modify storage km_float_op: input.y set value -0.0125f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"right"}}} run data modify storage km_float_op: input.y set value -0.1125f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"left"}}} run data modify storage km_float_op: input.y set value 0.0875f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top"}}} run data modify storage km_float_op: input.y set value -0.0125f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_right"}}} run data modify storage km_float_op: input.y set value -0.1125f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_left"}}} run data modify storage km_float_op: input.y set value 0.0875f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom"}}} run data modify storage km_float_op: input.y set value -0.0125f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_right"}}} run data modify storage km_float_op: input.y set value -0.1125f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_left"}}} run data modify storage km_float_op: input.y set value 0.0875f
function km_float_op:operations/mul

data modify entity @s transformation.translation[2] set from storage km_float_op: output