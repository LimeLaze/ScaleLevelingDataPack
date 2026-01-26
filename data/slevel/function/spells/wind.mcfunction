execute as @s[scores={SpellCool=0}] run scoreboard players add @s WindCool 12
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:entity.breeze.hurt player @a ~ ~ ~ 0.7 1.3
execute if entity @s[scores={SpellCool=0}] run particle minecraft:poof ~ ~1.5 ~ 0 0 0 0.5 10

execute if entity @s[scores={SenseScore=50..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=50..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=50..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=50..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=50..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=50..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=50..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=50..,SpellCool=0}] SenseScore 5


scoreboard players remove @s[scores={SenseScore=50..,SpellCool=0}] SenseScore 50

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 10