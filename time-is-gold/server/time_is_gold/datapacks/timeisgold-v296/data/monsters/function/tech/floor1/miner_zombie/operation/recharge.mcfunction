data modify entity @s equipment.mainhand set value {id:"minecraft:iron_pickaxe",count:1b,components:{attribute_modifiers:[{id:"miner_zombie_handitem_damage", type:"minecraft:attack_damage",amount:0, operation:"add_value"}]}}
playsound block.anvil.use block @a ~ ~ ~ 1 1.2 0
particle block{block_state:stone} ~ ~1 ~ 0.3 0.2 0.3 0.1 5 force
particle lava ~ ~1.5 ~ 0 0 0 1 1 force
scoreboard players reset @s monsters.floor1.miner_zombie.recharge