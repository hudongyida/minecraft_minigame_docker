# 실행 인자: 열린 문 인터랙션 엔티티

tag @s add dungeon.door.open

# 문 반대편 인터랙션에 태그 부여
execute at @s if entity @s positioned ^ ^ ^4 as @n[type=interaction,tag=dungeon.door,dx=0,distance=..3] if entity @s run tag @s add dungeon.door.open.opposite

# 방의 중심에 위치한 아머 스탠드를 찾고 해당 위치에 클리어 체크 마커 소환
execute at @s positioned ^ ^ ^17 positioned ~-3 ~ ~-3 as @n[type=armor_stand,dx=7,dy=1024,dz=7,tag=dungeon.room.center] at @s run function system:dungeon/rooms/door_open

# SFX
execute at @s run playsound minecraft:block.wooden_door.open block @a[distance=..10] ~ ~ ~ 1 0.5 0