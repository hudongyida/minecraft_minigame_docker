# 실행 인자:@e[type=marker,tag=dungeon.special_rooms.minesweeper.reward_display.marker]

execute at @s run kill @e[type=block_display,tag=dungeon.special_rooms.minesweeper.reward_display.block_display.chest,distance=..5]
execute at @s run kill @e[type=block_display,tag=dungeon.special_rooms.minesweeper.reward_display.block_display.tnt,distance=..5]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run fill ~-1 ~-1 ~-1 ~1 ~3 ~1 air

execute align xyz positioned ~0.5 ~-1.5 ~0.5 run function system:dungeon/special_rooms/minesweeper/reward_display/success/summon_display
execute align xyz positioned ~0.5 ~1.5 ~0.5 run summon armor_stand ~ ~ ~ {Tags:[dungeon.special_rooms.minesweeper.reward_display.armor_stand],Invisible:true,Invulnerable:true}

# SFX
execute as @s at @s run playsound block.lantern.break block @a ~ ~ ~ 4 0.5 1

kill @s