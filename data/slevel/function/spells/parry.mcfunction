particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 0 force
playsound minecraft:item.shield.block player @a ~ ~ ~ 2 2
playsound minecraft:item.axe.wax_off player @a ~ ~ ~ 2 2
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.7 2
effect give @p[tag=parrytry] instant_health 1 1 true
effect give @p[tag=parrytry] minecraft:water_breathing 15 0 false
scoreboard players add @p[tag=parrytry] SenseScore 15
execute as @e[distance=0..5,tag=!parrytry,type=!#slevel:not_mob,type=!player] at @s run particle dust{color:[0.086,0.733,0.780],scale:3} ~ ~1 ~ 0.4 0.4 0.4 0 10 force
execute as @e[distance=0..5,tag=!parrytry,type=!#slevel:not_mob,type=!player] at @s run damage @s 15 minecraft:player_attack by @p[tag=parrytry]
