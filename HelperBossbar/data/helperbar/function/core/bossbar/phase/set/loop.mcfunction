#> helperbar:core/bossbar/phase/set/loop
#
# @within helperbar:core/bossbar/phase/set/


$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.translate append value ""
$data modify storage helperbar:_ data.$(converted_uuid)._phase_name.fallback append value ""
data modify storage helperbar:_ temp.phase_set_loop.list append value ""
execute store result storage helperbar:_ temp.phase_set_loop.length int 1 run data get storage helperbar:_ temp.phase_set_loop.list

$execute unless data storage helperbar:_ {temp:{phase_set_loop:{length:$(current_phase)}}} run function helperbar:core/bossbar/phase/set/loop with storage helperbar:_ macro