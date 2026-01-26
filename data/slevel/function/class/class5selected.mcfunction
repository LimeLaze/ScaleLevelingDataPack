tag @s add class5on
execute as @s[tag=!slstarted,tag=!miner] at @s run give @s stone_pickaxe[item_name="Miner's Stone Pickaxe"] 1
execute as @s[tag=!slstarted] at @s run scoreboard players add @s scalepoint 4
execute as @s[tag=!slstarted] at @s run scoreboard players add @s HasteLvl 1
execute as @s[tag=!slstarted] at @s run trigger VigorUp
execute as @s[tag=!slstarted] at @s run trigger EnduranceUp
execute as @s[tag=!slstarted] at @s run trigger AgilityUp
execute as @s[tag=!slstarted] at @s run trigger HasteUp
dialog show @s[tag=!slstarted2] slevel:itemselect