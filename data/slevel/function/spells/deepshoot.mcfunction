execute as @e[tag=!deepshooting,type=!#slevel:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function slevel:spells/deep_collide



scoreboard players add .distance deep_rc 1



particle minecraft:sculk_charge_pop

execute if score .distance deep_rc matches 150 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/deep_collide
execute if score .distance deep_rc matches ..150 positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/deep_collide

execute if score .distance deep_rc matches ..150 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/deepshoot



