scoreboard players reset @s item.throwing_knife.ability_tick
execute at @s anchored eyes positioned ^ ^ ^1 run function it:tech/melee/throwing_knife/throw_item_call
function it:tech/utils/cooldown/init {scoreboard:item.throwing_knife.cooldown, value:120}
effect clear @s slowness

# SFX
execute at @s run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 0.75 0.8