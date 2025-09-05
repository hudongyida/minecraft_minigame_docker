$execute as @s run function monsters:tech/global/utils/monster_damage/magic/init {value:20.0,monsteruuid:"$(monsteruuid)"}
scoreboard players add @s monsters.floor2.riftmancer.damage_amplifier.tick 100

# SFX
execute at @s run playsound minecraft:entity.warden.attack_impact hostile @s ~ ~ ~ 0.5 1