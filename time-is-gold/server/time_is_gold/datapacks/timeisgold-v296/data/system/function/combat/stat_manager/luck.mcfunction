# **레이저 무기 전용** 사거리 스탯을 변경하는 아이템의 능력은 반드시 여기서 추가.
# it:tech에서는 아이템의 착용/활성화 여부만 감지하고, 실제 스탯 변경은 여기서!!!

execute as @s run scoreboard players set @s combat.luck 0

### ACTIVE ITEMS ADD  - - - - - - - - - - - -



###被动物品S ADD - - - - - - - - - - - -

# dreamcatcher
execute as @s[scores={item.dreamcatcher.active=1}] run scoreboard players add @s combat.luck 1

# giant_clover
execute as @s if items entity @s container.* *[custom_data~{item:giant_clover}] run scoreboard players add @s combat.luck 3
execute as @s if items entity @s weapon.offhand *[custom_data~{item:giant_clover}] run scoreboard players add @s combat.luck 3

# single_leaf_clover
execute as @s if items entity @s container.* *[custom_data~{item:single_leaf_clover}] run scoreboard players add @s combat.luck 7
execute as @s if items entity @s weapon.offhand *[custom_data~{item:single_leaf_clover}] run scoreboard players add @s combat.luck 7

# metal_detector
execute as @s if items entity @s container.* *[custom_data~{item:metal_detector}] run scoreboard players add @s combat.luck 2
execute as @s if items entity @s weapon.offhand *[custom_data~{item:metal_detector}] run scoreboard players add @s combat.luck 2

### MELEE WEAPONS ADD - - - - - - - - - - - -



### RANGED WEAPONS ADD  - - - - - - - - - - -



### WAND WEAPONS ADD  - - - - - - - - - - - -



### ARMOR ITEMS ADD - - - - - - - - - - - - -



### EXPENDABLES ADD - - - - - - - - - - - - -