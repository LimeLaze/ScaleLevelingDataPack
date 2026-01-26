scoreboard objectives add SelectClass1 trigger
scoreboard players enable @a SelectClass1
scoreboard objectives add SelectClass2 trigger
scoreboard players enable @a SelectClass2
scoreboard objectives add SelectClass3 trigger
scoreboard players enable @a SelectClass3
scoreboard objectives add SelectClass4 trigger
scoreboard players enable @a SelectClass4
scoreboard objectives add SelectClass5 trigger
scoreboard players enable @a SelectClass5




execute as @a[scores={SelectClass1=1..}] at @s run function slevel:class/class1selected
execute as @a[scores={SelectClass2=1..}] at @s run function slevel:class/class2selected
execute as @a[scores={SelectClass3=1..}] at @s run function slevel:class/class3selected
execute as @a[scores={SelectClass4=1..}] at @s run function slevel:class/class4selected
execute as @a[scores={SelectClass5=1..}] at @s run function slevel:class/class5selected


scoreboard objectives add Item1 trigger
scoreboard players enable @a Item1
scoreboard objectives add Item2 trigger
scoreboard players enable @a Item2
scoreboard objectives add Item3 trigger
scoreboard players enable @a Item3
scoreboard objectives add Item4 trigger
scoreboard players enable @a Item4
scoreboard objectives add Item5 trigger
scoreboard players enable @a Item5
scoreboard objectives add Item6 trigger
scoreboard players enable @a Item6


execute as @a[scores={Item1=1..},tag=!slstarted2] at @s run give @s minecraft:apple 4
execute as @a[scores={Item1=1..},tag=!slstarted2] at @s run tellraw @s [{"bold":true,"color":"yellow","italic":false,"text":"Note! "},{"bold":false,"color":"white","italic":false,"text":"Since Scale Leveling changes the game balance a lot. It his highly recommended that you turn on the "},{"bold":true,"color":"red","italic":false,"text":"Advanced Keep Inventory "},{"bold":false,"color":"white","italic":false,"text":"and the new difficulty "},{"bold":true,"color":"red","italic":false,"text":"Expert "},{"bold":false,"color":"white","italic":false,"text":"from the Scale Leveling Configs."}]
execute as @a[scores={Item1=1..},tag=!slstarted2] at @s run tag @s add slstarted2

execute as @a[scores={Item2=1..},tag=!slstarted2] at @s run give @s minecraft:trial_key 1
execute as @a[scores={Item2=1..},tag=!slstarted2] at @s run tellraw @s [{"bold":true,"color":"yellow","italic":false,"text":"Note! "},{"bold":false,"color":"white","italic":false,"text":"Since Scale Leveling changes the game balance a lot. It his highly recommended that you turn on the "},{"bold":true,"color":"red","italic":false,"text":"Advanced Keep Inventory "},{"bold":false,"color":"white","italic":false,"text":"and the new difficulty "},{"bold":true,"color":"red","italic":false,"text":"Expert "},{"bold":false,"color":"white","italic":false,"text":"from the Scale Leveling Configs."}]
execute as @a[scores={Item2=1..},tag=!slstarted2] at @s run tag @s add slstarted2

execute as @a[scores={Item3=1..},tag=!slstarted2] at @s run give @s minecraft:bundle 1
execute as @a[scores={Item3=1..},tag=!slstarted2] at @s run tellraw @s [{"bold":true,"color":"yellow","italic":false,"text":"Note! "},{"bold":false,"color":"white","italic":false,"text":"Since Scale Leveling changes the game balance a lot. It his highly recommended that you turn on the "},{"bold":true,"color":"red","italic":false,"text":"Advanced Keep Inventory "},{"bold":false,"color":"white","italic":false,"text":"and the new difficulty "},{"bold":true,"color":"red","italic":false,"text":"Expert "},{"bold":false,"color":"white","italic":false,"text":"from the Scale Leveling Configs."}]
execute as @a[scores={Item3=1..},tag=!slstarted2] at @s run tag @s add slstarted2

execute as @a[scores={Item4=1..},tag=!slstarted2] at @s run give @s minecraft:fishing_rod 1
execute as @a[scores={Item4=1..},tag=!slstarted2] at @s run tellraw @s [{"bold":true,"color":"yellow","italic":false,"text":"Note! "},{"bold":false,"color":"white","italic":false,"text":"Since Scale Leveling changes the game balance a lot. It his highly recommended that you turn on the "},{"bold":true,"color":"red","italic":false,"text":"Advanced Keep Inventory "},{"bold":false,"color":"white","italic":false,"text":"and the new difficulty "},{"bold":true,"color":"red","italic":false,"text":"Expert "},{"bold":false,"color":"white","italic":false,"text":"from the Scale Leveling Configs."}]
execute as @a[scores={Item4=1..},tag=!slstarted2] at @s run tag @s add slstarted2

execute as @a[scores={Item5=1..},tag=!slstarted2] at @s run give @s minecraft:music_disc_mellohi 1
execute as @a[scores={Item5=1..},tag=!slstarted2] at @s run tellraw @s [{"bold":true,"color":"yellow","italic":false,"text":"Note! "},{"bold":false,"color":"white","italic":false,"text":"Since Scale Leveling changes the game balance a lot. It his highly recommended that you turn on the "},{"bold":true,"color":"red","italic":false,"text":"Advanced Keep Inventory "},{"bold":false,"color":"white","italic":false,"text":"and the new difficulty "},{"bold":true,"color":"red","italic":false,"text":"Expert "},{"bold":false,"color":"white","italic":false,"text":"from the Scale Leveling Configs."}]
execute as @a[scores={Item5=1..},tag=!slstarted2] at @s run tag @s add slstarted2

execute as @a[scores={Item6=1..},tag=!slstarted2] at @s run give @s minecraft:name_tag 1
execute as @a[scores={Item6=1..},tag=!slstarted2] at @s run tellraw @s [{"bold":true,"color":"yellow","italic":false,"text":"Note! "},{"bold":false,"color":"white","italic":false,"text":"Since Scale Leveling changes the game balance a lot. It his highly recommended that you turn on the "},{"bold":true,"color":"red","italic":false,"text":"Advanced Keep Inventory "},{"bold":false,"color":"white","italic":false,"text":"and the new difficulty "},{"bold":true,"color":"red","italic":false,"text":"Expert "},{"bold":false,"color":"white","italic":false,"text":"from the Scale Leveling Configs."}]
execute as @a[scores={Item6=1..},tag=!slstarted2] at @s run tag @s add slstarted2




scoreboard players reset @a[scores={SelectClass1=1..}] SelectClass1 
scoreboard players reset @a[scores={SelectClass2=1..}] SelectClass2 
scoreboard players reset @a[scores={SelectClass3=1..}] SelectClass3 
scoreboard players reset @a[scores={SelectClass4=1..}] SelectClass4 
scoreboard players reset @a[scores={SelectClass5=1..}] SelectClass5 



scoreboard players reset @a[scores={Item1=1..}] Item1 
scoreboard players reset @a[scores={Item2=1..}] Item2 
scoreboard players reset @a[scores={Item3=1..}] Item3 
scoreboard players reset @a[scores={Item4=1..}] Item4 
scoreboard players reset @a[scores={Item5=1..}] Item5 
scoreboard players reset @a[scores={Item6=1..}] Item6 