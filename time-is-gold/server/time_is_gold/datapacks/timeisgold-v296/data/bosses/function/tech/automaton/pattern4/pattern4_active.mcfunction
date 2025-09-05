execute as @s store result score @s bosses.automaton.pattern4.shield_hp run data get entity @s AbsorptionAmount
execute as @s run scoreboard players remove @s bosses.automaton.pattern4.countdown_tick 1
execute as @s run scoreboard players operation @s bosses.automaton.global.cooldown = #SYSTEM bosses.automaton.global.cooldown
execute as @s if score @s bosses.automaton.pattern4.shield_hp matches ..0 run tag @s add boss.automaton.pattern4.interrupted
execute as @s unless score @s bosses.automaton.pattern4.shield_hp matches ..0 if score @s bosses.automaton.pattern4.countdown_tick matches ..0 run tag @s add boss.automaton.pattern4.terminate

# 보스바 관리
execute as @s run function bosses:tech/utils/bossbar/manager {function:"bosses:tech/automaton/pattern4/bossbar_shield/display_shield", id:1}

# SFX
execute as @s at @s run scoreboard players operation @s bosses.automaton.pattern4.sfx_tick = @s bosses.automaton.pattern4.countdown_max_tick
execute as @s at @s run scoreboard players operation @s bosses.automaton.pattern4.sfx_tick -= @s bosses.automaton.pattern4.countdown_tick
execute as @s at @s if predicate it:20pc run function system:sfx/dynamic_pitch/init {value:bosses.automaton.pattern4.sfx_tick, max:bosses.automaton.pattern4.countdown_max_tick, function:"bosses:tech/automaton/pattern4/sfx"}

# VFX
execute as @s at @s if predicate it:20pc if score @s bosses.automaton.pattern4.countdown_tick matches 151..200 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 1 0.5 0 1 force
execute as @s at @s if predicate it:20pc if score @s bosses.automaton.pattern4.countdown_tick matches 101..150 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 1 0.5 0 2 force
execute as @s at @s if predicate it:20pc if score @s bosses.automaton.pattern4.countdown_tick matches 51..100 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 1 0.5 0 3 force
execute as @s at @s if predicate it:20pc if score @s bosses.automaton.pattern4.countdown_tick matches 1..50 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 1 0.5 0 4 force
execute as @s at @s run particle minecraft:dust{color:[1.0, 0.0, 0.0],scale:0.5} ~ ~ ~ 1 0 1 1 4 force