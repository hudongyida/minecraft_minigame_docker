# 아이템 쿨다운을 조작하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

# 델타값 단위: 틱
scoreboard players set @s combat.cooldown_modifier_delta 0
scoreboard players set @s combat.cooldown_modifier_multiplier 100

### SYSTEM  - - - - - - - - - - - - - - - - -



### ACTIVE ITEMS ADD  - - - - - - - - - - - -



###被动物品S ADD - - - - - - - - - - - -

# overclock_usb
execute as @s[scores={item.overclock_usb.active=1..}] run scoreboard players add @s combat.cooldown_modifier_delta 100

# tome_of_superconducting
execute as @s[scores={item.tome_of_superconducting.active=1..}] run scoreboard players remove @s combat.cooldown_modifier_multiplier 50

### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

# uranium_ingot
execute as @s[scores={item.uranium_ingot.tick=1..}] run scoreboard players remove @s combat.cooldown_modifier_multiplier 25