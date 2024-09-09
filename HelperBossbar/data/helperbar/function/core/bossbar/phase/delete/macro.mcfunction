#> helperbar:core/bossbar/phase/delete/macro
#
# @within helperbar:api/delete


$data remove storage helperbar:_ data.$(converted_uuid)
$tag $(converted_uuid) remove helperbar.registered
$bossbar remove helperbar:$(converted_uuid)