function it:tech/utils/detect/slot {item:iron_shovel, slot:6, item_tag:sledgehammer, tag:item.sledgehammer.active}

# 통로 반대편 문 위치에서 가장 가까운 몬스터 스턴
execute as @s[tag=item.sledgehammer.active] at @s at @n[type=interaction,tag=dungeon.door.open,tag=!dungeon.door.open.opposite,distance=..10] positioned ^ ^ ^4 at @e[type=interaction,tag=dungeon.door.open.opposite,dx=0,distance=..3] as @n[tag=monster,distance=..10] if entity @s if predicate it:50pc run function it:tech/utils/effect/stun/init {value:160}
tag @s[tag=item.sledgehammer.active] remove item.sledgehammer.active