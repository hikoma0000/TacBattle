#> helperbar:core/reload
#
# @pubric


execute unless data storage helperbar:_ {__init__:1b} run function helperbar:api/reinstall
scoreboard objectives add helperbar dummy

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro