xp add @p -100
execute unless entity @p[level=..1] run particle angry_villager ^-0.7 ^ ^-2
execute unless entity @p[level=..1] run particle angry_villager ^-0.4 ^ ^-1

execute unless entity @p[level=..1] run function t:zap
execute unless entity @p[level=1..] run tell @p I can't fire! I'm out of XP!
scoreboard players reset @a[scores={click=1..}] click
