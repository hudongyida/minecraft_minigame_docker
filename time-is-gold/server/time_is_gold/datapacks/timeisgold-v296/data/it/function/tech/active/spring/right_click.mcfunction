function it:tech/utils/detect/right_click {advancement:"it:active/spring_right_click", item:player_head, item_tag:spring, tag:item.spring.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.spring.fail, passTag:item.spring.use, inputTag:item.spring.pre, scoreboard:item.spring.cooldown, status:1}
execute as @s[tag=item.spring.fail] run tag @s remove item.spring.fail

execute as @s[tag=item.spring.use] run function it:tech/utils/cooldown/init {scoreboard:item.spring.cooldown, value:200}
execute as @s[tag=item.spring.use] run effect give @s levitation 1 9 true

# SFX
execute as @s[tag=item.spring.use] at @s run playsound item.crossbow.shoot hostile @a ~ ~ ~ 0.5 2 0

# VFX
execute as @s[tag=item.spring.use] at @s run summon armor_stand ~ ~-2 ~ {Tags:[item.spring.armor_stand.display], Invisible:true, Small:true, equipment:{head:{id:"minecraft:player_head",count:1b,components:{profile:{id:[I;632106493,827467763,1497883332,-1895484513],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFhNzk3M2YyNWNiYmIwNzhmNTk1YzA0MzQ5ZmM1NDFhYzFkZjlhNDRiOGMxYTE2YzUyODU4MWFhNDE3MCJ9fX0="}]}}}}}

execute as @s[tag=item.spring.use] run tag @s remove item.spring.use