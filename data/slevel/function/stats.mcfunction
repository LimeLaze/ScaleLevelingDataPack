
execute store result storage slevel:vigorstorage spoints int 1 run scoreboard players get @s scalepoint
execute store result storage slevel:vigorstorage vigor int 1 run scoreboard players get @s VigorLvl
execute store result storage slevel:vigorstorage endurance int 1 run scoreboard players get @s EnduranceLvl
execute store result storage slevel:vigorstorage agility int 1 run scoreboard players get @s AgilityLvl
execute store result storage slevel:vigorstorage strenght int 1 run scoreboard players get @s StrenghtLvl
execute store result storage slevel:vigorstorage haste int 1 run scoreboard players get @s HasteLvl
execute store result storage slevel:vigorstorage sense int 1 run scoreboard players get @s SenseLvl
execute store result storage slevel:vigorstorage prestige int 1 run scoreboard players get @s PrestigeLvl
function slevel:statsmacro with storage slevel:vigorstorage
data remove storage slevel:vigorstorage spoints
data remove storage slevel:vigorstorage vigor
data remove storage slevel:vigorstorage endurance
data remove storage slevel:vigorstorage agility
data remove storage slevel:vigorstorage strenght
data remove storage slevel:vigorstorage haste
data remove storage slevel:vigorstorage sense

