#> helperbar:api/hide
#
# @api


# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# player_uuidのvisibleをfalse
function helperbar:core/bossbar/visible/hide with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro