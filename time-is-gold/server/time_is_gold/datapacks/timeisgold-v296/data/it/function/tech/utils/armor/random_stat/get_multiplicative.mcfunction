# $(slot)   - 갑옷 슬롯 이름(head, chest, legs, feet)

$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:0}] run scoreboard players set @s item.utils.armor.randomizer 0
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:0b}] run scoreboard players set @s item.utils.armor.randomizer 0
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:1}] run scoreboard players set @s item.utils.armor.randomizer 0
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:1b}] run scoreboard players set @s item.utils.armor.randomizer 0
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:2}] store result score @s item.utils.armor.randomizer run random value 5..10
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:2b}] store result score @s item.utils.armor.randomizer run random value 5..10
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:3}] store result score @s item.utils.armor.randomizer run random value 15..25
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:3b}] store result score @s item.utils.armor.randomizer run random value 15..25
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:4}] store result score @s item.utils.armor.randomizer run random value 30..40
$execute if items entity @s armor.$(slot) *[custom_data~{itemRarity:4b}] store result score @s item.utils.armor.randomizer run random value 30..40