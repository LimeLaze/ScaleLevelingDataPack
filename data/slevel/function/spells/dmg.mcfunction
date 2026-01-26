
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^3 run execute as @e[distance=0..2,type=!#slevel:not_mob] at @s run damage @s 3 minecraft:player_attack by @p
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^3 run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.5 10
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^3 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1.3
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.3

execute if entity @s[scores={SenseScore=10..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=10..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=10..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=10..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=10..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=10..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=10..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=10..,SpellCool=0}] SenseScore 5

scoreboard players remove @s[scores={SenseScore=10..,SpellCool=0}] SenseScore 10

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 10