execute as @e[type=minecraft:enderman] at @s if biome ~ ~ ~ minecraft:the_end run damage @s 1 minecraft:player_attack by @r
execute as @e[type=!player,type=!ender_dragon] at @s if biome ~ ~ ~ minecraft:the_end run summon dragon_fireball ~ ~1 ~ {Motion:[0.0,-2.0,0.0],Tags:["smallball"]}
execute as @a at @s run playsound minecraft:entity.endermite.death hostile @s ~ ~ ~ 2 0
execute as @a at @s run playsound minecraft:entity.enderman.scream hostile @s ~ ~ ~ 2 0
title @a title ""
title @a subtitle {"color":"dark_purple","italic":true,"text":"The Ender Dragon uses its final move..."}
