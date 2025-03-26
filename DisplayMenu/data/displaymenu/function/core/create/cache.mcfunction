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
data modify storage displaymenu:_ cache.core/create/cache.main_set_translation_0 set from storage km_float_op: output






data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"center"}}} run data modify storage km_float_op: input.y set value -0.15f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"right"}}} run data modify storage km_float_op: input.y set value -0.15f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"left"}}} run data modify storage km_float_op: input.y set value -0.15f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top"}}} run data modify storage km_float_op: input.y set value -0.25f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_right"}}} run data modify storage km_float_op: input.y set value -0.25f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_left"}}} run data modify storage km_float_op: input.y set value -0.25f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom"}}} run data modify storage km_float_op: input.y set value -0.05f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_right"}}} run data modify storage km_float_op: input.y set value -0.05f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_left"}}} run data modify storage km_float_op: input.y set value -0.05f
function km_float_op:operations/mul
data modify storage displaymenu:_ cache.core/create/cache.main_set_translation_1 set from storage km_float_op: output








data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"center"}}} run data modify storage km_float_op: input.y set value 0.1f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"right"}}} run data modify storage km_float_op: input.y set value 0.1f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"left"}}} run data modify storage km_float_op: input.y set value 0.1f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top"}}} run data modify storage km_float_op: input.y set value 0f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_right"}}} run data modify storage km_float_op: input.y set value 0f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_left"}}} run data modify storage km_float_op: input.y set value 0f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom"}}} run data modify storage km_float_op: input.y set value 0.2f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_right"}}} run data modify storage km_float_op: input.y set value 0.2f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_left"}}} run data modify storage km_float_op: input.y set value 0.2f
function km_float_op:operations/mul
data modify storage displaymenu:_ cache.core/create/cache.border_set_translation_1 set from storage km_float_op: output








data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
data modify storage km_float_op: input.y set value 0.025f
function km_float_op:operations/mul
data modify storage simple_float: y set from storage km_float_op: output 

data modify storage simple_float: x set from storage displaymenu:_ cache.core/create/cache.main_set_translation_0
function displaymenu:core/util/simple_float/add
data modify storage displaymenu:_ cache.core/create/cache.back_add_translation_0 set from storage simple_float: output







execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.y set value 0.1f
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.y set value 0.06666f
function km_float_op:operations/mul
data modify storage displaymenu:_ cache.core/create/cache.border_wall_set_scale_1 set from storage km_float_op: output






execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.y set value 0.005f
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.y set value 0.00333f

function km_float_op:operations/mul

data modify storage simple_float: x set from storage displaymenu:_ cache.core/create/cache.border_set_translation_1
data modify storage simple_float: y set from storage km_float_op: output
function displaymenu:core/util/simple_float/sub

data modify storage displaymenu:_ cache.core/create/cache.border_wall_sub_translation_1 set from storage simple_float: output

# core/create/border/translation/scale.1







data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"center"}}} run data modify storage km_float_op: input.y set value 0.1f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"right"}}} run data modify storage km_float_op: input.y set value 0f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"left"}}} run data modify storage km_float_op: input.y set value 0.2f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top"}}} run data modify storage km_float_op: input.y set value 0.1f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_right"}}} run data modify storage km_float_op: input.y set value 0f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"top_left"}}} run data modify storage km_float_op: input.y set value 0.2f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom"}}} run data modify storage km_float_op: input.y set value 0.1f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_right"}}} run data modify storage km_float_op: input.y set value 0f
execute if data storage displaymenu:_ {temp:{input:{HitBoxPosition:"bottom_left"}}} run data modify storage km_float_op: input.y set value 0.2f
function km_float_op:operations/mul
data modify storage displaymenu:_ cache.core/create/cache.border_right_set_translation_0 set from storage km_float_op: output







execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.y set value 0.03f
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.y set value 0.019998f
function km_float_op:operations/mul

data modify storage displaymenu:_ cache.core/create/cache.border_house_set_scale_01 set from storage km_float_op: output






execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.y set value -0.0045f
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.y set value -0.002999f
function km_float_op:operations/mul

data modify storage displaymenu:_ cache.core/create/cache.border_house_set_translation_2 set from storage km_float_op: output





execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.y set value -0.000375f
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.y set value -0.00024999975f
function km_float_op:operations/mul

data modify storage displaymenu:_ cache.core/create/cache.border_left_set_translation_2 set from storage km_float_op: output





execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainHeight
execute if data storage displaymenu:_ {temp:{min_side:"h"}} run data modify storage km_float_op: input.y set value 0.003f
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.x set from storage displaymenu:_ temp.input.MainWidth
execute if data storage displaymenu:_ {temp:{min_side:"w"}} run data modify storage km_float_op: input.y set value 0.0019999998f
function km_float_op:operations/mul

data modify storage displaymenu:_ cache.core/create/cache.border_front_set_translation_2 set from storage km_float_op: output
