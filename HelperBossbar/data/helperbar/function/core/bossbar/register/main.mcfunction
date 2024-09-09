#> helperbar:core/bossbar/register/main
#
# @within helperbar:api/register


# inputをmacro用に移動
data modify storage helperbar:_ macro merge from storage helperbar: input

#入力が正しいかチェックし正しくない場合修正する
function helperbar:core/bossbar/register/input_check

# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# traslate[List]の長さをtotal_phaseにする
execute store result storage helperbar:_ macro.total_phase int 1 run data get storage helperbar:_ macro.phase_name.translate

# macro
function helperbar:core/bossbar/register/macro with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ macro
data remove storage helperbar:_ temp