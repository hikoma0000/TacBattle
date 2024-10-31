#> area_selector:core/decision/tag
#
# @within area_selector:core/decision/macro


$tag $(start_position) add area_selector.decision
$tag $(start_position) remove area_selector.$(conved_player_uuid)

$tag $(end_position) add area_selector.decision
$tag $(end_position) remove area_selector.$(conved_player_uuid)

$tag $(selecting_area_root) add area_selector.decision
$tag $(selecting_area_root) remove area_selector.$(conved_player_uuid)
$execute as $(selecting_area_root) on passengers run tag @s add area_selector.decision
$execute as $(selecting_area_root) on passengers run tag @s remove area_selector.$(conved_player_uuid)
$execute as $(selecting_area_root) on passengers on passengers run tag @s add area_selector.decision
$execute as $(selecting_area_root) on passengers on passengers run tag @s remove area_selector.$(conved_player_uuid)