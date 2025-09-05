# 플레이어에 의해 공격받았을 때 발동하는 능력이 있는 경우 실행하는 함수.
# 실행 인자: @e[tag=monster]

### Bosses - - - - - - - - - - - 

# automaton
execute as @s[type=iron_golem,tag=boss.automaton] at @s run function bosses:tech/automaton/pattern1/on_hit_by_player

### Monsters - - - - - - - - - - 