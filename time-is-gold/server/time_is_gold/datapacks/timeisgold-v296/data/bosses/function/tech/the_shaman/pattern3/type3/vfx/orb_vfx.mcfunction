# 실행 인자: @n[type=armor_stand,tag=bosses.the_shaman.pattern3.chalice.type3.armor_stand.orb.$(selfuuid)]

execute as @s run rotate @s ~20 0

execute at @s positioned ^ ^ ^5 run particle dust{color:[0.5,0.0,0.0],scale:1} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s positioned ^ ^ ^-5 run particle dust{color:[0.5,0.0,0.0],scale:1} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s positioned ^5 ^ ^ run particle dust{color:[0.5,0.0,0.0],scale:1} ~ ~ ~ 0 0 0 0.1 1 force
execute at @s positioned ^-5 ^ ^ run particle dust{color:[0.5,0.0,0.0],scale:1} ~ ~ ~ 0 0 0 0.1 1 force