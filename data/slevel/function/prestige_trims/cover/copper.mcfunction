item modify entity @s armor.head slevel:cover/copper
item modify entity @s armor.chest slevel:cover/copper
item modify entity @s armor.feet slevel:cover/copper
item modify entity @s armor.legs slevel:cover/copper
clear @s minecraft:copper_ingot 1
clear @s minecraft:creeper_banner_pattern[custom_data={trimcover:1b}] 1
playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 0
particle dust{color:[0.247,1.000,0.220],scale:3} ~ ~1 ~ 1 1 1 1 10 normal
advancement grant @s only slevel:prestigetrim