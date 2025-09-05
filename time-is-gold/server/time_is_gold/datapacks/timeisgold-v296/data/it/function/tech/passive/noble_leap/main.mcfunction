execute as @a run function it:tech/utils/detect/slot {slot:5, item_tag:noble_leap, tag:item.noble_leap.active}

execute as @a if score @s item.noble_leap.tick matches 1.. run scoreboard players remove @s item.noble_leap.tick 1
execute as @a if score @s item.noble_leap.tick matches 0 run function it:tech/passive/noble_leap/operation/fail

execute as @a[tag=!item.noble_leap.active] run function it:tech/passive/noble_leap/operation/reset
execute as @a[tag=item.noble_leap.active] if score @s item.noble_leap.jump matches 1.. run function it:tech/passive/noble_leap/operation/init

execute as @a if items entity @s weapon.mainhand *[custom_data~{item:noble_leap}] run function it:tech/passive/noble_leap/operation/display_hud

tag @a[tag=item.noble_leap.active] remove item.noble_leap.active