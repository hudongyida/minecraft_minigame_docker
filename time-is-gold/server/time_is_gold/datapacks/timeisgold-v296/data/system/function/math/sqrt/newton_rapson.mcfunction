# Newton-Rapson method를 한 단계 실행
# term -> n번째 추정값
# (n+1)th term = (n + x/n) / 2

scoreboard players operation @s system.math.sqrt.temp = @s system.math.sqrt.input
scoreboard players operation @s system.math.sqrt.temp /= @s system.math.sqrt.term
scoreboard players operation @s system.math.sqrt.term += @s system.math.sqrt.temp
scoreboard players operation @s system.math.sqrt.term /= #2 scoreboardConstant