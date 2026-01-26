

particle dust{color:[0.459,0.000,0.000],scale:1} ~ ~ ~ 0.5 0.5 0.5 1 10 force
scoreboard players add @e[limit=1,sort=nearest,type=!#slevel:not_mob,tag=!bloodshooting] bleedstack 10
scoreboard players set @e[limit=1,sort=nearest,type=!#slevel:not_mob,tag=!bloodshooting] bleedstacktimer 30
scoreboard players set .distance blood_rc 100
