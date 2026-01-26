execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^ summon minecraft:small_fireball run function slevel:fireball
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.5 10
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.3
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 0.6

execute if entity @s[scores={SenseScore=20..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=20..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=20..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=20..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=20..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=20..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=20..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=20..,SpellCool=0}] SenseScore 5


scoreboard players remove @s[scores={SenseScore=20..,SpellCool=0}] SenseScore 20

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 10