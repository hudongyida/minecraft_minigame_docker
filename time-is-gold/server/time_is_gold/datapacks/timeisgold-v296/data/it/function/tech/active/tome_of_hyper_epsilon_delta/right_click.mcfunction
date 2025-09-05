function it:tech/utils/detect/right_click {advancement:"it:active/tome_of_hyper_epsilon_delta_right_click", item:book, item_tag:tome_of_hyper_epsilon_delta, tag:item.tome_of_hyper_epsilon_delta.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.tome_of_hyper_epsilon_delta.fail, passTag:item.tome_of_hyper_epsilon_delta.use, inputTag:item.tome_of_hyper_epsilon_delta.pre, scoreboard:item.tome_of_hyper_epsilon_delta.cooldown, status:0}
tag @s[tag=item.tome_of_hyper_epsilon_delta.fail] remove item.tome_of_hyper_epsilon_delta.fail

execute as @s[tag=item.tome_of_hyper_epsilon_delta.use] run function it:tech/utils/cooldown/init {scoreboard:item.tome_of_hyper_epsilon_delta.cooldown, value:10}
execute as @s[tag=item.tome_of_hyper_epsilon_delta.use] at @s as @e[tag=monster,tag=!boss,distance=..8] run function it:tech/active/tome_of_hyper_epsilon_delta/apply_effect
execute as @s[tag=item.tome_of_hyper_epsilon_delta.use] at @s run function it:tech/active/tome_of_hyper_epsilon_delta/modify_durability

# SFX
execute as @s[tag=item.tome_of_hyper_epsilon_delta.use] at @s run playsound block.conduit.deactivate block @a ~ ~ ~ 0.5 1 0.5

# VFX
execute as @s[tag=item.tome_of_hyper_epsilon_delta.use] at @s positioned ~ ~ ~ run function system:vfx/expand_circle/init {R:0.33, G:0, B:0.05, range:10, step:5}

tag @s[tag=item.tome_of_hyper_epsilon_delta.use] remove item.tome_of_hyper_epsilon_delta.use