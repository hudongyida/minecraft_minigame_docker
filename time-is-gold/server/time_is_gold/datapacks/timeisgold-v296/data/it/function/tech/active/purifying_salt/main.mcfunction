function it:tech/utils/cooldown/tick {scoreboard:item.purifying_salt.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/purifying_salt/display_ui

# HUD
execute as @a if score @s item.purifying_salt.tick matches 1.. if predicate it:sneaking if items entity @s weapon.mainhand *[custom_data~{item:purifying_salt}] run title @s actionbar [{"text": "伤害加成: ","color": "gray"},{"text": "+","color": "dark_aqua"},{"score": {"name": "@s", "objective": "item.purifying_salt.damage_bonus"},"color": "dark_aqua"},{"text": "%","color": "dark_aqua"}]

execute as @a if score @s item.purifying_salt.tick matches 1.. run scoreboard players remove @s item.purifying_salt.tick 1
execute as @a if score @s item.purifying_salt.tick matches 0 run function it:tech/active/purifying_salt/reset_ability