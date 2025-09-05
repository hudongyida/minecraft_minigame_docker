function it:tech/utils/detect/right_click {advancement:"it:active/purifying_salt_right_click", item_tag:purifying_salt, tag:item.purifying_salt.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.purifying_salt.fail, passTag:item.purifying_salt.use, inputTag:item.purifying_salt.pre, scoreboard:item.purifying_salt.cooldown, status:1}
tag @s[tag=item.purifying_salt.fail] remove item.purifying_salt.fail

execute as @s[tag=item.purifying_salt.use] run scoreboard players set @s item.purifying_salt.cooldown 123456789
execute as @s[tag=item.purifying_salt.use] run scoreboard players set @s item.purifying_salt.tick 300
execute as @s[tag=item.purifying_salt.use] run scoreboard players set #MAX_VALUE item.purifying_salt.tick 300
execute as @s[tag=item.purifying_salt.use] at @s run function it:tech/active/purifying_salt/operation

# SFX
execute as @s[tag=item.purifying_salt.use] at @s run playsound minecraft:block.amethyst_cluster.step block @a ~ ~ ~ 1 2
execute as @s[tag=item.purifying_salt.use] at @s run playsound minecraft:block.sand.break block @a ~ ~ ~ 1 0.5
execute as @s[tag=item.purifying_salt.use] at @s run playsound minecraft:entity.allay.ambient_without_item neutral @a ~ ~ ~ 1 2

# VFX
execute as @s[tag=item.purifying_salt.use] at @s run particle snowflake ~ ~1 ~ 1 1 1 0 15 force
execute as @s[tag=item.purifying_salt.use] at @s run function system:vfx/expand_circle/init {range:10, step:10, R:0.88, G:0.88, B:1}

tag @s[tag=item.purifying_salt.use] remove item.purifying_salt.use