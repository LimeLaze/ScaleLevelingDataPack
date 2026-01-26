
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 0.5
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 0.7
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 0.9
particle block{block_state:"minecraft:ice"} ~ ~ ~ 0.3 0.3 0.3 0.01 40 force
damage @e[distance=0..1,limit=1,sort=nearest,type=!#slevel:not_mob] 3 minecraft:freeze by @e[tag=ice2shooting,limit=1,sort=nearest]
execute as @e[distance=0..1,limit=1,sort=nearest,type=!#slevel:not_mob,tag=!ice2shooting] at @s run scoreboard players add @s froststack 60
execute as @e[distance=0..1,limit=1,sort=nearest,type=!#slevel:not_mob,tag=!ice2shooting] at @s run scoreboard players set @s froststacktimer 60
scoreboard players set .distance ice2_rc 25