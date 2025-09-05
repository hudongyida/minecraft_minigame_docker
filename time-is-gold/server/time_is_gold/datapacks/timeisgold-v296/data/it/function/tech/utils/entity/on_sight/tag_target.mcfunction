# 범위 내에 있는 모든 몬스터를 태그하는 함수.

$execute positioned ~ ~ ~ as @e[tag=monster,distance=..$(distance)] run tag @s add item.utils.entity.on_sight.target
$execute positioned ~ ~ ~ as @e[tag=monster,distance=..$(distance)] run tag @s add item.utils.entity.on_sight.target.$(playeruuid)