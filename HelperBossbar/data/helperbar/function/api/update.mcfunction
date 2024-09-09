#> helperbar:api/update
#
# @api


# inputをmacro用に移動
data modify storage helperbar:_ macro merge from storage helperbar: input

# @sのUUIDをstringにする
function helperbar:core/uuid_convert

# traslate[List]の長さをtotal_phaseにする
execute store result storage helperbar:_ macro.total_phase int 1 run data get storage helperbar:_ macro.phase_name.translate

# macro
function helperbar:core/bossbar/update/macro with storage helperbar:_ macro

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro