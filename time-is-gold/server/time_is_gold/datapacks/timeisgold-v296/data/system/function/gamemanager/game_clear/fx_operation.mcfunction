item replace entity @s weapon.offhand with totem_of_undying[item_model="minecraft:victory_text"] 1
damage @s 123456789 starve
effect give @s instant_health 1 100 true
effect clear @s regeneration
effect clear @s absorption
effect clear @s fire_resistance

playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1