function it:tech/utils/detect/slot {item:crafter, item_tag:counter_counter, slot:8, tag:item.counter_counter.damage_taken}
scoreboard players add @s[tag=item.counter_counter.damage_taken] item.counter_counter.stack_count 1
scoreboard players operation @s[tag=item.counter_counter.damage_taken] item.counter_counter.stack_count < #50 scoreboardConstant
tag @s remove item.counter_counter.damage_taken