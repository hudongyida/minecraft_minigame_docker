function it:tech/utils/cooldown/tick {scoreboard:item.top_hat.cooldown}

execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.top_hat.cooldown, value_target:"@s", base:item.top_hat.cooldown, base_target:"#MAX_VALUE", invert:1, item:top_hat}

# Bunny to target
execute as @e[tag=item.top_hat.rabbit] unless predicate it:active/top_hat_target at @s if entity @n[tag=monster,distance=..27] run damage @s 1 generic by @n[tag=monster]
execute as @e[tag=item.top_hat.rabbit] run effect give @s jump_boost infinite 3 true