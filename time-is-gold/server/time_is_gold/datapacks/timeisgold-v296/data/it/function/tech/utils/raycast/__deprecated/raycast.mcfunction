$function it:tech/$(type)/$(path)/raycast/$(particle) {player:$(player), scoreboard:$(scoreboard)}
$scoreboard players remove $(player) $(scoreboard) 1

# Debug
#$tellraw @a [{"score":{"name":"@a","objective":"$(scoreboard)"}}]

$execute if score isStopOnWall $(scoreboard) matches 1 positioned ~ ~ ~ unless block ~ ~ ~ #it:air run scoreboard players set $(player) $(scoreboard) -1
$execute if score isHit $(scoreboard) matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(player) $(scoreboard) -1

$execute if score $(player) $(scoreboard) matches ..0 positioned ~ ~ ~ run function it:tech/$(type)/$(path)/raycast/$(endfunction) {player:$(player),playeruuid:"$(playeruuid)"}
$execute if score $(player) $(scoreboard) matches 1.. positioned ^ ^ ^$(speed) run function it:tech/utils/raycast/raycast {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),wall:$(wall),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction)}

$execute positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!hit,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run tag @s add hit