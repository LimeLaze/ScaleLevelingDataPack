execute as @s[scores={SpellCool=0}] run function slevel:spells/thunder
execute if entity @s[scores={SpellCool=0}] run particle minecraft:poof ~ ~5 ~ 0 4 0 0.1 20
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 0.4 2
execute if entity @s[scores={SenseScore=170..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=170..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=170..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=170..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=170..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=170..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=170..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=170..,SpellCool=0}] SenseScore 5


scoreboard players remove @s[scores={SenseScore=170..,SpellCool=0}] SenseScore 170

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 10