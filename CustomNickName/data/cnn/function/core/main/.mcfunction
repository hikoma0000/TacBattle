#> cnn:core/main/
#
# ニックネームを適用するメイン処理
#
# @within function cnn:api/apply


# プレイヤーの名前を取得
summon minecraft:item_frame ~ ~500 ~ {Invisible:true,Fixed:true,Tags:[cnn.head_frame]}
execute positioned ~ ~500 ~ align xyz run loot replace entity @e[dx=0,type=item_frame,tag=cnn.head_frame,limit=1] container.0 loot cnn:head
execute positioned ~ ~500 ~ align xyz as @e[dx=0,type=item_frame,tag=cnn.head_frame,limit=1] run function cnn:core/main/head

# 処理用に一時的に移動＆文字間の1ピクセルを計算にいれるために、player_nameの長さをスコアに代入
data modify storage custom_nick_name:_ __temp__.name set from storage custom_nick_name:_ player_name
execute store result score $total_pixel cnn.main run data get storage custom_nick_name:_ player_name

# プレイヤーの名前の合計ピクセル数を計算
function cnn:core/pixel/loop

# 名前変更用teamを作成し加入した後、prefixとsuffixを変更
# マクロ用に移動
data modify storage custom_nick_name:_ macro.nick_name set from storage custom_nick_name: input
data modify storage custom_nick_name:_ macro.player_name set from storage custom_nick_name:_ player_name
execute store result storage custom_nick_name:_ macro.total_pixel int 1 run scoreboard players get $total_pixel cnn.main
function cnn:core/team/macro with storage custom_nick_name:_ macro