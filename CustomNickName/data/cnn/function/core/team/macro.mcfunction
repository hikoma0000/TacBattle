#> cnn:core/team/create
#
# ニックネーム用teamを作成
#
# @within function funcion cnn:core/main/


$team add cnn_$(player_name)

$team join cnn_$(player_name) $(player_name)

# ネガティブスペースで画面外へぶっ飛ばす
$team modify cnn_$(player_name) prefix {"translate":"space.-max"}

# ただのスペースで画面内へ戻し、位置調整後、偽の名前をセット
$team modify cnn_$(player_name) suffix [{"translate":"space.max"},{"translate":"space.-$(total_pixel)"},{"text":"$(nick_name)"}]
