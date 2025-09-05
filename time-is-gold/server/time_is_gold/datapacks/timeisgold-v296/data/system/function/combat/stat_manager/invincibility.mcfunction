# 플레이어 무적 상태를 변경하는 아이템 능력은 반드시 여기서 관리.

execute as @s run scoreboard players set @s combat.invincibility 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# anticognition_field
execute as @s if score @s item.anticognition_field.tick matches 1.. run scoreboard players set @s combat.invincibility 1

# flag_of_command
execute as @s if score @s item.flag_of_command.invincibility matches 1 run scoreboard players set @s combat.invincibility 1

# chrono_anchor
execute as @s if score @s item.chrono_anchor.active matches 1.. run scoreboard players set @s combat.invincibility 1

###被动物品S ADD - - - - - - - - - - - -



### MELEE WEAPONS ADD - - - - - - - - - - - -

# 维度碎片
execute as @s if score @s item.dimensional_fragment.active matches 1.. run scoreboard players set @s combat.invincibility 1

### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -


