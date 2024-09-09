#> helperbar:api/reinstall
#
# @api


scoreboard objectives remove helperbar
scoreboard objectives add helperbar dummy

# キャッシュを消す
data remove storage helperbar:_ temp
data remove storage helperbar:_ macro

data modify storage helperbar:_ __init__ set value 1b