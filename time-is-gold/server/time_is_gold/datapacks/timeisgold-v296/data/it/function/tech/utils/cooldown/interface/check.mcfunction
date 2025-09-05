# 쿨다운 아이템인지 확인하는 함수

execute as @s run tag @s add item.utils.cooldown.interface.held

execute as @s if items entity @s weapon.mainhand * run return run tag @s add item.utils.cooldown.interface.mainhand
execute as @s if items entity @s weapon.offhand * run return run tag @s add item.utils.cooldown.interface.offhand

# None
xp set @s 125 levels
xp set @s 0 points

execute as @s run tag @s remove item.utils.cooldown.interface.held