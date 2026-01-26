execute as @e[tag=!ice2shooting,type=!#slevel:not_mob,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function slevel:spells/ice2_collide



scoreboard players add .distance ice2_rc 1




particle block_crumble{block_state:"minecraft:ice"} ~ ~ ~ 0.4 0.4 0.4 0.01 1 force
particle block_crumble{block_state:"minecraft:ice"} ~ ~ ~ 0.1 0.1 0.1 0.01 1 force


execute if score .distance ice2_rc matches 25 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/ice2_collide2
execute if score .distance ice2_rc matches ..25 positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/ice2_collide2

execute if score .distance ice2_rc matches ..25 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/ice2_collide3

execute if score .distance ice2_rc matches ..25 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/ice2shoot



