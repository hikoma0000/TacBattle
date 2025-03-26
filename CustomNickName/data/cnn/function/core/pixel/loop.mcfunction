#> cnn:core/pixel/rec
#
# プレイヤーの名前の合計ピクセル数を計算
#
# @within function cnn:core/main/


# 保存しておいて、後で同じかチェックする
scoreboard players operation $else cnn.main = $total_pixel cnn.main

# player_nameの一文字目をwordに入れる
data modify storage custom_nick_name:_ word set string storage custom_nick_name:_ __temp__.name 0 1

# 文字幅が特殊なものはここで処理
execute if data storage custom_nick_name:_ {word:"i"} run scoreboard players add $total_pixel cnn.main 1
execute if data storage custom_nick_name:_ {word:"l"} run scoreboard players add $total_pixel cnn.main 2
execute if data storage custom_nick_name:_ {word:"I"} run scoreboard players add $total_pixel cnn.main 3
execute if data storage custom_nick_name:_ {word:"t"} run scoreboard players add $total_pixel cnn.main 3
execute if data storage custom_nick_name:_ {word:"f"} run scoreboard players add $total_pixel cnn.main 4
execute if data storage custom_nick_name:_ {word:"k"} run scoreboard players add $total_pixel cnn.main 4

# 保存されていたものと値が同じ = 特殊処理の際に数値が追加されていない = 文字幅が特殊ではないので5を追加
execute if score $else cnn.main = $total_pixel cnn.main run scoreboard players add $total_pixel cnn.main 5

# player_nameの一文字目を消す
data modify storage custom_nick_name:_ __temp__.name set string storage custom_nick_name:_ __temp__.name 1

# player_nameがなくなるまで再帰
execute unless data storage custom_nick_name:_ {__temp__:{name: ""}} run function cnn:core/pixel/loop