# 실행 인자: 데미지를 받은 플레이어

# 시간 변환 능력이 사용 불가능할 경우 실패
execute unless function it:tech/utils/ability/time_converting_check run return fail

scoreboard players operation @s item.time_concentrator.damage_stored += @s system.time.damage_taken
execute unless score @s item.time_concentrator.damage_stored matches 600.. run return fail

loot give @s loot it:item/expendables/legendary/time_droplet
scoreboard players remove @s item.time_concentrator.damage_stored 600

# SFX
execute at @s run playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 0.5 .75 0.5

# HUD
title @s actionbar {"translate": "item.time_concentrator.notify.active"}