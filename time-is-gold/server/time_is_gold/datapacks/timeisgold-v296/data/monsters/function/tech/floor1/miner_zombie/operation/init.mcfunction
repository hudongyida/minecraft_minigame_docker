# 실행 인자: 능력을 사용하는 miner_zombie 엔티티

execute at @s anchored eyes run rotate @s facing entity @p eyes
execute at @s anchored eyes run function monsters:tech/floor1/miner_zombie/tracking_object_call

# SFX
execute at @s run playsound entity.generic.eat player @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 2 1

# VFX
execute at @s run particle enchanted_hit ~ ~1.25 ~ 0.2 0.2 0.2 0.1 8 force

tag @s remove miner_zombie.ability_enabled
data remove entity @s equipment.mainhand
scoreboard players set @s monsters.floor1.miner_zombie.recharge 60