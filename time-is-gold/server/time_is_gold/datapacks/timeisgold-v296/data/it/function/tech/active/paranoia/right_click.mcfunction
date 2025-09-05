function it:tech/utils/detect/right_click {advancement:"it:active/paranoia_right_click", item:black_dye, item_tag:paranoia, tag:item.paranoia.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.paranoia.fail, passTag:item.paranoia.use, inputTag:item.paranoia.pre, scoreboard:item.paranoia.cooldown, status:1}
tag @s[tag=item.paranoia.fail] remove item.paranoia.fail

execute as @s[tag=item.paranoia.use] run function it:tech/utils/cooldown/init {scoreboard:item.paranoia.cooldown, value:100}

execute as @s[tag=item.paranoia.use] at @s positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["item.paranoia.marker.direction"]}
execute as @s[tag=item.paranoia.use] at @s positioned ~ ~1 ~ run scoreboard players operation @n[type=marker,tag=item.paranoia.marker.direction,distance=..0.5] playerid = @s playerid
execute as @s[tag=item.paranoia.use] at @s positioned ~ ~1 ~ rotated as @s run rotate @n[type=marker,tag=item.paranoia.marker.direction,distance=..0.5] ~ 0
execute as @s[tag=item.paranoia.use] at @s positioned ~ ~1 ~ as @n[type=marker,tag=item.paranoia.marker.direction,distance=..0.5] rotated as @s run function it:tech/active/paranoia/summon

tag @s[tag=item.paranoia.use] remove item.paranoia.use