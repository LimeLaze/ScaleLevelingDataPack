execute as @e[type=minecraft:enderman] at @s if biome ~ ~ ~ minecraft:the_end run damage @s 1 minecraft:player_attack by @r
execute as @a at @s run playsound minecraft:entity.enderman.scream hostile @s ~ ~ ~ 2 0
title @a title ""
title @a subtitle {"color":"dark_purple","italic":true,"text":"The Ender Dragon calls a target..."}
