#> displaymenu:core/reload
#
# このデータパックをリロードし、初期化されていない場合、初期化します
#
# @internal


# 初期化したか
execute unless data storage displaymenu:_ {__init__:1b} run function displaymenu:api/reinstall

function displaymenu:core/util/simple_float/reload

scoreboard objectives add displaymenu dummy

# キャッシュを消す
data remove storage displaymenu:_ temp
data remove storage displaymenu:_ cache
data remove storage displaymenu:_ macro