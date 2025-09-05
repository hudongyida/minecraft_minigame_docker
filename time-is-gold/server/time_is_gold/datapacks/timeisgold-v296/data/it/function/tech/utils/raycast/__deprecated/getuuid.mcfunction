# 실행 인자 - Raycasting이 필요한 무기를 사용한 플레이어
$data modify entity @e[type=marker,tag=$(marker),distance=..0.5,sort=nearest,limit=1] data.playeruuid set from entity @s UUID