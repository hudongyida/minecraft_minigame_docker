function it:tech/utils/detect/right_click {advancement:"it:melee/reaper_scythe_right_click", item:netherite_hoe, item_tag:reaper_scythe, tag:item.reaper_scythe.pre, type:1}

# click-delay
function it:tech/utils/cooldown/check {failTag:item.reaper_scythe.first-fail, passTag:item.reaper_scythe.check, inputTag:item.reaper_scythe.pre, scoreboard:item.reaper_scythe.delay, status:0}
execute as @s[tag=item.reaper_scythe.first-fail] run return run tag @s remove item.reaper_scythe.first-fail
function it:tech/utils/cooldown/init {scoreboard:item.reaper_scythe.delay, value:10}

# Unveil
execute as @s[tag=item.reaper_scythe.check] if score @s item.reaper_scythe.veils matches 1.. run return run function it:tech/melee/reaper_scythe/gimmicks/unveil

# Veiled
function it:tech/utils/cooldown/check {failTag:item.reaper_scythe.fail, passTag:item.reaper_scythe.use, inputTag:item.reaper_scythe.check, scoreboard:item.reaper_scythe.cooldown, status:1}
execute as @s[tag=item.reaper_scythe.fail] run tag @s remove item.reaper_scythe.fail

execute as @s[tag=item.reaper_scythe.use] run scoreboard players set @s item.reaper_scythe.veils 200
execute as @s[tag=item.reaper_scythe.use] run function it:tech/utils/cooldown/init {scoreboard:item.reaper_scythe.cooldown, value:600}

# FX
execute as @s[tag=item.reaper_scythe.use] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.3 30 force
execute as @s[tag=item.reaper_scythe.use] at @s run particle minecraft:dust{color:[0.0,0.0,0.0],scale:1.5} ~ ~1.5 ~ .5 .5 .5 0.5 30 force
execute as @s[tag=item.reaper_scythe.use] at @s run playsound minecraft:entity.zombie.infect hostile @s ~ ~ ~ 1 0 1
execute as @s[tag=item.reaper_scythe.use] at @s run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 0 0

# Portal Open
execute as @s[tag=item.reaper_scythe.use] at @s run function it:tech/melee/reaper_scythe/gimmicks/portal_open

tag @s[tag=item.reaper_scythe.use] remove item.reaper_scythe.use
tag @s[tag=item.reaper_scythe.check] remove item.reaper_scythe.check