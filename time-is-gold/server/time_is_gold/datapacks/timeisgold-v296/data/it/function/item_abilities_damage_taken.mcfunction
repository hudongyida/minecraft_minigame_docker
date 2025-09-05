# 데미지를 받았을 때 발동하는 효과를 보유한 아이템의 능력 실행
# 이 함수는 system:time/damage_to_time 함수에서 실행됩니다.
# 실행 인자: 데미지 조정이 완료된 후 DamageTaken의 최종 값이 0이 아닌 모든 플레이어
## 주의! - 데미지를 받았으나 감소 효과로 0이 된 경우 이 함수는 실행되지 않습니다.


### ACTIVE ITEMS - - - - - - - - - - - - - -

# time_supply
function it:tech/active/time_supply/on_taking_damage

# ashy_furance
execute if score @s system.time.damage_taken matches 200.. run function it:tech/active/ashy_furance/functions/destroy_init

###被动物品S - - - - - - - - - - - - - -

# sigil_of_leap
execute if score @s item.sigil_of_leap.active matches 1.. if score @s system.time.damage_taken matches 80.. run function it:tech/passive/sigil_of_leap/destroy

# Sigil of Strength
execute if score @s item.sigil_of_strength.active matches 1.. if score @s system.time.damage_taken matches 100.. run function it:tech/passive/sigil_of_strength/destroy

# Sigil of Arrows
execute if score @s item.sigil_of_arrows.active matches 1.. if score @s system.time.damage_taken matches 150.. run function it:tech/passive/sigil_of_arrows/destroy

# 祝福印记
execute if score @s item.sigil_of_blessing.active matches 1.. if score @s system.time.damage_taken matches 80.. run function it:tech/passive/sigil_of_blessing/destroy

# Time Concentrator
execute if score @s item.time_concentrator.active matches 1.. run function it:tech/passive/time_concentrator/add_damage

# Counter Counter
function it:tech/passive/counter_counter/on_taking_damage

# hedgehog_plushie
execute as @s if score @s item.hedgehog_plushie.active matches 1.. run function it:tech/passive/hedgehog_plushie/on_taking_damage

### MELEE WEAPONS - - - - - - - - - - - - - -

# auction_microphone
execute if score @s item.auction_microphone.auction_count matches 1.. run scoreboard players set @s item.auction_microphone.auction_count 0

# auction_microphone_pro
execute if score @s item.auction_microphone_pro.auction_count matches 1.. run scoreboard players set @s item.auction_microphone_pro.auction_count 0

### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -



### SYSTEM - - - - - - - - - - - - - - - - -

# Summary 데이터 기록
scoreboard players operation @s system.gamemanager.summary.damage_taken += @s system.time.damage_taken