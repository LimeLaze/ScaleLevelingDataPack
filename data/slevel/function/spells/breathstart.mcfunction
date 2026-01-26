execute as @s[scores={SpellCool=0}] run function slevel:spells/breath
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^3 run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.002 40
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2 run particle minecraft:dragon_breath ~ ~ ~ 0.3 0.3 0.3 0.002 30
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^1 run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.002 20

execute if entity @s[scores={SpellCool=0}] run particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0.1 1

execute if entity @s[scores={SpellCool=0}] run playsound minecraft:block.fire.ambient player @a ~ ~ ~ 2 2

execute if entity @s[scores={SenseScore=5..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=5..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=5..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=5..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=5..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=5..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=5..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=5..,SpellCool=0}] SenseScore 5


scoreboard players remove @s[scores={SenseScore=5..,SpellCool=0}] SenseScore 5

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 4