


scoreboard players add .distance sonic_rc 1

execute as @e[distance=0..3,tag=!sonicshooting,type=!#slevel:not_mob] at @s run damage @s 12 minecraft:sonic_boom by @p[tag=sonicshooting]
particle minecraft:sonic_boom


execute if score .distance sonic_rc matches ..25 positioned ^ ^ ^0.8 rotated ~ ~ run function slevel:spells/sonicshoot


