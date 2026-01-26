tag @s add class4on

execute as @s[tag=!slstarted,tag=!necro] at @s run give @s flower_banner_pattern[item_model="spell_spark",item_name={"italic":false,"text":"Necromancer's Spell Pattern"},rarity="rare",lore=[{"color":"gray","italic":false,"text":"Spark [10☆]"}],custom_data={dmgspell:1b}] 1
execute as @s[tag=!slstarted] at @s run scoreboard players add @s scalepoint 3
execute as @s[tag=!slstarted] at @s run scoreboard players add @s SenseLvl 2
execute as @s[tag=!slstarted] at @s run trigger SenseUp
execute as @s[tag=!slstarted] at @s run trigger EnduranceUp
execute as @s[tag=!slstarted] at @s run trigger AgilityUp
dialog show @s[tag=!slstarted2] slevel:itemselect