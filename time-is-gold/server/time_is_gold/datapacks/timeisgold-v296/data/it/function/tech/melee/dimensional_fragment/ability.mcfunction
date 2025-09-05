# 함수 실행 인자 -> item.dimensional_fragment.tick이 1 이상인 플레이어

# 포션 효과 부여
#effect give @s glowing 1 1 true
effect give @s weakness 1 255 true
effect give @s speed 1 2 true
effect give @s fire_resistance 1 2 true

# 충돌 시 취약 효과 부여 및 SFX
execute as @s at @s as @e[tag=monster,distance=..1.5] at @s run playsound entity.guardian.attack hostile @a ~ ~ ~ 0.5 2
execute as @s at @s as @e[tag=monster,distance=..1.5] run scoreboard players set @s item.dimensional_fragment.fragility_tick 200

# VFX (vibration particle is just sibal)
# marker -> vibration 파티클의 목표 위치(절대좌표 필요)
execute as @s at @s run summon marker ~ ~-1 ~ {Tags:["item.dimensional_fragment.marker.trail"],data:{x:0,y:0,z:0}}
execute as @s at @s positioned ~ ~-1 ~ as @n[type=marker,tag=item.dimensional_fragment.marker.trail,distance=..0.5] store result entity @s data.x int 1 run data get entity @s Pos[0]
execute as @s at @s positioned ~ ~-1 ~ as @n[type=marker,tag=item.dimensional_fragment.marker.trail,distance=..0.5] store result entity @s data.y int 1 run data get entity @s Pos[1]
execute as @s at @s positioned ~ ~-1 ~ as @n[type=marker,tag=item.dimensional_fragment.marker.trail,distance=..0.5] store result entity @s data.z int 1 run data get entity @s Pos[2]
execute as @s at @s positioned ~ ~-1 ~ run function it:tech/melee/dimensional_fragment/particle with entity @n[type=marker,tag=item.dimensional_fragment.marker.trail,distance=..0.5] data
kill @e[type=marker,tag=item.dimensional_fragment.marker.trail]