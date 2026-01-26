execute as @e[tag=!thunshooting,type=!#slevel:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function slevel:spells/thun_collide



scoreboard players add .distance thun_rc 1



execute if score .distance thun_rc matches 1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run summon minecraft:lightning_bolt ~ ~ ~

execute if score .distance thun_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/thunshoot

execute if score .distance thun_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run summon minecraft:lightning_bolt ~ ~ ~



