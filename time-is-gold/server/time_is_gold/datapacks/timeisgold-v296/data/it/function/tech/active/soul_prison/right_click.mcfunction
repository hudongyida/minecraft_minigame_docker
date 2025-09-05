function it:tech/utils/detect/right_click {advancement:"it:active/soul_prison_right_click", item:soul_lantern, item_tag:soul_prison, tag:item.soul_prison.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.soul_prison.fail, passTag:item.soul_prison.use, inputTag:item.soul_prison.pre, scoreboard:item.soul_prison.cooldown, status:1}
tag @s[tag=item.soul_prison.fail] remove item.soul_prison.fail

execute as @s[tag=item.soul_prison.use] run function it:tech/utils/cooldown/init {scoreboard:item.soul_prison.cooldown, value:1200}

execute as @s[tag=item.soul_prison.use] at @s positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["item.soul_prison.marker.temp"]}
execute as @s[tag=item.soul_prison.use] at @s positioned ~ ~1 ~ run scoreboard players operation @n[type=marker,tag=item.soul_prison.marker.temp,distance=..0.5] playerid = @s playerid
execute as @s[tag=item.soul_prison.use] at @s positioned ~ ~1 ~ rotated as @s run rotate @n[type=marker,tag=item.soul_prison.marker.temp,distance=..0.5] ~ 0
execute as @s[tag=item.soul_prison.use] at @s positioned ~ ~1 ~ as @n[type=marker,tag=item.soul_prison.marker.temp,distance=..0.5] rotated as @s run function it:tech/active/soul_prison/summon

tag @s[tag=item.soul_prison.use] remove item.soul_prison.use