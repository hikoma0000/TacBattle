#> cnn:api/apply
#
# 入力された文字列をニックネームとして適用
#
# @input
#   storage custom_nick_name: 
#       input: string
#           ニックネーム
#
# @api


# 初期化していない場合初期化
execute unless data storage custom_nick_name:_ {__init__:1b} run function cnn:api/init

# メインの処理
function cnn:core/main/