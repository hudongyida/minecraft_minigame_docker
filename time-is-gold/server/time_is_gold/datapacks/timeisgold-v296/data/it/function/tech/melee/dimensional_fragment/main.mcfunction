function it:tech/utils/cooldown/tick {scoreboard:item.dimensional_fragment.cooldown}

# item.dimensional_fragment.tick이 1 이상인 플레이어 -> 능력 활성화 상태
execute as @a if score @s item.dimensional_fragment.tick matches 2.. run function it:tech/melee/dimensional_fragment/ability
execute as @a if score @s item.dimensional_fragment.tick matches 1.. run scoreboard players remove @s item.dimensional_fragment.tick 1

# item.dimensional_fragment.tick이 1 -> 다음 틱에 능력 비활성화
execute as @a if score @s item.dimensional_fragment.tick matches 1 run scoreboard players set @s item.dimensional_fragment.active 0
execute as @a if score @s item.dimensional_fragment.tick matches 1 run effect clear @s weakness
execute as @a if score @s item.dimensional_fragment.tick matches 1 run effect clear @s speed
execute as @a if score @s item.dimensional_fragment.tick matches 1 run effect clear @s fire_resistance

execute as @e[tag=monster] if score @s item.dimensional_fragment.fragility_tick matches 1.. run scoreboard players remove @s item.dimensional_fragment.fragility_tick 1

# 비활성화 SFX
execute as @a if score @s item.dimensional_fragment.tick matches 1 at @s run playsound entity.zombie_villager.cure hostile @s ~ ~ ~ 0.33 0.75 0.33

# 인벤토리에 dimensional_fragment 존재 여부 체크
execute as @a[scores={item.dimensional_fragment.kills=1..}] run scoreboard players add @s item.dimensional_fragment.inventory_check 0
execute as @a[scores={item.dimensional_fragment.kills=1..}] store success score @s item.dimensional_fragment.inventory_check run clear @s diamond_sword[minecraft:custom_data~{item:dimensional_fragment}] 0
execute as @a[scores={item.dimensional_fragment.kills=1..}] if score @s item.dimensional_fragment.inventory_check matches 0 run scoreboard players set @s item.dimensional_fragment.kills 0