
summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["cloudstand"]}
scoreboard players set @e[type=armor_stand,tag=cloudstand,limit=1,sort=nearest] CloudCool 200
scoreboard players set .distance cloud_rc 8
