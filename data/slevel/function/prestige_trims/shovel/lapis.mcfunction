item modify entity @s armor.head slevel:shovel/lapis
item modify entity @s armor.chest slevel:shovel/lapis
item modify entity @s armor.feet slevel:shovel/lapis
item modify entity @s armor.legs slevel:shovel/lapis
clear @s minecraft:lapis_lazuli 1
clear @s minecraft:creeper_banner_pattern[custom_data={trimshovel:1b}] 1
playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 0
particle dust{color:[0.247,1.000,0.220],scale:3} ~ ~1 ~ 1 1 1 1 10 normal
advancement grant @s only slevel:prestigetrim