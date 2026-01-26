execute as @s[scores={SpellCool=0}] anchored eyes positioned ~ ~1 ~ run function slevel:spells/deep_collide

execute if entity @s[scores={SpellCool=0}] run playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 2 0.7



execute if entity @s[scores={SenseScore=200..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=200..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=200..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=200..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=200..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=200..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=200..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=200..,SpellCool=0}] SenseScore 5


scoreboard players remove @s[scores={SenseScore=200..,SpellCool=0}] SenseScore 200

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 20