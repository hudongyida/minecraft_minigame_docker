execute store result score @s item.rosegold.type run random value 0..1

execute if score @s item.rosegold.type matches 0 at @s run function it:tech/passive/rosegold/operation/zombie
execute if score @s item.rosegold.type matches 0 at @s run function it:tech/utils/ally/init {inputTag:monster.ally.assign, type:zombie}
execute if score @s item.rosegold.type matches 0 at @s positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=zombie,tag=item.rosegold.servant.uninitialized,dx=1,dy=1,dz=1] run function it:tech/passive/rosegold/operation/set_data

execute if score @s item.rosegold.type matches 1 at @s run function it:tech/passive/rosegold/operation/skeleton
execute if score @s item.rosegold.type matches 1 at @s run function it:tech/utils/ally/init {inputTag:monster.ally.assign, type:skeleton}
execute if score @s item.rosegold.type matches 1 at @s positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=skeleton,tag=item.rosegold.servant.uninitialized,dx=1,dy=1,dz=1] run function it:tech/passive/rosegold/operation/set_data

# SFX
execute at @s run playsound minecraft:block.chain.break block @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 1 0.5

# VFX
execute at @s run particle falling_dust{block_state:"minecraft:gold_block"} ~ ~1 ~ 0.2 0.5 0.2 0.1 16 force
execute at @s run particle item{item:{id:"minecraft:raw_gold"}} ~ ~1 ~ 0.2 0.5 0.2 0.05 16 force

# HUD
title @s actionbar {"translate":"item.rosegold.notify.activated"}