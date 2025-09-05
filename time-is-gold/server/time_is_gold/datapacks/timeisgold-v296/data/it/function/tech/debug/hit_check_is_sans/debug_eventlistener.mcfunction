execute as @s if entity @s[advancements={system:eventlistener/monster_attack=true}] run tellraw @a [{"text":"事件监听器激活: "}, {"text":"开启","color":"green"}]
execute as @s unless entity @s[advancements={system:eventlistener/monster_attack=true}] run tellraw @a [{"text":"事件监听器激活: "}, {"text":"关闭","color":"red"}]

execute as @s if entity @s[advancements={system:eventlistener/monster_attack={player_attack=true}}] run tellraw @a [{"text":"玩家攻击状态激活："}, {"text":"开启","color":"green"}]
execute as @s unless entity @s[advancements={system:eventlistener/monster_attack={player_attack=true}}] run tellraw @a [{"text":"玩家攻击状态激活："}, {"text":"关闭","color":"red"}]

execute as @s if entity @s[advancements={system:eventlistener/monster_attack={ranged=true}}] run tellraw @a [{"text":"远程攻击状态激活："}, {"text":"开启","color":"green"}]
execute as @s unless entity @s[advancements={system:eventlistener/monster_attack={ranged=true}}] run tellraw @a [{"text":"远程攻击状态激活："}, {"text":"关闭","color":"red"}]

execute as @s if entity @s[advancements={system:eventlistener/monster_attack={magic=true}}] run tellraw @a [{"text":"魔法攻击状态激活："}, {"text":"开启","color":"green"}]
execute as @s unless entity @s[advancements={system:eventlistener/monster_attack={magic=true}}] run tellraw @a [{"text":"魔法攻击状态激活："}, {"text":"关闭","color":"red"}]

execute as @s if entity @s[advancements={system:eventlistener/monster_attack={fragility=true}}] run tellraw @a [{"text":"易伤状态激活："}, {"text":"开启","color":"green"}]
execute as @s unless entity @s[advancements={system:eventlistener/monster_attack={fragility=true}}] run tellraw @a [{"text":"易伤状态激活："}, {"text":"关闭","color":"red"}]
execute as @s run function it:tech/debug/hit_check_is_sans/check_bitset