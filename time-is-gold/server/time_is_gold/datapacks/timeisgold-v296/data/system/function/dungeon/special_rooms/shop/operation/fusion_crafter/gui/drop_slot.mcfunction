$execute unless items block ~ ~ ~ container.$(slot) * run return fail

$summon item ~ ~1 ~ {Tags:[dungeon.special_rooms.shop.fusion_crafter.item.drop, dungeon.special_rooms.shop.fusion_crafter.item.drop.$(slot)],Item:{id:"minecraft:stone",count:1},PickupDelay:10,Invulnerable:true}
$item replace entity @n[type=item,tag=dungeon.special_rooms.shop.fusion_crafter.item.drop.$(slot),dx=0,dy=4,dz=0] contents from block ~ ~ ~ container.$(slot)
$tag @n[type=item,tag=dungeon.special_rooms.shop.fusion_crafter.item.drop.$(slot),dx=0,dy=4,dz=0] remove dungeon.special_rooms.shop.fusion_crafter.item.drop.$(slot)
$item replace block ~ ~ ~ container.$(slot) with air