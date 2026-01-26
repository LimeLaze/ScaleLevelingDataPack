
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run tag @s add parrytry

execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=arrow] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=arrow,nbt={inGround:0b}] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=spectral_arrow] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=spectral_arrow,nbt={inGround:0b}] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=breeze_wind_charge] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=breeze_wind_charge] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=wind_charge] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=wind_charge] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=trident] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=trident,nbt={inGround:0b}] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=fireball] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=fireball] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..1,type=small_fireball] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..1,type=small_fireball] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..1,type=snowball] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..1,type=egg] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..1,type=dragon_fireball] run kill @s
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=dragon_fireball] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=firework_rocket] run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..2,type=wither_skull] run kill @s
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=wither_skull] run function slevel:spells/parry

execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute as @e[distance=0..1,type=shulker_bullet] run kill @s
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run execute if entity @e[distance=0..2,type=shulker_bullet] run function slevel:spells/parry
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.3 run particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0 0 force
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^1.9 run particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0 0 force
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2 run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 0.4 1.4
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2 run particle dust{color:[0.620,0.271,0.000],scale:2} ~ ~ ~ 0 0 0 0 0 force
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run particle dust{color:[0.620,0.271,0.000],scale:2} ~ ~ ~ 0 0 0 0 0 force
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run particle minecraft:splash ~ ~ ~ 0.3 0.3 0.3 0.001 10 force
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.1 run particle dust{color:[0.086,0.733,0.780],scale:3} ~ ~ ~ 0 0 0 0 0 normal
execute as @s[scores={SpellCool=0}] anchored eyes positioned ^ ^ ^2.2 run tag @s remove parrytry
execute if entity @s[scores={SenseScore=15..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel1:1b}}}}] run scoreboard players add @s[scores={SenseScore=15..,SpellCool=0}] SenseScore 1
execute if entity @s[scores={SenseScore=15..,SenseLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel2:1b}}}}] run scoreboard players add @s[scores={SenseScore=15..,SpellCool=0}] SenseScore 2
execute if entity @s[scores={SenseScore=15..,SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] run scoreboard players add @s[scores={SenseScore=15..,SpellCool=0}] SenseScore 3
execute if entity @s[scores={SenseScore=15..,SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] run scoreboard players add @s[scores={SenseScore=15..,SpellCool=0}] SenseScore 5

scoreboard players remove @s[scores={SenseScore=15..,SpellCool=0}] SenseScore 15

scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34
scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30
scoreboard players add @s[scores={SpellCool=0}] SpellCool 10