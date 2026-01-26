scoreboard objectives add deathsend deathCount
scoreboard players add @a deathsend 0
execute as @a[scores={deathsend=1..}] at @s if dimension minecraft:the_end run function slevel:dragonheal
execute as @a[scores={deathsend=1..}] at @s if dimension minecraft:the_end run scoreboard players set @s deathsend 0

scoreboard objectives add dragonhealth dummy


execute as @a[advancements={end/kill_dragon=true}] at @s run advancement grant @s only slevel:edragon

execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest] if score @s dragonhealth matches 101.. run tag @s remove phase2
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest] if score @s dragonhealth matches 101.. run tag @s remove phase3
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest] if score @s dragonhealth matches 101.. run tag @s remove phase4
execute store result score @e[type=ender_dragon] dragonhealth run data get entity @e[type=ender_dragon,limit=1] Health
execute as @e[type=minecraft:ender_dragon,tag=!phase2,limit=1,sort=nearest] if score @s dragonhealth matches ..100 run function slevel:dragonult
execute as @e[type=minecraft:ender_dragon,tag=!phase2,limit=1,sort=nearest] if score @s dragonhealth matches ..100 run tag @s add phase2


execute as @e[type=minecraft:ender_dragon,tag=!phase3,limit=1,sort=nearest] if score @s dragonhealth matches ..50 run function slevel:dragonult2
execute as @e[type=minecraft:ender_dragon,tag=!phase3,limit=1,sort=nearest] if score @s dragonhealth matches ..50 run tag @s add phase3

execute as @e[type=minecraft:ender_dragon,tag=!phase4,limit=1,sort=nearest] if score @s dragonhealth matches ..25 run function slevel:dragonult3
execute as @e[type=minecraft:ender_dragon,tag=!phase4,limit=1,sort=nearest] if score @s dragonhealth matches ..25 run tag @s add phase4


scoreboard players add balltim dballtimer 1
execute as @a at @s if entity @e[type=ender_dragon,distance=0..7] run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.3 0.2 0.01 1 force
execute as @a at @s if entity @e[type=ender_dragon,distance=0..7] run effect give @s minecraft:mining_fatigue 1 5 true
execute as @a at @s if entity @e[type=ender_dragon,distance=0..7] run effect give @s minecraft:weakness 1 0 true
execute as @a at @s if entity @e[type=ender_dragon,distance=0..7] run effect give @s slowness 1 2 true
execute as @e[type=dragon_fireball,tag=!smallball,tag=!dragonballz] at @s if score balltim dballtimer matches 5 run summon dragon_fireball ~ ~-1 ~ {Motion:[0.0,-2.0,0.0],Tags:["smallball"]}

execute as @e[type=arrow] at @s if entity @e[type=ender_dragon,distance=0..4] unless entity @e[type=dragon_fireball,distance=0..10] run execute at @e[type=ender_dragon,sort=nearest,limit=1] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.4 50 force
execute as @e[type=arrow] at @s if entity @e[type=ender_dragon,distance=0..4] unless entity @e[type=dragon_fireball,distance=0..10] run execute at @e[type=ender_dragon,sort=nearest,limit=1] run summon dragon_fireball ~ ~-1 ~ {Motion:[0.0,-2.0,0.0],Tags:["smallball"]}


execute as @e[type=arrow,nbt={inGround:1b}] at @s if biome ~ ~ ~ minecraft:the_end run execute as @e[distance=0..3] at @s run damage @s 4 minecraft:dragon_breath
execute as @e[type=arrow,nbt={inGround:1b}] at @s if biome ~ ~ ~ minecraft:the_end run playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 0.3 2
execute as @e[type=arrow,nbt={inGround:1b}] at @s if biome ~ ~ ~ minecraft:the_end run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.4 30 force

execute as @e[type=arrow,nbt={inGround:1b}] at @s if biome ~ ~ ~ minecraft:the_end run kill @s

execute if score balltim dballtimer matches 5 run scoreboard players set balltim dballtimer 0