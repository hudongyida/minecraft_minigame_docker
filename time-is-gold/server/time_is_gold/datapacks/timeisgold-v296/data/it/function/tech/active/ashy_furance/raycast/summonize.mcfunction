$summon minecraft:magma_cube ~ ~ ~ {Tags:["monster.ally","item.ashy_furance.cube","item.ashy_furance.init","item.ashy_furance.cube.$(playerid)"],Size:0,Team:"players",DeathLootTable:"system:placeholder/none",CustomName:{"text":"Ashy Magma Cube","color":"red"},CustomNameVisible:true,attributes:[{id:"minecraft:scale",base:1.5}],Silent:true}
$execute positioned ~ ~ ~ as @n[type=magma_cube,tag=item.ashy_furance.init,distance=..1] run scoreboard players set @s item.ashy_furance.owner $(playerid)
execute positioned ~ ~ ~ as @e[type=magma_cube,tag=item.ashy_furance.cube] run scoreboard players add @s item.ashy_furance.cube_age 1
$execute as @a[scores={playerid=$(playerid)}] run function it:tech/utils/ally/init {inputTag:item.ashy_furance.init, type:magma_cube}

particle small_flame ~ ~ ~ 0 0 0 0.1 20 force
particle block{block_state:magma_block} ~ ~ ~ 0 0 0 0.5 5 force
particle lava ~ ~ ~ 0 0 0 0.3 2 force
particle dripping_lava ~ ~ ~ 0.4 0.4 0.4 1 10 force
particle cloud ~ ~ ~ 0.1 0.1 0.1 0 5 force