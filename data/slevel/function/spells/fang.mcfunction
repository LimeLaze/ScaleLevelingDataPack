
execute if entity @s[scores={SpellCool=0}] run tag @s add fangfree
execute if entity @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^1 run particle dust{color:[0.388,0.376,0.325],scale:2} ~ ~ ~ 0 0 0 1 2 force
execute if entity @s[scores={SpellCool=0}] run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.7 1.3
execute if entity @s[scores={SpellCool=0}] run execute at @e[type=!#slevel:not_mob,tag=!fangfree,limit=3,sort=nearest,distance=0..20] run summon evoker_fangs ~ ~ ~ {NoGravity:1b,Tags:["spellfang"]}

execute if entity @s[scores={SenseScore=25..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=25..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=25..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=25..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=25..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=25..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=25..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=25..,SpellCool=0}] SenseScore 5

execute if entity @s[scores={SpellCool=0}] run tag @s remove fangfree
scoreboard players remove @s[scores={SenseScore=25..,SpellCool=0}] SenseScore 25

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 20