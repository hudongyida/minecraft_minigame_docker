#화살 감지 로켓 변환 함수
# $(item)   - 석궁 아이템 태그
# $(rocket) - 폭죽 로켓 데이터
# 실행 인자: @s

#형식: function it:tech/utils/detect/crossbow/rocket/init {item:, rocket:}

$execute if items entity @s weapon.mainhand *[custom_data~{item:$(item)},!charged_projectiles=[]] run tag @s add item.utils.detect.crossbow.rocket.mainhand
$execute if items entity @s weapon.offhand *[custom_data~{item:$(item)},!charged_projectiles=[]] run tag @s add item.utils.detect.crossbow.rocket.offhand

$execute if items entity @s weapon.mainhand *[charged_projectiles=[$(rocket)]] run tag @s remove item.utils.detect.crossbow.rocket.mainhand
$execute if items entity @s weapon.offhand *[charged_projectiles=[$(rocket)]] run tag @s remove item.utils.detect.crossbow.rocket.offhand

$execute as @s[tag=item.utils.detect.crossbow.rocket.mainhand] at @s run function it:tech/utils/detect/crossbow/rocket/operation {rocket:$(rocket)}
$execute as @s[tag=item.utils.detect.crossbow.rocket.offhand] at @s run function it:tech/utils/detect/crossbow/rocket/operation {rocket:$(rocket)}

tag @s[tag=item.utils.detect.crossbow.rocket.mainhand] remove item.utils.detect.crossbow.rocket.mainhand
tag @s[tag=item.utils.detect.crossbow.rocket.offhand] remove item.utils.detect.crossbow.rocket.offhand