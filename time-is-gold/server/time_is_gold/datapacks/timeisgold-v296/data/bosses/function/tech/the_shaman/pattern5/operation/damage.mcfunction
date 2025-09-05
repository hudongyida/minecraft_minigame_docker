$function monsters:tech/global/utils/monster_damage/magic/init {value:40, monsteruuid:"$(bossuuid)"}

# VFX
execute at @s run particle minecraft:witch ~ ~ ~ 0 0 0 0.01 6 normal

# SFX
execute at @s run playsound minecraft:block.glass.break block @s ~ ~ ~ 0.5 0.5
execute at @s run playsound minecraft:entity.enderman.hurt hostile @s ~ ~ ~ 1 1

# HUD
title @s actionbar {"translate": "bosses.the_shaman.pattern5.notify.outside_border", "color": "red"}