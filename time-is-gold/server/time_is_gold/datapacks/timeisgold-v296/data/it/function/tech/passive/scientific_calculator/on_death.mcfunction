# 실행 인자: 사망 처리된 플레이어

execute as @s run function it:tech/utils/detect/slot {item:iron_door, slot:7, item_tag:scientific_calculator, tag:item.scientific_calculator.active}

execute as @s[tag=item.scientific_calculator.active] run function it:tech/utils/use_cost/item_hotbar {slot:7}
execute as @s[tag=item.scientific_calculator.active] at @s run function it:tech/passive/scientific_calculator/operation

# SFX
execute as @s[tag=item.scientific_calculator.active] at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 0.5

# VFX
execute as @s[tag=item.scientific_calculator.active] at @s run particle explosion_emitter ~ ~ ~ 3 2 3 0 10 force

tag @s[tag=item.scientific_calculator.active] remove item.scientific_calculator.active