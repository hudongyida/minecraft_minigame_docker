# 몬스터 아이디 찾기
# type, path, advancement_name, uuid


scoreboard players set $hit entityid 0
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit0=true}}] run scoreboard players add $hit entityid 1
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit1=true}}] run scoreboard players add $hit entityid 2
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit2=true}}] run scoreboard players add $hit entityid 4
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit3=true}}] run scoreboard players add $hit entityid 8
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit4=true}}] run scoreboard players add $hit entityid 16
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit5=true}}] run scoreboard players add $hit entityid 32
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit6=true}}] run scoreboard players add $hit entityid 64
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit7=true}}] run scoreboard players add $hit entityid 128
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit8=true}}] run scoreboard players add $hit entityid 256
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit9=true}}] run scoreboard players add $hit entityid 512
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit10=true}}] run scoreboard players add $hit entityid 1024
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit11=true}}] run scoreboard players add $hit entityid 2048
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit12=true}}] run scoreboard players add $hit entityid 4096
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit13=true}}] run scoreboard players add $hit entityid 8192
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit14=true}}] run scoreboard players add $hit entityid 16384
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit15=true}}] run scoreboard players add $hit entityid 32768
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit16=true}}] run scoreboard players add $hit entityid 65536
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit17=true}}] run scoreboard players add $hit entityid 131072
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit18=true}}] run scoreboard players add $hit entityid 262144
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit19=true}}] run scoreboard players add $hit entityid 524288
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit20=true}}] run scoreboard players add $hit entityid 1048576
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit21=true}}] run scoreboard players add $hit entityid 2097152
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit22=true}}] run scoreboard players add $hit entityid 4194304
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit23=true}}] run scoreboard players add $hit entityid 8388608
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit24=true}}] run scoreboard players add $hit entityid 16777216
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit25=true}}] run scoreboard players add $hit entityid 33554432
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit26=true}}] run scoreboard players add $hit entityid 67108864
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit27=true}}] run scoreboard players add $hit entityid 134217728
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit28=true}}] run scoreboard players add $hit entityid 268435456
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit29=true}}] run scoreboard players add $hit entityid 536870912
$execute if entity @s[advancements={it:$(type)/$(advancement_name)={bit30=true}}] run scoreboard players add $hit entityid 1073741824
#$execute if entity @s[advancements={it:$(advancement_name)={bit31=true}}] run scoreboard players remove $hit entityid 2147483647
#$execute if entity @s[advancements={it:$(advancement_name)={bit31=true}}] run scoreboard players remove $hit entityid 1
$execute as @e[tag=monster] if score @s entityid = $hit entityid run function it:tech/$(type)/$(path)/monsterid/hit {uuid:"$(uuid)"}

### 주의 - 31번째 비트 값이 켜진다는 것은 숫자에 -1을 곱하는 것과 같은 연산이 아닙니다.
#  3은 00000000 00000000 00000000 00000011의 비트를 가지지만
# -3은 11111111 11111111 11111111 11111101의 비트를 갖게 됩니다.
# -n의 비트는 n의 비트 전체를 반전한 다음 1을 더한 것이 되고,
# 31번 비트가 켜지는 것과 -1을 곱하는 건 아무런 관계가 없는 연산이죠.
# 근데 사실 한 맵에서 몹을 10억 마리 넘게 소환할 일은 없을 듯 해서 이건 그냥 놔둬도 될 것 같네요.