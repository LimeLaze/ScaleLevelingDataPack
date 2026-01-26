execute as @e[tag=!hitshooting,type=!#slevel:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function slevel:spells/hit_collide



scoreboard players add .distance hit_rc 1



particle dust{color:[0.733,0.000,1.000],scale:1} ~ ~ ~ 0 0 0 10 1 force

execute if score .distance hit_rc matches 1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/hit_collide2
execute if score .distance hit_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/hit_collide2

execute if score .distance hit_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/hitshoot



