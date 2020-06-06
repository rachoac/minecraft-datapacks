execute as @e[tag=turret] at @s run tp @s ~ ~ ~ facing entity @p
execute as @a store result score @s playerX run data get entity @s Pos[0] 100
execute as @a store result score @s playerY run data get entity @s Pos[1] 100
execute as @a store result score @s playerZ run data get entity @s Pos[2] 100

data merge block -4660 71 769 {Text1:'{"score":{"objective":"playerX","name":"@p"}}'}
data merge block -4660 71 769 {Text2:'{"score":{"objective":"playerY","name":"@p"}}'}
data merge block -4660 71 769 {Text3:'{"score":{"objective":"playerZ","name":"@p"}}'}