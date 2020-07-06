xp add @p -50
execute unless entity @p[level=..1] run function t:ward
execute unless entity @p[level=1..] run tell @p I can't ward! I'm out of XP!
