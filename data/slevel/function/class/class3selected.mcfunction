tag @s add class3on

execute as @s[tag=!slstarted,tag=!hunter] at @s run give @s copper_spear[item_name="Hunter's Copper Spear"] 1
execute as @s[tag=!slstarted] at @s run scoreboard players add @s scalepoint 4
execute as @s[tag=!slstarted] at @s run scoreboard players add @s AgilityLvl 1
execute as @s[tag=!slstarted] at @s run trigger VigorUp
execute as @s[tag=!slstarted] at @s run trigger EnduranceUp
execute as @s[tag=!slstarted] at @s run trigger StrenghtUp
execute as @s[tag=!slstarted] at @s run trigger AgilityUp
dialog show @s[tag=!slstarted2] slevel:itemselect
