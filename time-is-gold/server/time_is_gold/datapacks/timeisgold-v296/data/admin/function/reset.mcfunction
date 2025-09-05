# 스코어보드 초기화
function admin:scoreboard_remove
function admin:scoreboard_add

### OTHERS  - - - - - - - - - - - - - - - - -

# 오토마톤 공격 시 계속 뻗는 버그의 원인: universalAnger
# https://bugs.mojang.com/browse/MC-195278
# :mojang:

# Function call API 초기화
data remove storage timeisgold:function_api stack
data modify storage timeisgold:function_api stack set value []

function system:utils/uuid_tokenizer/reset_data
function system:utils/player_name/reset_data
function monsters:tech/global/entity_database/reset_data

# Lookup table 초기화
function system:utils/lookup_table/mirror_animation
function system:utils/lookup_table/uuid_tokenizer

# 최초 접속 핸들링 체크
tag @a add admin.join_history_check
scoreboard objectives remove admin.do_not_remove.join_history
scoreboard objectives add admin.do_not_remove.join_history dummy
scoreboard players set @a[tag=admin.join_history_check] admin.do_not_remove.join_history 1
tag @a remove admin.join_history_check

setworldspawn -501 0 -501 0
forceload add -5 -5 128 128
forceload add -100 0 -52 100

# gamerules
gamerule projectilesCanBreakBlocks false
gamerule universalAnger false
gamerule showDeathMessages false
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule randomTickSpeed 0
gamerule doFireTick false
gamerule playersNetherPortalCreativeDelay 2147483647
gamerule playersNetherPortalDefaultDelay 2147483647
gamerule spawnRadius 0
gamerule spawnChunkRadius 2
gamerule doImmediateRespawn true
gamerule commandModificationBlockLimit 2147483647

# time setdisplay
scoreboard objectives setdisplay list system.time.display_integer
scoreboard objectives setdisplay below_name system.time.display_integer
scoreboard objectives modify system.time.display_integer displayname {"text":"时间","color":"green"}
scoreboard objectives modify system.time.display_integer numberformat styled {"color": "green"}

# default time setting
scoreboard players add @a timeX10 6000

# 스코어보드 연산용 상수 설정
scoreboard players set -1 scoreboardConstant -1
scoreboard players set 2 scoreboardConstant 2
scoreboard players set #0 scoreboardConstant 0
scoreboard players set #1 scoreboardConstant 1
scoreboard players set #2 scoreboardConstant 2
scoreboard players set #3 scoreboardConstant 3
scoreboard players set #4 scoreboardConstant 4
scoreboard players set #5 scoreboardConstant 5
scoreboard players set #6 scoreboardConstant 6
scoreboard players set #7 scoreboardConstant 7
scoreboard players set #8 scoreboardConstant 8
scoreboard players set #9 scoreboardConstant 9
scoreboard players set #10 scoreboardConstant 10
scoreboard players set #11 scoreboardConstant 11
scoreboard players set #12 scoreboardConstant 12
scoreboard players set #13 scoreboardConstant 13
scoreboard players set #14 scoreboardConstant 14
scoreboard players set #15 scoreboardConstant 15
scoreboard players set #16 scoreboardConstant 16
scoreboard players set #17 scoreboardConstant 17
scoreboard players set #18 scoreboardConstant 18
scoreboard players set #19 scoreboardConstant 19
scoreboard players set #20 scoreboardConstant 20
scoreboard players set #25 scoreboardConstant 25
scoreboard players set #30 scoreboardConstant 30
scoreboard players set #35 scoreboardConstant 35
scoreboard players set #40 scoreboardConstant 40
scoreboard players set #42 scoreboardConstant 42
scoreboard players set #45 scoreboardConstant 45
scoreboard players set #50 scoreboardConstant 50
scoreboard players set #56 scoreboardConstant 56
scoreboard players set #60 scoreboardConstant 60
scoreboard players set #64 scoreboardConstant 64
scoreboard players set #72 scoreboardConstant 72
scoreboard players set #80 scoreboardConstant 80
scoreboard players set #90 scoreboardConstant 90
scoreboard players set #95 scoreboardConstant 95
scoreboard players set #100 scoreboardConstant 100
scoreboard players set #110 scoreboardConstant 101
scoreboard players set #120 scoreboardConstant 120
scoreboard players set #160 scoreboardConstant 160
scoreboard players set #175 scoreboardConstant 175
scoreboard players set #180 scoreboardConstant 180
scoreboard players set #200 scoreboardConstant 200
scoreboard players set #250 scoreboardConstant 250
scoreboard players set #256 scoreboardConstant 256
scoreboard players set #300 scoreboardConstant 300
scoreboard players set #360 scoreboardConstant 360
scoreboard players set #500 scoreboardConstant 500
scoreboard players set #1000 scoreboardConstant 1000
scoreboard players set #1200 scoreboardConstant 1200
scoreboard players set #1500 scoreboardConstant 1500
scoreboard players set #1561 scoreboardConstant 1561
scoreboard players set #1754 scoreboardConstant 1754
scoreboard players set #3000 scoreboardConstant 3000
scoreboard players set #5729 scoreboardConstant 5729
scoreboard players set #6400 scoreboardConstant 6400
scoreboard players set #7607 scoreboardConstant 7607
scoreboard players set #10000 scoreboardConstant 10000
scoreboard players set #100000 scoreboardConstant 100000
scoreboard players set #3600000 scoreboardConstant 3600000

# 몬스터가 설정된 공격력을 그대로 가지기 위함
difficulty normal

# 발전과제
advancement revoke @a everything

# 발전과제 - 잠재력
#advancement grant @a only upgrades:potentiality/root

# 포션 효과 클리어
effect clear @a

# 엔티티 제거
function admin:clear

# attribute 초기화
execute as @a run function admin:attribute_reset

# 컨피그 설정 함수 실행
function admin:config

# 타이틀 리셋
title @a reset

# 메세지 출력
tellraw @a {"translate":"system.reset.message"}