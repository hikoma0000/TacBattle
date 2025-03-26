#> cnn:core/main/head
#
# 召喚したplayer_headに対する処理
#
# @within
#    function cnn:core/main/
#    funciotn cnn:core/main/clear


# player_headからplayer_nameを取り出し
data modify storage custom_nick_name:_ player_name set from entity @s Item.components."minecraft:profile".name

# 用済み
kill @s