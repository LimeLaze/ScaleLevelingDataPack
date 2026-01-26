playsound minecraft:entity.allay.death master @a ~ ~ ~ 2 0
particle witch ~ ~1 ~ 0 0.3 0 0.1 50 force
title @s title [{"color":"dark_purple","obfuscated":true,"text":"s"},{"bold":false,"color":"dark_purple","italic":false,"obfuscated":false,"text":"SCALE LEVELS RESET"},{"obfuscated":true,"text":"s"}]
tag @s remove leveledattack
tag @s remove leveledhaste
tag @s remove leveledhealth
tag @s remove leveledsafefall
tag @s remove leveledspeed
tag @s remove leveledsense



scoreboard players reset @s AgilityLvl
scoreboard players reset @s HasteLvl
scoreboard players reset @s VigorLvl
scoreboard players reset @s EnduranceLvl
scoreboard players reset @s StrenghtLvl
scoreboard players reset @s SenseLvl

tag @s remove Vigormaxed
tag @s remove Endurancemaxed
tag @s remove Agilitymaxed
tag @s remove Strenghtmaxed
tag @s remove Hastemaxed
tag @s remove Sensemaxed
tag @s remove maxedall

scoreboard players reset @s scalepoint
scoreboard players reset @s SenseScore
scoreboard players reset @s SenseValue
scoreboard players reset @s scalepointearnrepeat
scoreboard players reset @s playtime
scoreboard players reset @s playtimemax
scoreboard players reset @s playtimeshort
scoreboard players reset @s scalepointearn
scoreboard players add @s[tag=ctableadv] scalepoint 2
scoreboard players add @s[tag=tameadv] scalepoint 1
scoreboard players add @s[tag=bedadv] scalepoint 1
scoreboard players add @s[tag=tradeadv] scalepoint 1
scoreboard players add @s[tag=trialadv] scalepoint 2
scoreboard players add @s[tag=trial2adv] scalepoint 1
scoreboard players add @s[tag=elytraadv] scalepoint 1
scoreboard players add @s[tag=enchantadv] scalepoint 1
scoreboard players add @s[tag=bastionadv] scalepoint 1
scoreboard players add @s[tag=debrisadv] scalepoint 2



scoreboard players add @s[tag=ipickaxeadv] scalepoint 1
scoreboard players add @s[tag=diamondadv] scalepoint 2
scoreboard players add @s[tag=netheradv] scalepoint 3
scoreboard players add @s[tag=blazeadv] scalepoint 1
scoreboard players add @s[tag=endadv] scalepoint 3
scoreboard players add @s[tag=witheradv] scalepoint 3

scoreboard players add @s[tag=c1complete] scalepoint 5
scoreboard players add @s[tag=c2complete] scalepoint 3
scoreboard players add @s[tag=c3complete] scalepoint 7

execute as @s[tag=combatant] at @s run function slevel:class/class1selected
execute as @s[tag=northerner] at @s run function slevel:class/class2selected
execute as @s[tag=hunter] at @s run function slevel:class/class3selected
execute as @s[tag=necro] at @s run function slevel:class/class4selected
execute as @s[tag=miner] at @s run function slevel:class/class5selected

clear @s minecraft:warped_fungus_on_a_stick[custom_data={spearl:1b}] 1


