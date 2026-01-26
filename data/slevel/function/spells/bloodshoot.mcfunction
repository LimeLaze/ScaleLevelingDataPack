execute as @e[tag=!bloodshooting,type=!#slevel:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function slevel:spells/blood_collide



scoreboard players add .distance blood_rc 1







execute if score .distance blood_rc matches ..100 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/bloodshoot



