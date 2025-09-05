execute as @s on target unless function it:tech/utils/ability/shop_use_check run function it:tech/utils/notify/init {function:"system:shop/purchase/notify/disabled"}
execute as @s on target unless function it:tech/utils/ability/shop_use_check run return fail

return 1