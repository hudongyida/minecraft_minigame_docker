execute as @a[advancements={it:melee/dimensional_fragment_kill=true}] if score @s item.dimensional_fragment.kills matches ..4 run scoreboard players add @s item.dimensional_fragment.kills 1

execute as @a[advancements={it:melee/dimensional_fragment_kill=true}] if score @s item.dimensional_fragment.kills matches 5.. run title @s actionbar {"text":"你的裂隙冲击能力已充能！","color":"green"}
execute as @a[advancements={it:melee/dimensional_fragment_kill=true}] if score @s item.dimensional_fragment.kills matches 5.. at @s run playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 0.5 .75 0.5
execute as @a[advancements={it:melee/dimensional_fragment_kill=true}] run advancement revoke @s only it:melee/dimensional_fragment_kill