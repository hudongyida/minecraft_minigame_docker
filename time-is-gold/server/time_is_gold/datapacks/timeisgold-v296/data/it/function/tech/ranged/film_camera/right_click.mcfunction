function it:tech/utils/detect/right_click {advancement:"it:ranged/film_camera_right_click", item:player_head, item_tag:film_camera, tag:item.film_camera.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.film_camera.fail, passTag:item.film_camera.use, inputTag:item.film_camera.pre, scoreboard:item.film_camera.cooldown, status:0}
tag @s[tag=item.film_camera.fail] remove item.film_camera.fail

execute as @s[tag=item.film_camera.use] run function it:tech/utils/use_cost/time {cost:30}
execute as @s[tag=item.film_camera.use] run function it:tech/utils/cooldown/init {scoreboard:item.film_camera.cooldown, value:20}
execute as @s[tag=item.film_camera.use] at @s run function it:tech/ranged/film_camera/operation/init

# SFX
execute as @s[tag=item.film_camera.use] at @s run playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 2

# VFX
execute as @s[tag=item.film_camera.use] at @s positioned ~ ~1.5 ~ run particle flash ^ ^ ^0.8 0 0 0 0 2 force

tag @s[tag=item.film_camera.use] remove item.film_camera.use