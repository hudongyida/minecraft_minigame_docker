execute as @s[predicate=system:player] if score @s item.chrono_anchor.tick matches 1.. run function system:ui/bar/set {value:"item.chrono_anchor.tick", value_target:"@s", base:"item.chrono_anchor.tick", base_target:"#MAX_VALUE", invert:0, item:chrono_anchor}
execute as @s[predicate=system:player] unless score @s item.chrono_anchor.tick matches 1.. run function it:tech/utils/cooldown/ui_display {value:"item.chrono_anchor.cooldown", value_target:"@s", base:"item.chrono_anchor.cooldown", base_target:"#MAX_VALUE", invert:1, item:chrono_anchor}

execute if score @s item.chrono_anchor.active matches 1 run scoreboard players reset @s item.chrono_anchor.active
execute if score @s item.chrono_anchor.tick matches 1.. run scoreboard players remove @s item.chrono_anchor.tick 1
execute if score @s item.chrono_anchor.tick matches 0 run function it:tech/active/chrono_anchor/functions/reset_ability