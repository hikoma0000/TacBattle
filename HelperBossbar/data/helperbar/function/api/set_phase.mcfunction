#> helperbar:api/set_phase
#
# @api



# inputをmacro用に移動
data modify storage helperbar:_ macro merge from storage helperbar: input

# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# macro
function helperbar:core/bossbar/phase/set/ with storage helperbar:_ macro