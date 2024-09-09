#> helperbar:api/delete
#
# @api


# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# 登録を削除
function helperbar:core/bossbar/phase/delete/macro with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro