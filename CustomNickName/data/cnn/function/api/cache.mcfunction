#> cnn:api/reload
#
# キャッシュを削除
#
# @api


data remove storage custom_nick_name:_ __temp__
data remove storage custom_nick_name:_ macro
data remove storage custom_nick_name:_ word
data remove storage custom_nick_name:_ player_name

scoreboard players reset * cnn.main