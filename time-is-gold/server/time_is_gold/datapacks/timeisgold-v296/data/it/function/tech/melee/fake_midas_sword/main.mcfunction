execute as @a if items entity @s weapon.mainhand golden_sword[custom_data~{item:fake_midas_sword}] run tag @s add item.fake_midas_sword.held

execute as @a[tag=item.fake_midas_sword.held] run function it:tech/utils/count/item_in_inventory {scoreboard:item.fake_midas_sword.time_crystal_count, item_id:gold_ingot, item_tag:time_crystal}
execute as @a[tag=item.fake_midas_sword.held] if score @s item.fake_midas_sword.time_crystal_count matches 6.. run scoreboard players set @s item.fake_midas_sword.time_crystal_count 6
execute as @a[tag=item.fake_midas_sword.held] at @s unless score @s item.fake_midas_sword.time_crystal_count = @s item.fake_midas_sword.time_crystal_previous run function it:tech/melee/fake_midas_sword/update_attribute

tag @a[tag=item.fake_midas_sword.held] remove item.fake_midas_sword.held