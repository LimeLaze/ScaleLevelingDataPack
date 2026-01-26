playsound minecraft:block.stone.break player @a ~ ~ ~ 1 0
playsound minecraft:block.stone.break player @a ~ ~ ~ 1 0.7
playsound minecraft:block.stone.break player @a ~ ~ ~ 1 0.9
playsound minecraft:ui.stonecutter.take_result player @a ~ ~ ~ 0.7 0.6
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 0.3 0
particle block{block_state:"minecraft:deepslate"} ~ ~ ~ 0.4 0.4 0.4 0.01 200 force
execute as @e[distance=0..3,tag=!boulder,type=!#slevel:not_mob] at @s run damage @s 8 minecraft:falling_block by @e[tag=boulder,limit=1,sort=nearest]
kill @s
