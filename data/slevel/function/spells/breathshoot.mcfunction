


scoreboard players add .distance breath_rc 1

execute as @e[distance=0..3,tag=!breathshooting,type=!#slevel:not_mob] at @s run damage @s 2 minecraft:dragon_breath by @p[tag=breathshooting]



execute if score .distance breath_rc matches ..7 positioned ^ ^ ^0.8 rotated ~ ~ if block ~ ~ ~ #slevel:raycast_pass run function slevel:spells/breathshoot


