# 갑옷의 스탯을 수정하는 함수.
# 실행 인자: 갑옷을 업데이트할 플레이어

# $(slot)           - 갑옷 슬롯 (head, chest, legs, feet)
# $(additive)       - 고정값 스탯 변화량
# $(multiplicative) - 비율 스탯 변화량

$execute unless items entity @s armor.$(slot) *[custom_data~{itemType:3}] unless items entity @s armor.$(slot) *[custom_data~{itemType:3b}] run return fail

$scoreboard players set @s item.utils.armor.time_defense_additive.delta $(additive)
$scoreboard players set @s item.utils.armor.time_defense_multiplicative.delta $(multiplicative)

$function it:tech/utils/armor/modify_stat/update {slot:$(slot)}