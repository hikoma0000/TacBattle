#> tacbattle:api/reinstall
#
# @api


scoreboard objectives remove tacb.sys
scoreboard objectives add tacb.sys dummy
scoreboard objectives remove tacb.const
scoreboard objectives add tacb.const dummy
scoreboard objectives remove tacb.snk
scoreboard objectives add tacb.snk minecraft.custom:sneak_time
scoreboard objectives remove tacb.mrb
scoreboard objectives add tacb.mrb dummy
scoreboard objectives remove tacb.mrb_lock
scoreboard objectives add tacb.mrb_lock dummy


data remove storage tacb:_ temp

data modify storage tacb:_ __init__ set value 1b

say tacbattle reinstall