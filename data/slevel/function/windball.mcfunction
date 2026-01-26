data merge entity @s {ExplosionPower:10b,Invulnerable:1b,Tags:["windball"]}
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.6
data modify storage test Motion set from entity @s Pos
tp @s ~ ~ ~
data modify entity @s Motion set from storage test Motion
 