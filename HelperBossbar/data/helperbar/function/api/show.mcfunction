#> helperbar:api/show
#
# @api


# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# player_uuidのvisibleをtrue
function helperbar:core/bossbar/visible/show with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro