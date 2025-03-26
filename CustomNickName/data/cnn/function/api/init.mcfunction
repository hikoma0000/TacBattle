#> cnn:api/init
#
# 初期化処理
#
# @api


function cnn:api/cache

data modify storage custom_nick_name: input set value "ANONYMOUS"
data modify storage custom_nick_name: output set value []

scoreboard objectives remove cnn.main
scoreboard objectives add cnn.main dummy

data modify storage custom_nick_name:_ __init__ set value 1b