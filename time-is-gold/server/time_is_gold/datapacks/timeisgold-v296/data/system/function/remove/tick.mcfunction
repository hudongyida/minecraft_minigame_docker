# 무중력 투사체 삭제
execute at @a as @e[type=#minecraft:impact_projectiles,nbt={NoGravity:1b},distance=100..] run scoreboard players add @s system.remove.gravityless_projectile 1
execute as @e[type=#minecraft:impact_projectiles,scores={system.remove.gravityless_projectile=1..}] at @s run particle cloud ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=#minecraft:impact_projectiles,scores={system.remove.gravityless_projectile=1..}] run kill @s

# 경험치 오브 삭제
kill @e[type=minecraft:experience_orb]