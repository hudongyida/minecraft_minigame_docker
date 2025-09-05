# 실행 인자: @e[type=marker,tag=dungeon.special_rooms.minesweeper.reward_display.marker]

tag @s add dungeon.special_rooms.minesweeper.reward_display.marker.fail
scoreboard players set @s dungeon.special_rooms.minesweeper.reward_display.tick 80
execute as @s at @s run kill @e[type=block_display,tag=dungeon.special_rooms.minesweeper.reward_display.block_display.tnt,distance=..5]
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~ ~ run summon tnt ~ ~ ~ {Tags:[dungeon.special_rooms.minesweeper.reward_display.primed_tnt],fuse:80,NoGravity:true,explosion_power:0}
execute align xyz positioned ~0.5 ~ ~0.5 positioned ~ ~2 ~ run summon tnt ~ ~ ~ {Tags:[dungeon.special_rooms.minesweeper.reward_display.primed_tnt],fuse:80,NoGravity:true,explosion_power:0}

# SFX
execute positioned ~ ~ ~ run playsound entity.tnt.primed block @a ~ ~ ~ 2 1 1