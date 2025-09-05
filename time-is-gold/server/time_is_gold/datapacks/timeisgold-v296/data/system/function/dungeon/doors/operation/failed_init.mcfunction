# 실행 인자: 잠긴 문 인터랙션 엔티티

# SFX
execute at @s run playsound minecraft:block.wooden_door.open block @a[distance=..10] ~ ~ ~ 1 0.5 0
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..10] ~ ~ ~ 0.5 0.5 0

# VFX?
execute as @s on target at @s run title @s actionbar [{"text": "击败所有怪物以解锁此门！","color": "red"}]
execute at @s run particle minecraft:witch ~ ~2 ~ 1 1.5 1 16 32 force

data remove entity @s interaction