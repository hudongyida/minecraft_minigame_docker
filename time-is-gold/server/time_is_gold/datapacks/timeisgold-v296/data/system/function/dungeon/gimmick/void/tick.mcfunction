execute as @e[tag=monster] at @s if function system:dungeon/gimmick/void/void_check run kill @s
execute as @e[type=item] at @s if function system:dungeon/gimmick/void/void_check run kill @s
execute as @e[type=#minecraft:arrows] at @s if function system:dungeon/gimmick/void/void_check run kill @s
execute as @a[predicate=system:player] at @s if function system:dungeon/gimmick/void/void_check run function system:dungeon/gimmick/void/fell_into_void