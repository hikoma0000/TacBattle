#> helperbar:api/regist
#
# @api


# inputをmacro用に移動
data modify storage helperbar:_ macro merge from storage helperbar: input

#入力が正しいかチェックし正しくない場合修正する
function helperbar:core/bossbar/regist/input_check

# helpbar: input.player_uuidに入力されたint_arrayをstringにする
function helperbar:core/uuid_convert

# macro
function helperbar:core/bossbar/regist/macro with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ macro