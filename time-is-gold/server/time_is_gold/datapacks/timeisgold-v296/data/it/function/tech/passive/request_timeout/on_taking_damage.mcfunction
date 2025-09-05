function it:tech/utils/detect/slot {item:magenta_glazed_terracotta,item_tag:request_timeout,tag:item.request_timeout.damage,slot:5}
execute as @s[tag=item.request_timeout.damage] at @s run scoreboard players operation @s item.request_timeout.damage_stored += @s system.time.damage_taken
execute as @s[tag=item.request_timeout.damage] at @s run scoreboard players set @s system.time.damage_taken 0
tag @s[tag=item.request_timeout.damage] remove item.request_timeout.damage