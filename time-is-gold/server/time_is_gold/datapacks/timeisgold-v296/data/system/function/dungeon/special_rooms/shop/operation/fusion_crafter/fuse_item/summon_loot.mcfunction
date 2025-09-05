$execute positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot $(loot_table)

# SFX
execute positioned ~ ~ ~ run playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0.75
execute positioned ~ ~ ~ run playsound minecraft:block.trial_spawner.eject_item block @s ~ ~ ~ 1 0.5

item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.8 with air