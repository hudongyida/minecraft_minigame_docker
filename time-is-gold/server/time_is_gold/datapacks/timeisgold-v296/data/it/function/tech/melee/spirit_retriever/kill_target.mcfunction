$execute as $(targetuuid) as @s[tag=!boss] run damage @s 1000000 out_of_world by @a[scores={playerid=$(playerid)},limit=1]
$execute as $(targetuuid) as @s[tag=boss] run function system:combat/modified_damage/magic/init {value:25.0d, playerid:$(playerid), knockback:0}
$execute as $(targetuuid) as @s[tag=boss] run scoreboard players set @s item.spirit_retriever.active_tick 0
kill @s