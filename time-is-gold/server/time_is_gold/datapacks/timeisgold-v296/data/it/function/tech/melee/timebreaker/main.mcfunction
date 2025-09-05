function it:tech/utils/cooldown/tick {scoreboard:item.timebreaker.cooldown}
execute as @a run function it:tech/melee/timebreaker/functions/revoke

# VFX
execute as @a[predicate=system:player] run function it:tech/utils/cooldown/ui_display {value:item.timebreaker.cooldown, value_target:"@s", base:item.timebreaker.cooldown, base_target:"#MAX_VALUE", invert:1, item:timebreaker}
execute as @a run function it:tech/melee/timebreaker/functions/glint_override
