# 중력력을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.gravityX1000 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -



###被动物品S ADD - - - - - - - - - - - -

# chiseled_comet
execute as @s[scores={item.chiseled_comet.active=1..}] run scoreboard players remove @s combat.gravityX1000 50

# gliding
execute as @s[scores={item.gliding.active=1}] run scoreboard players set @s combat.gravityX1000 -70

### MELEE WEAPONS ADD - - - - - - - - - - - -

# greatsword
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:greatsword}] run scoreboard players add @s combat.gravityX1000 30

### RANGED WEAPONS ADD  - - - - - - - - - - -

# ballista
execute as @s if items entity @s weapon.* *[custom_data~{item:ballista}] run scoreboard players add @s combat.gravityX1000 10

### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -

