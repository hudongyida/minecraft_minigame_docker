execute as @s if score @s combat.modified_damage.apply_kb matches 0 run attribute @s knockback_resistance modifier add modified_damage_knockback_resistance 1.0 add_value
$execute as @s at @s run damage @s $(value) player_attack by @a[scores={playerid=$(playerid)},limit=1]
execute as @s run attribute @s knockback_resistance modifier remove modified_damage_knockback_resistance