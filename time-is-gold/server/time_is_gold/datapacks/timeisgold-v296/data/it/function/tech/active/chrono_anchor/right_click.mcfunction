function it:tech/utils/detect/right_click {advancement:"it:active/chrono_anchor_right_click", item_tag:chrono_anchor, tag:item.chrono_anchor.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.chrono_anchor.fail, passTag:item.chrono_anchor.use, inputTag:item.chrono_anchor.pre, scoreboard:item.chrono_anchor.cooldown, status:1}
tag @s[tag=item.chrono_anchor.fail] remove item.chrono_anchor.fail

execute as @s[tag=item.chrono_anchor.use] run scoreboard players set @s item.chrono_anchor.cooldown 100000
execute as @s[tag=item.chrono_anchor.use] run scoreboard players set @s item.chrono_anchor.tick 300
execute as @s[tag=item.chrono_anchor.use] run scoreboard players set #MAX_VALUE item.chrono_anchor.tick 300

execute as @s[tag=item.chrono_anchor.use] at @s run summon marker ~ ~ ~ {Tags:["item.chrono_anchor.marker","item.chrono_anchor.center","item.chrono_anchor.init","admin.kill_on_reset"]}
execute as @s[tag=item.chrono_anchor.use] at @s run summon marker ~ ~ ~ {Tags:["item.chrono_anchor.marker","item.chrono_anchor.round","item.chrono_anchor.init","admin.kill_on_reset"]}
execute as @s[tag=item.chrono_anchor.use] at @s anchored eyes positioned ^ ^ ^ run function it:tech/active/chrono_anchor/functions/center_display
execute as @s[tag=item.chrono_anchor.use] at @s as @e[type=marker,tag=item.chrono_anchor.init,distance=..1] run scoreboard players set @s item.chrono_anchor.tick 300

execute as @s[tag=item.chrono_anchor.use] at @s run function it:tech/active/chrono_anchor/functions/sounds

tag @s[tag=item.chrono_anchor.use] remove item.chrono_anchor.use