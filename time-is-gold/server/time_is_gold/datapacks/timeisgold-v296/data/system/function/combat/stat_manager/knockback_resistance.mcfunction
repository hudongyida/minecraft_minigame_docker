# 대상의 넉백 저항을을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.knockback_resistance 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -

# chrono_anchor
execute as @s if score @s item.chrono_anchor.active matches 1 run scoreboard players set @s combat.knockback_resistance 1000

###被动物品S ADD - - - - - - - - - - - -



### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -


