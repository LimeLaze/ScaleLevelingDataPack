execute store result storage slevel:vigorstorage spoints int 1 run scoreboard players get @s scalepoint
execute store result storage slevel:vigorstorage vigor int 1 run scoreboard players get @s VigorLvl
execute store result storage slevel:vigorstorage endurance int 1 run scoreboard players get @s EnduranceLvl
execute store result storage slevel:vigorstorage agility int 1 run scoreboard players get @s AgilityLvl
execute store result storage slevel:vigorstorage strenght int 1 run scoreboard players get @s StrenghtLvl
execute store result storage slevel:vigorstorage haste int 1 run scoreboard players get @s HasteLvl
execute store result storage slevel:vigorstorage sense int 1 run scoreboard players get @s SenseLvl
function slevel:statsmacro with storage slevel:vigorstorage

tellraw @s {"bold":true,"color":"white","text":"Your levels:"}

execute as @s[scores={VigorLvl=0}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: 0"}

execute as @s[scores={VigorLvl=1}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +1"}
execute as @s[scores={VigorLvl=2}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +2"}
execute as @s[scores={VigorLvl=3}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +3"}
execute as @s[scores={VigorLvl=4}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +4"}
execute as @s[scores={VigorLvl=5}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +5"}
execute as @s[scores={VigorLvl=6}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +6"}
execute as @s[scores={VigorLvl=7}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +7"}
execute as @s[scores={VigorLvl=8}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +8"}
execute as @s[scores={VigorLvl=9}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +9"}
execute as @s[scores={VigorLvl=10}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Vigor: +10 (MAX)"}

execute as @s[scores={EnduranceLvl=0}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: 0"}

execute as @s[scores={EnduranceLvl=1}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +1"}
execute as @s[scores={EnduranceLvl=2}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +2"}
execute as @s[scores={EnduranceLvl=3}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +3"}
execute as @s[scores={EnduranceLvl=4}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +4"}
execute as @s[scores={EnduranceLvl=5}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +5"}
execute as @s[scores={EnduranceLvl=6}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +6"}
execute as @s[scores={EnduranceLvl=7}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +7"}
execute as @s[scores={EnduranceLvl=8}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +8"}
execute as @s[scores={EnduranceLvl=9}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +9"}
execute as @s[scores={EnduranceLvl=10}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Endurance: +10 (MAX)"}

execute as @s[scores={AgilityLvl=0}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: 0"}

execute as @s[scores={AgilityLvl=1}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +1"}
execute as @s[scores={AgilityLvl=2}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +2"}
execute as @s[scores={AgilityLvl=3}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +3"}
execute as @s[scores={AgilityLvl=4}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +4"}
execute as @s[scores={AgilityLvl=5}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +5"}
execute as @s[scores={AgilityLvl=6}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +6"}
execute as @s[scores={AgilityLvl=7}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +7"}
execute as @s[scores={AgilityLvl=8}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +8"}
execute as @s[scores={AgilityLvl=9}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +9"}
execute as @s[scores={AgilityLvl=10}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Agility: +10 (MAX)"}




execute as @s[scores={StrenghtLvl=0}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: 0"}

execute as @s[scores={StrenghtLvl=1}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +1"}
execute as @s[scores={StrenghtLvl=2}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +2"}
execute as @s[scores={StrenghtLvl=3}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +3"}
execute as @s[scores={StrenghtLvl=4}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +4"}
execute as @s[scores={StrenghtLvl=5}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +5"}
execute as @s[scores={StrenghtLvl=6}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +6"}
execute as @s[scores={StrenghtLvl=7}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +7"}
execute as @s[scores={StrenghtLvl=8}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +8"}
execute as @s[scores={StrenghtLvl=9}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +9"}
execute as @s[scores={StrenghtLvl=10}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Strenght: +10 (MAX)"}


execute as @s[scores={HasteLvl=0}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: 0"}

execute as @s[scores={HasteLvl=1}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +1"}
execute as @s[scores={HasteLvl=2}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +2"}
execute as @s[scores={HasteLvl=3}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +3"}
execute as @s[scores={HasteLvl=4}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +4"}
execute as @s[scores={HasteLvl=5}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +5"}
execute as @s[scores={HasteLvl=6}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +6"}
execute as @s[scores={HasteLvl=7}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +7"}
execute as @s[scores={HasteLvl=8}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +8"}
execute as @s[scores={HasteLvl=9}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +9"}
execute as @s[scores={HasteLvl=10}] at @s run tellraw @s {"bold":true,"color":"yellow","text":"Haste: +10 (MAX)"}



