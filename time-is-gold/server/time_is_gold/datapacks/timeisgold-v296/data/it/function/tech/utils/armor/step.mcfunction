# 실행 인자: @a

execute if items entity @s armor.* *[custom_data~{armor:{uninitialized:true}}] run function it:tech/utils/armor/random_stat/init

execute if items entity @s armor.head *[custom_data~{itemType:3}] run function it:tech/utils/armor/update_lore/helmet/init
execute if items entity @s armor.head *[custom_data~{itemType:3b}] run function it:tech/utils/armor/update_lore/helmet/init
execute if items entity @s armor.chest *[custom_data~{itemType:3}] run function it:tech/utils/armor/update_lore/chestplate/init
execute if items entity @s armor.chest *[custom_data~{itemType:3b}] run function it:tech/utils/armor/update_lore/chestplate/init
execute if items entity @s armor.legs *[custom_data~{itemType:3}] run function it:tech/utils/armor/update_lore/leggings/init
execute if items entity @s armor.legs *[custom_data~{itemType:3b}] run function it:tech/utils/armor/update_lore/leggings/init
execute if items entity @s armor.feet *[custom_data~{itemType:3}] run function it:tech/utils/armor/update_lore/boots/init
execute if items entity @s armor.feet *[custom_data~{itemType:3b}] run function it:tech/utils/armor/update_lore/boots/init
