particle angry_villager ~ ~ ~ 0 0 0 1 1

execute as @e[distance=..2] run execute unless entity @s[type=zombie] run execute unless entity @s[type=zombie_villager] run execute unless entity @s[type=skeleton] run effect give @s minecraft:instant_damage 1 1
execute as @e[distance=..2,type=zombie] run effect give @s minecraft:instant_health 1 1
execute as @e[distance=..2,type=zombie_villager] run effect give @s minecraft:instant_health 1 1
execute as @e[distance=..2,type=skeleton] run effect give @s minecraft:instant_health 1 1

# from head
execute if block ~ ~ ~ air positioned ~ ~-1 ~ unless entity @e[distance=..2,type=!minecraft:armor_stand,type=!item,type=!item_frame,type=!player] positioned ^ ^ ^1 positioned ~ ~1 ~ run function t:zap