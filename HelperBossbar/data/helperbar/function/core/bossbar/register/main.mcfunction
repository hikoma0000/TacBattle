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

# total_phaseを先に更新
function helperbar:core/bossbar/update/total_phase with storage helperbar:_ macro

# total_phaseよりcurrent_phaseが大きくないか、0より大きいかチェックし大きい場合total_phaseと同じ値にする
function helperbar:core/bossbar/phase/util/over_check/ with storage helperbar:_ macro

# macro
function helperbar:core/bossbar/register/macro with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ macro
data remove storage helperbar:_ temp