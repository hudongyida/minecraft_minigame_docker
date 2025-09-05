# main / 실행자: @e[tag=specimen_skeleton]
execute as @s[tag=unbroken] run function monsters:tech/floor2/specimen_skeleton/unbrokens
execute as @a[scores={monsters.specimen_skeleton.attack_delay=1..}] run scoreboard players remove @s monsters.specimen_skeleton.attack_delay 1
#execute as @s[tag=!unbroken] run function monsters:tech/floor2/specimen_skeleton/apply_fear