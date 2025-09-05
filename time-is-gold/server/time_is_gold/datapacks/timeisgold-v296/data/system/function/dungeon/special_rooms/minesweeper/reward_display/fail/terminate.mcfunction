# 실행 인자: @e[type=marker,tag=dungeon.special_rooms.minesweeper.reward_display.marker]

kill @e[type=block_display,tag=dungeon.special_rooms.minesweeper.reward_display.block_display.chest,distance=..5]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run fill ~-1 ~-1 ~-1 ~1 ~3 ~1 air
execute align xyz positioned ~0.5 ~-1.5 ~0.5 run function system:dungeon/special_rooms/minesweeper/reward_display/fail/summon_display

# SFX
execute positioned ~ ~ ~ run playsound entity.generic.explode block @a ~ ~ ~ 2 1 1

# VFX
execute positioned ~ ~1 ~ run particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 0.1 30 force

kill @s