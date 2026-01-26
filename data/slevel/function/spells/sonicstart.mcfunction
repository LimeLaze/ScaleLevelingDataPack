tag @s add sonicshooting

playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 1
particle dust{color:[0.000,0.420,0.353],scale:2} ~ ~1 ~ 1 1 1 0.01 20 normal
execute anchored eyes positioned ^ ^ ^ run function slevel:spells/sonicshoot

tag @s remove sonicshooting

scoreboard players reset .distance sonic_rc

