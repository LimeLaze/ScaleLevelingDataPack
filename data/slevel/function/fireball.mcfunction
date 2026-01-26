data merge entity @s {ExplosionPower:0b,Invulnerable:1b,Tags:["spellball"]}
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.1
data modify storage test Motion set from entity @s Pos
tp @s ~ ~ ~
data modify entity @s Motion set from storage test Motion
 