tag @s add class2on

execute as @s[tag=!slstarted,tag=!northerner] at @s run give @s stone_axe[item_name="Northerner's Stone Axe"] 1
execute as @s[tag=!slstarted] at @s run scoreboard players add @s scalepoint 3
execute as @s[tag=!slstarted] at @s run scoreboard players add @s EnduranceLvl 1
execute as @s[tag=!slstarted] at @s run scoreboard players add @s StrenghtLvl 1
execute as @s[tag=!slstarted] at @s run trigger VigorUp
execute as @s[tag=!slstarted] at @s run trigger EnduranceUp
execute as @s[tag=!slstarted] at @s run trigger StrenghtUp
dialog show @s[tag=!slstarted2] slevel:itemselect


