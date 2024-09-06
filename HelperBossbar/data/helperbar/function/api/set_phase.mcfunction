#> helperbar:api/set_phase
#
# @api



# inputをmacro用に移動
data modify storage helperbar:_ macro merge from storage helperbar: input

# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# total_phaseよりcurrent_phaseが大きくないか、0より大きいかチェックし大きい場合total_phaseと同じ値にする
function helperbar:core/bossbar/phase/set/over_check/ with storage helperbar:_ macro

# macro
function helperbar:core/bossbar/phase/set/ with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro