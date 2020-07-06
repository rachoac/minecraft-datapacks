# from head
execute as @a[scores={click=1..},nbt={SelectedItem:{tag:{CustomModelData:1000}}}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2.8 run function t:cast
execute as @a[scores={click=1..},nbt={SelectedItem:{tag:{CustomModelData:1005}}}] at @s run function t:castward
scoreboard players reset @a[scores={click=1..}] click
