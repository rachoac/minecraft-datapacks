execute store result score @s homex run data get entity @s Pos[0]
execute store result score @s homey run data get entity @s Pos[1]
execute store result score @s homez run data get entity @s Pos[2]
execute store result score @s homed run data get entity @s Dimension

particle minecraft:nautilus ~ ~ ~1 5 5 5 3 2000
title @p title {"text":"Home saved"}
