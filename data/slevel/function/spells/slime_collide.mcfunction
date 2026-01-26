
scoreboard players set @e[type=!#slevel:not_mob,distance=0..2] SlimeCool 3
effect give @e[type=!#slevel:not_mob,distance=0..2] levitation 1 50 true

playsound minecraft:block.slime_block.place player @a ~ ~ ~ 0.7 0.7
particle block{block_state:"minecraft:slime_block"} ~ ~0.3 ~ 0.8 0.4 0.8 0.001 200 force
particle dust{color:[0.325,1.000,0.188],scale:2} ~ ~0.3 ~ 0.8 0.4 0.8 0.001 20 force
scoreboard players set .distance slime_rc 170
