execute as @e[tag=turret] at @s run tp @s ~ ~ ~ facing entity @p

execute as @a store result score @s playerX run data get entity @s Pos[0] 100
execute as @a store result score @s playerY run data get entity @s Pos[1] 100
execute as @a store result score @s playerZ run data get entity @s Pos[2] 100

execute as @e[name=legolas_arrow] store result score @s projectileX run data get entity @s Pos[0] 100
execute as @e[name=legolas_arrow] store result score @s projectileY run data get entity @s Pos[1] 100
execute as @e[name=legolas_arrow] store result score @s projectileZ run data get entity @s Pos[2] 100

execute as @e[name=legolas_arrow] store result score @s projectileX run scoreboard players operation @s projectileX -= @p[tag=turret] playerX
execute as @e[name=legolas_arrow] store result score @s projectileY run scoreboard players operation @s projectileY -= @p[tag=turret] playerY
execute as @e[name=legolas_arrow] store result score @s projectileZ run scoreboard players operation @s projectileZ -= @p[tag=turret] playerZ

execute as @e[name=legolas_arrow] at @s run tp @s ~ ~1.62 ~

execute as @e[name=legolas_arrow] store result entity @s Motion[0] double 0.1 run scoreboard players get @s projectileX
execute as @e[name=legolas_arrow] store result entity @s Motion[1] double 0.1 run scoreboard players get @s projectileY
execute as @e[name=legolas_arrow] store result entity @s Motion[2] double 0.1 run scoreboard players get @s projectileZ

scoreboard players reset @e projectileX
scoreboard players reset @e projectileY
scoreboard players reset @e projectileZ

execute as @e[name=legolas_arrow] at @s run data merge entity @s {CustomName:""}

data merge block -4660 71 769 {Text1:'{"score":{"objective":"projectileX","name":"legolas_arrow"}}'}
data merge block -4660 71 769 {Text2:'{"score":{"objective":"projectileY","name":"legolas_arrow"}}'}
data merge block -4660 71 769 {Text3:'{"score":{"objective":"projectileZ","name":"legolas_arrow"}}'}