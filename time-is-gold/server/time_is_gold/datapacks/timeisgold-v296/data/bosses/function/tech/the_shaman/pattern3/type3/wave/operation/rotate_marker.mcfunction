# SFX
#$execute at @s if predicate it:10pc positioned ^ ^ ^$(radius) rotated ~ ~ run playsound block.tuff.break block @a ~ ~ ~ 1 0.5 0
$execute at @s positioned ^ ^-1 ^$(radius) unless block ~ ~ ~ #it:air if block ~ ~1 ~ #it:air run function bosses:tech/the_shaman/pattern3/type3/wave/display/summon_block with entity @s data
$execute at @s run rotate @s ~$(angle) 0

scoreboard players add @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation_count 1
execute if score @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation_count <= @s bosses.the_shaman.pattern3.chalice.circular_wave.rotation run function bosses:tech/the_shaman/pattern3/type3/wave/operation/rotate_marker with entity @s data