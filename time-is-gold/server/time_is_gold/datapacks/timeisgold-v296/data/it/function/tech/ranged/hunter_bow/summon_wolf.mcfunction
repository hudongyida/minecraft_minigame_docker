$execute as @s at @s run summon wolf ~ ~ ~ {Tags:[item.hunter_bow.wolf,monster.ally,monster.ally.assign],variant:"minecraft:ashen",Owner:$(UUID),Team:"players",DeathLootTable:"system:placeholder/none",attributes:[{id:"minecraft:attack_damage",base:6}]}
function it:tech/utils/ally/init {inputTag:monster.ally.assign,type:wolf}
execute as @e[type=wolf,tag=item.hunter_bow.wolf] run scoreboard players add @s item.hunter_bow.wolf_age 1
execute as @e[type=wolf,tag=item.hunter_bow.wolf] if score @s item.hunter_bow.wolf_age matches 4.. run tp @s ~ ~-1000 ~

# SFX
execute as @s at @s run playsound entity.item.pickup player @s ~ ~ ~ 1 0.75 0

# HUD
execute as @s run title @s actionbar [{"translate": "item.hunter_bow.notify.summon_wolf"}]