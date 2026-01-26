execute as @e[distance=0..2,tag=!ice2shooting,type=!#slevel:not_mob] at @s run damage @s 3 minecraft:freeze by @e[tag=ice2shooting,limit=1,sort=nearest]
execute as @e[distance=0..2,tag=!ice2shooting,type=!#slevel:not_mob] at @s run scoreboard players add @s froststack 5
execute as @e[distance=0..2,tag=!ice2shooting,type=!#slevel:not_mob] at @s run scoreboard players set @s froststacktimer 60
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.05 0.5
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.05 0.7
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.05 0.9
