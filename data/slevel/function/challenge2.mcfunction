



execute as @a[advancements={adventure/shoot_arrow=true}] at @s run tag @s add c2failed
execute as @a[advancements={adventure/ol_betsy=true}] at @s run tag @s add c2failed
execute as @a[tag=!c2done,tag=c2accepted,tag=c2failed] run tellraw @s {"color":"dark_red","italic":false,"text":"Challenge failed: Archery Banned"}
execute as @a[tag=!c2done,tag=c2accepted,tag=c2failed] run playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 2 0

execute as @a[advancements={adventure/shoot_arrow=false,end/kill_dragon=true}] at @s run tag @s add c2complete
execute as @a[advancements={adventure/ol_betsy=false,end/kill_dragon=true}] at @s run tag @s add c2complete

execute as @a[tag=!c2done,tag=c2complete] at @s run scoreboard players add @s scalepoint 3
execute as @a[tag=!c2done,tag=c2complete] at @s run scoreboard players add @s scalepointearn 3
execute as @a[tag=!c2done,tag=c2complete] at @s run tellraw @s {"color":"green","italic":false,"text":"Challenge completed: Archery Banned"}
execute as @a[tag=!c2done,tag=c2complete] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!c2done,tag=c2complete] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"CHALLENGE GRANTS YOU SCALE POINTS"}
execute as @a[tag=!c2done,tag=c2complete] at @s run tag @s add c2done

execute as @a[tag=!c2done,tag=c2accepted,tag=c2complete] run tag @s add c2done

execute as @a[tag=!c2done,tag=c2accepted,tag=c2failed] run tag @s add c2done
