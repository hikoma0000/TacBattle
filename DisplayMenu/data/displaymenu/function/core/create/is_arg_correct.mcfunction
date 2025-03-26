#> displaymenu:core/create/is_arg_correct
#
# 必要な引数があるかどうかチェックし、ない場合エラーか初期値を入力
#
# @input storage displaymenu:_ temp.input
#
# @within function displaymenu:api/create


execute unless data storage displaymenu:_ temp.input.MainHeight run data modify storage displaymenu:_ temp.input.MainHeight set value 5f
execute unless data storage displaymenu:_ temp.input.MainWidth run data modify storage displaymenu:_ temp.input.MainWidth set value 10f
execute unless data storage displaymenu:_ temp.input.MainDisplayColor run data modify storage displaymenu:_ temp.input.MainDisplayColor set value "#acb3b7"
execute unless data storage displaymenu:_ temp.input.MainDisplayOpacity run data modify storage displaymenu:_ temp.input.MainDisplayOpacity set value 240
execute unless data storage displaymenu:_ temp.input.BorderColor run data modify storage displaymenu:_ temp.input.BorderColor set value "#b8b8b8"
execute unless data storage displaymenu:_ temp.input.Title run data modify storage displaymenu:_ temp.input.Title set value "Display Menu"
execute unless data storage displaymenu:_ temp.input.Icon run data modify storage displaymenu:_ temp.input.Icon set value {id: "grass_block", component:{}, view:"isometric"}
execute unless data storage displaymenu:_ temp.input.Billboard run data modify storage displaymenu:_ temp.input.Billboard set value "fixed"
execute unless data storage displaymenu:_ temp.input.HitBoxPosition run data modify storage displaymenu:_ temp.input.HitBoxPosition set value "center"
execute unless data storage displaymenu:_ temp.input.Borderless run data modify storage displaymenu:_ temp.input.Borderless set value false


execute unless data storage displaymenu:_ temp.input.CanMenuClose run data modify storage displaymenu:_ temp.input.CanMenuClose set value true

