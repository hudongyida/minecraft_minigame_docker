effect give @s absorption infinite 255 true
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
scoreboard players operation @s bosses.automaton.pattern4.countdown_max_tick = #SYSTEM bosses.automaton.pattern4.countdown_max_tick
scoreboard players operation @s bosses.automaton.pattern4.countdown_tick = #SYSTEM bosses.automaton.pattern4.countdown_max_tick
scoreboard players operation @s bosses.automaton.pattern4.lost_hp = @s bosses.automaton.pattern4.max_hp
scoreboard players operation @s bosses.automaton.pattern4.lost_hp -= @s bosses.automaton.pattern4.current_hp
scoreboard players operation @s bosses.automaton.pattern4.lost_hp /= #10 scoreboardConstant
scoreboard players add @s bosses.automaton.pattern4.lost_hp 50
execute store result entity @s AbsorptionAmount float 1 run scoreboard players get @s bosses.automaton.pattern4.lost_hp
scoreboard players operation @s bosses.automaton.pattern4.shield_hp = @s bosses.automaton.pattern4.lost_hp

function bosses:tech/utils/bossbar/manager {function:"bosses:tech/automaton/pattern4/bossbar_shield/init", id:1}

# SFX
execute at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1 0.75

# VFX
data modify storage timeisgold:function_api stack append value {duration:200,radius:2,distance:1,clock_r:1.0,clock_g:0.1,clock_b:0.1}
execute store result storage timeisgold:function_api stack[-1].duration int 1 run scoreboard players get @s bosses.automaton.pattern4.countdown_max_tick
execute as @s at @s positioned ~ ~ ~ run function system:vfx/clock_rotate/init with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

tag @s add boss.automaton.pattern4.active
tag @s remove boss.automaton.pattern4.init

