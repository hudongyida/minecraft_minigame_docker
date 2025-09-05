# 암시장 상인 상호작용 대사 출력

execute as @e[type=wither_skeleton,tag=dungeon.special_rooms.quiet_forest.shopkeeper.uninitialized] run function system:dungeon/special_rooms/quiet_forest/operation/rotate_to_door

execute as @a[scores={dungeon.special_rooms.quiet_forest.dialogue_cooldown=1..}] run scoreboard players remove @s dungeon.special_rooms.quiet_forest.dialogue_cooldown 1

execute as @e[type=interaction,tag=dungeon.special_rooms.quiet_forest.shopkeeper_interaction] if function system:utils/interaction/interaction_check on target unless score @s dungeon.special_rooms.quiet_forest.dialogue_cooldown matches 1.. run tag @s add dungeon.special_rooms.quiet_forest.shopkeeper_dialogue
execute as @e[type=interaction,tag=dungeon.special_rooms.quiet_forest.shopkeeper_interaction] if function system:utils/interaction/interaction_check run data remove entity @s interaction
execute as @e[type=interaction,tag=dungeon.special_rooms.quiet_forest.shopkeeper_interaction] if function system:utils/interaction/attack_check on attacker unless score @s dungeon.special_rooms.quiet_forest.dialogue_cooldown matches 1.. run tag @s add dungeon.special_rooms.quiet_forest.shopkeeper_dialogue
execute as @e[type=interaction,tag=dungeon.special_rooms.quiet_forest.shopkeeper_interaction] if function system:utils/interaction/attack_check run data remove entity @s attack

execute as @a[tag=dungeon.special_rooms.quiet_forest.shopkeeper_dialogue] run function system:dungeon/special_rooms/quiet_forest/operation/player_dialogue