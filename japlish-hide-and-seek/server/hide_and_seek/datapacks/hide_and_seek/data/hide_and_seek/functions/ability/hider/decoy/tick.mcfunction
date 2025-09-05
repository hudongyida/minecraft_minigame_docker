#仕様変更により一旦封印
# モーションを追跡
#execute as @e[type=item,tag=decoy_item] at @s run function hide_and_seek:ability/hider/decoy/throw/bounce
#execute as @e[type=item,tag=decoy_item] at @s on origin run particle crit ~ ~ ~ 0 0 0 1 0 force @s

# その場に诱饵を召喚
execute as @e[type=item,tag=decoy_item,tag=no_sneaking] at @s positioned ~ ~-1.62 ~ run function hide_and_seek:ability/hider/decoy/throw/summon_decoy
execute as @e[type=item,tag=decoy_item,tag=is_sneaking] at @s positioned ~ ~-1.2695 ~ run function hide_and_seek:ability/hider/decoy/throw/summon_decoy