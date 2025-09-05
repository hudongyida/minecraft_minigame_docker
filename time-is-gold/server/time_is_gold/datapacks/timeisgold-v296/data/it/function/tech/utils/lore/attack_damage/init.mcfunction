# 인자: 변경할 아이템을 주로 사용하는 손에 든 플레이어
# $(offset) - lore 리스트에서 근접 공격력에 해당하는 줄 인덱스 (일반적으로 -2)

execute at @s run summon armor_stand ~ ~ ~ {Tags:["item.utils.lore.attack_damage.armor_stand"],Marker:true,Invisible:true,NoGravity:true}
execute at @s run item replace entity @n[type=armor_stand,tag=item.utils.lore.attack_damage.armor_stand,distance=..1] weapon.mainhand from entity @s weapon.mainhand
$execute at @s as @n[type=armor_stand,tag=item.utils.lore.attack_damage.armor_stand,distance=..1] run function it:tech/utils/lore/attack_damage/modify {offset:$(offset)}
execute at @s run item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=item.utils.lore.attack_damage.armor_stand,distance=..1] weapon.mainhand
execute at @s run kill @n[type=armor_stand,tag=item.utils.lore.attack_damage.armor_stand,distance=..1]