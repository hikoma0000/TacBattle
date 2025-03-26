#> displaymenu:core/util/uuid_convert
#
# @internal


# int_array型のUUIDを16進数にする
data modify storage gu:main in set from entity @s UUID
function gu:safe_convert
data modify storage displaymenu:_ macro.converted_uuid set from storage gu:main out