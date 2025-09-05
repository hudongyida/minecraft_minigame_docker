tag @s add entityidset

# 새 아이디 부여
scoreboard players add $highest entityid 1
scoreboard players operation @s entityid = $highest entityid

# bit 0
scoreboard players operation @s entityid.0 = @s entityid
scoreboard players operation @s entityid.0 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 1
scoreboard players operation @s entityid.1 = @s entityid
scoreboard players operation @s entityid.1 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 2
scoreboard players operation @s entityid.2 = @s entityid
scoreboard players operation @s entityid.2 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 3
scoreboard players operation @s entityid.3 = @s entityid
scoreboard players operation @s entityid.3 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 4
scoreboard players operation @s entityid.4 = @s entityid
scoreboard players operation @s entityid.4 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 5
scoreboard players operation @s entityid.5 = @s entityid
scoreboard players operation @s entityid.5 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 6
scoreboard players operation @s entityid.6 = @s entityid
scoreboard players operation @s entityid.6 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 7
scoreboard players operation @s entityid.7 = @s entityid
scoreboard players operation @s entityid.7 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 8
scoreboard players operation @s entityid.8 = @s entityid
scoreboard players operation @s entityid.8 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 9
scoreboard players operation @s entityid.9 = @s entityid
scoreboard players operation @s entityid.9 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 10
scoreboard players operation @s entityid.10 = @s entityid
scoreboard players operation @s entityid.10 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 11
scoreboard players operation @s entityid.11 = @s entityid
scoreboard players operation @s entityid.11 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 12
scoreboard players operation @s entityid.12 = @s entityid
scoreboard players operation @s entityid.12 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 13
scoreboard players operation @s entityid.13 = @s entityid
scoreboard players operation @s entityid.13 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 14
scoreboard players operation @s entityid.14 = @s entityid
scoreboard players operation @s entityid.14 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 15
scoreboard players operation @s entityid.15 = @s entityid
scoreboard players operation @s entityid.15 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 16
scoreboard players operation @s entityid.16 = @s entityid
scoreboard players operation @s entityid.16 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 17
scoreboard players operation @s entityid.17 = @s entityid
scoreboard players operation @s entityid.17 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 18
scoreboard players operation @s entityid.18 = @s entityid
scoreboard players operation @s entityid.18 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 19
scoreboard players operation @s entityid.19 = @s entityid
scoreboard players operation @s entityid.19 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 20
scoreboard players operation @s entityid.20 = @s entityid
scoreboard players operation @s entityid.20 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 21
scoreboard players operation @s entityid.21 = @s entityid
scoreboard players operation @s entityid.21 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 22
scoreboard players operation @s entityid.22 = @s entityid
scoreboard players operation @s entityid.22 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 23
scoreboard players operation @s entityid.23 = @s entityid
scoreboard players operation @s entityid.23 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 24
scoreboard players operation @s entityid.24 = @s entityid
scoreboard players operation @s entityid.24 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 25
scoreboard players operation @s entityid.25 = @s entityid
scoreboard players operation @s entityid.25 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 26
scoreboard players operation @s entityid.26 = @s entityid
scoreboard players operation @s entityid.26 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 27
scoreboard players operation @s entityid.27 = @s entityid
scoreboard players operation @s entityid.27 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 28
scoreboard players operation @s entityid.28 = @s entityid
scoreboard players operation @s entityid.28 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 29
scoreboard players operation @s entityid.29 = @s entityid
scoreboard players operation @s entityid.29 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# bit 30
scoreboard players operation @s entityid.30 = @s entityid
scoreboard players operation @s entityid.30 %= #2 scoreboardConstant
scoreboard players operation @s entityid /= #2 scoreboardConstant
# +-
scoreboard players operation @s entityid.31 = @s entityid
scoreboard players operation @s entityid.31 %= #2 scoreboardConstant

scoreboard players operation @s entityid = $highest entityid

function monsters:tech/global/entity_database/query/add/init