#> cnn:api/clear
#
# ニックネームを消します
#
# @api


# 初期化していない場合初期化
execute unless data storage custom_nick_name:_ {__init__:1b} run function cnn:api/init

# プレイヤーの名前を取得
summon minecraft:item_frame ~ ~500 ~ {Invisible:true,Fixed:true,Tags:[cnn.head_frame]}
execute positioned ~ ~500 ~ align xyz run loot replace entity @e[dx=0,type=item_frame,tag=cnn.head_frame,limit=1] container.0 loot cnn:head
execute positioned ~ ~500 ~ align xyz as @e[dx=0,type=item_frame,tag=cnn.head_frame,limit=1] run function cnn:core/main/head


# 消す用のマクロ
function cnn:core/main/clear with storage custom_nick_name:_