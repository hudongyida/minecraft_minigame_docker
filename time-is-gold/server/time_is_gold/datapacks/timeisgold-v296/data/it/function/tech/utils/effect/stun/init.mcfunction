# 기절 효과를 적용하는 함수.
# 실행 인자: 효과를 적용받을 몬스터

#형식: function it:tech/utils/effect/stun/init {value:}

# monster.stun_exception 태그가 붙은 몬스터는 NoAI NBT를 조작하지 않습니다.
# 스턴 예외처리가 필요한 몬스터(터렛 등)는 소환 시 해당 태그를 붙이고, 몬스터 특수능력 함수 안에서 스턴 케이스를 처리하면 됩니다.

execute as @s if entity @s[tag=boss] run return fail
$execute as @s run scoreboard players add @s combat.stun $(value)
execute as @s[tag=elite] run scoreboard players operation @s combat.stun < #ELITE combat.stun
execute as @s[tag=!elite] run scoreboard players operation @s combat.stun < #SYSTEM combat.stun
execute as @s[tag=!monster.stun_exception] run data modify entity @s NoAI set value 1b
execute as @s at @s run particle flash ~ ~ ~ .3 .3 .3 0 3 force