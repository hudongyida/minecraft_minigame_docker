# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern1.mirror_shard.marker]

execute if score @s bosses.the_shaman.pattern1.mirror_shard.tick matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern1.mirror_shard.tick 1
execute unless score @s bosses.the_shaman.pattern1.mirror_shard.tick matches 1.. run kill @s

execute at @s unless block ~ ~ ~ #it:air run kill @s
execute at @s if block ~ ~-1 ~ #it:air run kill @s

# SFX
execute at @s run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 2

execute at @s run function bosses:tech/the_shaman/pattern1/mirror_shard/apply_damage with entity @s data

execute unless score @s bosses.the_shaman.pattern1.mirror_shard.type matches 1 at @s run function bosses:tech/the_shaman/pattern1/mirror_shard/display/type0/init
execute if score @s bosses.the_shaman.pattern1.mirror_shard.type matches 1 at @s run function bosses:tech/the_shaman/pattern1/mirror_shard/display/type1/init

# 본체가 발사한 거울 파편만 2번 패턴 거울 파괴
execute unless score @s bosses.the_shaman.pattern1.mirror_shard.type matches 1 at @s positioned ~-1.5 ~-1 ~-1.5 as @e[type=marker,tag=bosses.the_shaman.pattern2.mirror.marker,dx=3,dy=5,dz=3] run function bosses:tech/the_shaman/pattern2/mirror/shatter_b with entity @s data

execute at @s run tp @s ^ ^ ^0.33