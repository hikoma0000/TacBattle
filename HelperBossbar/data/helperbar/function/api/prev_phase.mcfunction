#> helperbar:api/prev_phase
#
# @api


# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# macro
function helperbar:core/bossbar/phase/modify/prev/check with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro