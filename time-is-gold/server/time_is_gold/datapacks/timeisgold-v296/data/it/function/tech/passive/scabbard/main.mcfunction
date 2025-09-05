function it:tech/utils/detect/offhand {item_tag:scabbard, tag:item.scabbard.active}
execute as @a[tag=!item.scabbard.active] if score @s item.scabbard.attack_speed matches 1 run scoreboard players reset @s item.scabbard.attack_speed
execute as @a[tag=item.scabbard.active] run scoreboard players set @s item.scabbard.attack_speed 1
execute as @a[tag=item.scabbard.active] unless items entity @s weapon.mainhand #minecraft:swords run scoreboard players reset @s item.scabbard.attack_speed
execute as @a[tag=item.scabbard.active] run tag @s remove item.scabbard.active