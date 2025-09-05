# 실행 인자: 아이템 능력 사용 후 대기 중인 플레이어

# 아이템을 들고 있지 않을 경우 취소
execute unless items entity @s weapon.mainhand *[custom_data~{item:throwing_knife}] run function it:tech/melee/throwing_knife/operation/cancel

# SFX
execute if score @s item.throwing_knife.ability_tick matches 10 at @s run playsound block.note_block.hat block @a ~ ~ ~ 1 0.5
execute if score @s item.throwing_knife.ability_tick matches 6 at @s run playsound block.note_block.hat block @a ~ ~ ~ 1 0.7
execute if score @s item.throwing_knife.ability_tick matches 2 at @s run playsound block.note_block.hat block @a ~ ~ ~ 1 0.9
function it:tech/melee/throwing_knife/operation/display_actionbar

execute as @s if score @s item.throwing_knife.ability_tick matches 1.. run scoreboard players remove @s item.throwing_knife.ability_tick 1
execute if score @s item.throwing_knife.ability_tick matches 0 run function it:tech/melee/throwing_knife/operation/terminate

effect give @s slowness 1 2 true