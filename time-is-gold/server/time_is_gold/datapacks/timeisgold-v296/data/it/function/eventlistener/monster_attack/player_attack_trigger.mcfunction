# 플레이어가 직접 클릭해 공격 시 발생하는 효과 처리 이벤트
# 실행 인자: @a[advancements={system:eventlistener/monster_attack={player_attack=true}}]
# $(playerid)   - 플레이어의 playerid 스코어보드 값
# $(entityid)   - 공격받은 몬스터의 entityid 스코어보드 값

### !!! 구현 관련 주의사항 !!!

# 공격 이벤트 발생 시 플레이어에게만 효과가 적용되는 경우: 구현체 폴더에서 관련 함수 호출만 하면 끝
# 공격 이벤트 발생 시 몬스터에게도 효과를 적용해야 하는 경우: 인자로 전달되는 playerid, entityid 스코어보드 값을 써서 셀렉터 사용

### SYSTEM - - - - - - - - - - - - - - - - -

# Debug
#say monster_attack player_attack

### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -



# revelatory_record
$execute as @s if score @s item.revelatory_record.active matches 1 run function it:tech/passive/revelatory_record/on_player_attack {entityid:$(entityid)}

### MELEE WEAPONS - - - - - - - - - - - - - -

# assassin_dagger
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:assassin_dagger}] run function it:tech/melee/assassin_dagger/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# auction_microphone
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:auction_microphone}] run function it:tech/melee/auction_microphone/on_player_attack

# auction_microphone_pro
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:auction_microphone_pro}] run function it:tech/melee/auction_microphone_pro/on_player_attack

# reaper_scythe
$execute as @s[scores={item.reaper_scythe.veils=1..}] if items entity @s weapon.mainhand *[custom_data~{item:reaper_scythe}] run function it:tech/melee/reaper_scythe/gimmicks/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# iron_fist
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:iron_fist}] run function it:tech/melee/iron_fist/on_player_attack

# lantern
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:lantern}] run function it:tech/melee/lantern/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# cherry_branch
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:cherry_branch}] run function it:tech/melee/cherry_branch/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# clenser
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:clenser}] run function it:tech/melee/clenser/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# spirit_retriever
$execute as @s if items entity @s weapon.mainhand iron_shovel[custom_data~{item:spirit_retriever}] run function it:tech/melee/spirit_retriever/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# taser
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:taser}] run function it:tech/melee/taser/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# rusty_sword
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:rusty_sword}] run function it:tech/melee/rusty_sword/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# explosive_axe
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:explosive_axe}] run function it:tech/melee/explosive_axe/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# fake_midas_sword
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:fake_midas_sword}] run function it:tech/melee/fake_midas_sword/on_player_attack

# Knuckles
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:knuckles}] run function it:tech/melee/knuckles/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# Choronospark
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:chronospark}] run function it:tech/melee/chronospark/functions/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# blackjack
execute as @s if items entity @s weapon.mainhand *[custom_data~{item:blackjack}] run function it:tech/melee/blackjack/on_player_attack

# manchineel_sword
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:manchineel_sword}] run function it:tech/melee/manchineel_sword/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# Anti_ego_extractor
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:anti_ego_extractor}] run function it:tech/melee/anti_ego_extractor/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# cleaver
$execute as @s if items entity @s weapon.mainhand *[custom_data~{item:cleaver}] run function it:tech/melee/cleaver/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# lumino_root
execute if items entity @s weapon.mainhand *[custom_data~{item:lumino_root}] run function it:tech/melee/lumino_root/on_player_attack

# time_shard
$execute if items entity @s weapon.mainhand *[custom_data~{item:time_shard}] run function it:tech/melee/time_shard/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

# glass_sword
$execute if items entity @s weapon.mainhand *[custom_data~{item:glass_sword}] run function it:tech/melee/glass_sword/on_player_attack {playerid:$(playerid), entityid:$(entityid)}

### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -