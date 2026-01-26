tag @s add deepshooting
place feature minecraft:sculk_patch_deep_dark ~ ~-1 ~
place feature minecraft:sculk_patch_deep_dark ~ ~1 ~
place feature minecraft:sculk_patch_deep_dark ~ ~-2 ~
place feature minecraft:sculk_patch_deep_dark ~ ~2 ~
particle minecraft:sculk_charge_pop ~ ~1 ~ 2 2 2 0.01 100
particle dust{color:[0.000,0.420,0.353],scale:2} ~ ~ ~ 1 1 1 1 40 force
effect give @s minecraft:darkness 2 5 true
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.6 2
playsound minecraft:entity.warden.roar player @a ~ ~ ~ 0.6 2
execute as @e[distance=0..6,tag=!deepshooting,type=!#slevel:not_mob] at @s run damage @s 40 minecraft:sonic_boom by @p[tag=deepshooting]

tag @s remove deepshooting
#scoreboard players set .distance deep_rc 150
