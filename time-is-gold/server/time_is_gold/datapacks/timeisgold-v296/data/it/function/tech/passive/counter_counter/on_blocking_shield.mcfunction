function it:tech/utils/detect/slot {item:crafter, item_tag:counter_counter, slot:8, tag:item.counter_counter.shield_blocked}
scoreboard players add @s[tag=item.counter_counter.shield_blocked] item.counter_counter.stack_count 2
scoreboard players operation @s[tag=item.counter_counter.shield_blocked] item.counter_counter.stack_count < #50 scoreboardConstant

tag @s remove item.counter_counter.shield_blocked
advancement revoke @s only it:passive/counter_counter_shield