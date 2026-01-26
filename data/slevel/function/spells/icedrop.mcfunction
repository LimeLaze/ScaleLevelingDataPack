playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.5
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.7
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.9
playsound minecraft:entity.snow_golem.hurt player @a ~ ~ ~ 1 0
particle block{block_state:"minecraft:ice"} ~ ~ ~ 0.4 0.4 0.4 0.01 200 force
execute as @e[distance=0..3,tag=!iceboulder,type=!#slevel:not_mob] at @s run damage @s 6 minecraft:falling_block by @e[tag=iceboulder,limit=1,sort=nearest]
execute as @e[distance=0..3,tag=!iceboulder,type=!#slevel:not_mob] at @s run scoreboard players add @s froststack 100
execute as @e[distance=0..3,tag=!iceboulder,type=!#slevel:not_mob] at @s run scoreboard players set @s froststacktimer 60
kill @s
