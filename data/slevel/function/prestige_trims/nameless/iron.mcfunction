item modify entity @s armor.head slevel:nameless/iron
item modify entity @s armor.chest slevel:nameless/iron

item modify entity @s armor.legs slevel:nameless/iron
clear @s minecraft:iron_ingot 1
clear @s minecraft:creeper_banner_pattern[custom_data={trimnameless:1b}] 1
playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 0
particle dust{color:[0.247,1.000,0.220],scale:3} ~ ~1 ~ 1 1 1 1 10 normal
advancement grant @s only slevel:prestigetrim