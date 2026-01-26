execute as @e[tag=!rockshooting,type=!#slevel:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function slevel:spells/rock_collide



scoreboard players add .distance rock_rc 1





execute if score .distance rock_rc matches 8 positioned ^ ^ ^0.8 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/rock_collide
execute if score .distance rock_rc matches ..8 positioned ^ ^ ^0.8 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/rock_collide

execute if score .distance rock_rc matches ..8 positioned ^ ^ ^0.8 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/rockshoot



