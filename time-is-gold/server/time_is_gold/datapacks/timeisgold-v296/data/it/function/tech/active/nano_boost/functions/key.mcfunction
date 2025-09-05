execute as @s if items entity @s weapon.mainhand *[custom_data~{item:nano_boost}] run return run tag @s add item.nano_boost.detect
tag @s add item.nano_boost.self