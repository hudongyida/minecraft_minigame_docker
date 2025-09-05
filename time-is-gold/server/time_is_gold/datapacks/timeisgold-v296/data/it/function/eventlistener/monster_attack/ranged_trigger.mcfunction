# 플레이어 마법 공격 시 발생하는 효과 처리 이벤트
# 실행 인자: @a[advancements={system:eventlistener/monster_attack={ranged=true}}]
# $(playerid)   - 플레이어의 playerid 스코어보드 값
# $(entityid)   - 공격받은 몬스터의 entityid 스코어보드 값

### !!! 구현 관련 주의사항 !!!

# 공격 이벤트 발생 시 플레이어에게만 효과가 적용되는 경우: 구현체 폴더에서 관련 함수 호출만 하면 끝
# 공격 이벤트 발생 시 몬스터에게도 효과를 적용해야 하는 경우: 인자로 전달되는 playerid, entityid 스코어보드 값을 써서 셀렉터 사용
# 공격 이벤트 발생 시 발전과제 기반 감지 시스템이 필요한 경우: 해당 발전과제의 parent로 system:eventlistener/monster_attack 발전과제 등록 후 여기서 감지(revoke 까먹으면 안됨)

### SYSTEM - - - - - - - - - - - - - - - - -



### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -

# enlgithen_knowledge
$execute as @s if score @s item.enlighten_knowledge.number_of_books matches 1.. run function it:tech/passive/enlighten_knowledge/on_any_attack {entityid:$(entityid)}

# malware
$execute as @s if score @s item.malware.active matches 1 run function it:tech/passive/malware/on_any_attack {entityid:$(entityid)}

# scarletron
$execute as @s if score @s item.scarletron.active matches 1 run function it:tech/passive/scarletron/on_attack {entityid:$(entityid)}

### MELEE WEAPONS - - - - - - - - - - - - - -



### RANGED WEAPONS - - - - - - - - - - - -

# telestrator
$execute as @s[advancements={it:ranged/telestrator_hit=true}] run function it:tech/ranged/telestrator/on_ranged_attack {playerid:$(playerid), entityid:$(entityid)}

# explosive_bow
$execute as @s[advancements={it:ranged/explosive_bow_hit=true}] run function it:tech/ranged/explosive_bow/functions/hit_explode {playerid:$(playerid), entityid:$(entityid)}

### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -