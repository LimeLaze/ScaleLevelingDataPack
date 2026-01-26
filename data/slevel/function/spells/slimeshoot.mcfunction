


scoreboard players add .distance slime_rc 1





execute if score .distance slime_rc matches ..85 positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/slime_collide
execute if score .distance slime_rc matches ..85 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/slimeshoot

execute if score .distance slime_rc matches 85..170 positioned ^ ^-0.2 ^0.1 rotated ~ ~ unless block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/slime_collide
execute if score .distance slime_rc matches 85..170 positioned ^ ^-0.2 ^0.1 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/slimeshoot



