$execute at @s run summon armor_stand ~ ~ ~ {Tags:[item.utils.armor.armor_stand.update_storage.$(playeruuid)],Small:true,Marker:true,Invisible:true,NoGravity:true,Invulnerable:true}
$execute at @s run item replace entity @n[type=armor_stand,tag=item.utils.armor.armor_stand.update_storage.$(playeruuid)] weapon.mainhand from entity @s armor.feet

# 초기화 태그 데이터 삭제
$execute at @s run data remove entity @n[type=armor_stand,tag=item.utils.armor.armor_stand.update_storage.$(playeruuid),distance=..0.5] equipment.mainhand.components."minecraft:custom_data".armor.uninitialized

# 고정값 방어 스탯 설정
function it:tech/utils/armor/random_stat/get_additive {slot:feet}
$execute at @s store result entity @n[type=armor_stand,tag=item.utils.armor.armor_stand.update_storage.$(playeruuid),distance=..0.5] equipment.mainhand.components."minecraft:custom_data".armor.additive int 1 run scoreboard players get @s item.utils.armor.randomizer
scoreboard players operation @s item.utils.armor.time_defense_additive = @s item.utils.armor.randomizer

# 비율 방어 스탯 설정
function it:tech/utils/armor/random_stat/get_multiplicative {slot:feet}
$execute at @s store result entity @n[type=armor_stand,tag=item.utils.armor.armor_stand.update_storage.$(playeruuid),distance=..0.5] equipment.mainhand.components."minecraft:custom_data".armor.multiplicative int 1 run scoreboard players get @s item.utils.armor.randomizer
scoreboard players operation @s item.utils.armor.time_defense_multiplicative = @s item.utils.armor.randomizer

# 갑옷 업데이트
$execute at @s run item replace entity @s armor.feet from entity @n[type=armor_stand,tag=item.utils.armor.armor_stand.update_storage.$(playeruuid),distance=..0.5] weapon.mainhand
function it:tech/utils/armor/update_lore/boots/update
$execute at @s run kill @n[type=armor_stand,tag=item.utils.armor.armor_stand.update_storage.$(playeruuid),distance=..0.5]