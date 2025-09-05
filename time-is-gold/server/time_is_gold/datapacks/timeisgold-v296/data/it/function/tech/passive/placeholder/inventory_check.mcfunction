$scoreboard players set @s item.placeholder.slot_check $(slot)
execute unless score @s item.placeholder.slot_check = @s item.placeholder.slot run return fail

$function it:tech/utils/detect/in_inventory {item:$(item_tag), output:$(tag)}