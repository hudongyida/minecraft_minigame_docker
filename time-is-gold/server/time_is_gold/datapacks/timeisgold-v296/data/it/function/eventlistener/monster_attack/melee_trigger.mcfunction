# 플레이어 근접 속성 공격 시 발생하는 효과 처리 이벤트 (player_attack + mob_attack_no_aggro 속성 모두 동작)
# 실행 인자: @a[advancements={system:eventlistener/monster_attack={melee=true}}]
# $(playerid)   - 플레이어의 playerid 스코어보드 값
# $(entityid)   - 공격받은 몬스터의 entityid 스코어보드 값

### !!! 구현 관련 주의사항 !!!

# 공격 이벤트 발생 시 플레이어에게만 효과가 적용되는 경우: 구현체 폴더에서 관련 함수 호출만 하면 끝
# 공격 이벤트 발생 시 몬스터에게도 효과를 적용해야 하는 경우: 인자로 전달되는 playerid, entityid 스코어보드 값을 써서 셀렉터 사용
# 공격 이벤트 발생 시 발전과제 기반 감지 시스템이 필요한 경우: 해당 발전과제의 parent로 system:eventlistener/monster_attack 발전과제 등록 후 여기서 감지(revoke 까먹으면 안됨)

### SYSTEM - - - - - - - - - - - - - - - - -

# Debug
#say monster_attack melee

### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -

# counter_counter
execute as @s run function it:tech/utils/detect/slot {item:crafter, item_tag:counter_counter, slot:8, tag:item.counter_counter.melee_attack}
execute as @s[tag=item.counter_counter.melee_attack] run function it:tech/passive/counter_counter/on_melee_attack

# burnt_skull
$execute as @s if score @s item.burnt_skull.active matches 1 run function it:tech/passive/burnt_skull/on_any_attack {entityid:$(entityid)}

# enlgithen_knowledge
$execute as @s if score @s item.enlighten_knowledge.number_of_books matches 1.. run function it:tech/passive/enlighten_knowledge/on_any_attack {entityid:$(entityid)}

# malware
$execute as @s if score @s item.malware.active matches 1 run function it:tech/passive/malware/on_any_attack {entityid:$(entityid)}

# scarletron
$execute as @s if score @s item.scarletron.active matches 1 run function it:tech/passive/scarletron/on_attack {entityid:$(entityid)}

### MELEE WEAPONS - - - - - - - - - - - - - -

# knuckles
$execute as @s[advancements={it:melee/knuckles_wind_charge=true}] run function it:tech/melee/knuckles/on_melee_attack {playerid:$(playerid), entityid:$(entityid)}

### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -