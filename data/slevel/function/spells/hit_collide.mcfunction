

particle dust{color:[0.733,0.000,1.000],scale:1} ~ ~ ~ 1 1 1 1 100 force
damage @e[limit=1,sort=nearest,type=!#slevel:not_mob] 4 minecraft:magic by @e[tag=hitshooting,limit=1,sort=nearest]
scoreboard players set .distance hit_rc 1000
