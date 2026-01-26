tag @s add class1on

execute as @s[tag=!slstarted,tag=!combatant] at @s run give @s golden_sword[item_name="Combatant's Golden Sword"] 1
execute as @s[tag=!slstarted] at @s run scoreboard players add @s scalepoint 4
execute as @s[tag=!slstarted] at @s run scoreboard players add @s VigorLvl 1

execute as @s[tag=!slstarted] at @s run trigger VigorUp
execute as @s[tag=!slstarted] at @s run trigger AgilityUp
execute as @s[tag=!slstarted] at @s run trigger StrenghtUp
execute as @s[tag=!slstarted] at @s run trigger HasteUp
dialog show @s[tag=!slstarted2] slevel:itemselect


