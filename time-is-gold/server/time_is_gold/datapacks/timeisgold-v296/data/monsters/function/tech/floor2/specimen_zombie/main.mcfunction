# main / 실행자: @e[tag=specimen_zombie]
execute as @s[tag=unbroken] run function monsters:tech/floor2/specimen_zombie/unbrokens
execute as @a[scores={monsters.specimen_zombie.attack_delay=1..}] run scoreboard players remove @s monsters.specimen_zombie.attack_delay 1
#execute as @s[tag=!unbroken] run function monsters:tech/floor2/specimen_zombie/apply_fear