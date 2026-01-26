execute as @s[scores={SpellCool=0}] run function slevel:spells/blood
execute if entity @s[scores={SpellCool=0}] run particle dust{color:[0.459,0.000,0.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 1 force
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:block.pointed_dripstone.drip_water player @a ~ ~ ~ 2 0



execute if entity @s[scores={SenseScore=7..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=7..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=7..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=7..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=7..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=7..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=7..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=7..,SpellCool=0}] SenseScore 5


scoreboard players remove @s[scores={SenseScore=7..,SpellCool=0}] SenseScore 7

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 0