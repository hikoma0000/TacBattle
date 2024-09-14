#> helperbar:core/bossbar/update/total_phase
#
# @within helperbar:api/update
#         helperbar:core/bossbar/register/main


$execute store result storage helperbar:_ data.$(converted_uuid).total_phase int 1 run data get storage helperbar:_ macro.phase_name.translate
execute store result storage helperbar:_ macro.total_phase int 1 run data get storage helperbar:_ macro.phase_name.translate