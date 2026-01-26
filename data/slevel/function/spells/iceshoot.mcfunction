execute as @e[tag=!iceshooting,type=!#slevel:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function slevel:spells/ice_collide



scoreboard players add .distance ice_rc 1





execute if score .distance ice_rc matches 8 positioned ^ ^ ^0.8 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/ice_collide
execute if score .distance ice_rc matches ..8 positioned ^ ^ ^0.8 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/ice_collide

execute if score .distance ice_rc matches ..8 positioned ^ ^ ^0.8 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/iceshoot



