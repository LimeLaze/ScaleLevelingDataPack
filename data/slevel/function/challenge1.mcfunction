
execute as @a[advancements={story/mine_diamond=true}] at @s run tag @s add c1failed
execute as @a[tag=!c1done,tag=c1accepted,tag=c1failed] run tellraw @s {"color":"dark_red","italic":false,"text":"Challenge failed: No Diamonds Run"}
execute as @a[tag=!c1done,tag=c1accepted,tag=c1failed] run playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 2 0

execute as @a[advancements={story/mine_diamond=false,end/kill_dragon=true}] at @s run tag @s add c1complete

execute as @a[tag=!c1done,tag=c1complete] at @s run scoreboard players add @s scalepoint 5
execute as @a[tag=!c1done,tag=c1complete] at @s run scoreboard players add @s scalepointearn 5
execute as @a[tag=!c1done,tag=c1complete] at @s run tellraw @s {"color":"green","italic":false,"text":"Challenge completed: No Diamonds Run"}
execute as @a[tag=!c1done,tag=c1complete] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!c1done,tag=c1complete] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"CHALLENGE GRANTS YOU SCALE POINTS"}
execute as @a[tag=!c1done,tag=c1complete] at @s run tag @s add c1done

execute as @a[tag=!c1done,tag=c1accepted,tag=c1complete] run tag @s add c1done

execute as @a[tag=!c1done,tag=c1accepted,tag=c1failed] run tag @s add c1done
