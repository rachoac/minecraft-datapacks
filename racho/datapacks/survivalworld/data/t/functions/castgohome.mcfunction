execute as @e[nbt={Item: {tag: { CustomModelData:1011} } }] run kill

summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["point"]}
summon armor_stand ~ ~ ~ {Tags:["point"]}

execute store result entity @e[tag=point,limit=1] Pos[0] double 1 run scoreboard players get @p homex
execute store result entity @e[tag=point,limit=1] Pos[1] double 1 run scoreboard players get @p homey
execute store result entity @e[tag=point,limit=1] Pos[2] double 1 run scoreboard players get @p homez
execute store result entity @e[tag=point,limit=1] Dimension double 1 run scoreboard players get @p homed

tp @p @e[tag=point,limit=1]
kill @e[type=armor_stand,tag=point]

title @p title {"text":"...home!"}
particle minecraft:nautilus ~ ~ ~1 5 5 5 3 2000