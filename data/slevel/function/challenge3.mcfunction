scoreboard objectives add hitlessdmg minecraft.custom:minecraft.damage_taken



execute as @a[scores={hitlessdmg=1..}] at @s run tag @s add c3failed

execute as @a[tag=!c3done,tag=c3accepted,tag=c3failed] run tellraw @s {"color":"dark_red","italic":false,"text":"Challenge failed: Hitless Early Game"}
execute as @a[tag=!c3done,tag=c3accepted,tag=c3failed] run playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 2 0

execute as @a[tag=!c3failed,advancements={story/enter_the_nether=true}] at @s run tag @s add c3complete

execute as @a[tag=!c3done,tag=c3complete] at @s run scoreboard players add @s scalepoint 7
execute as @a[tag=!c3done,tag=c3complete] at @s run scoreboard players add @s scalepointearn 7
execute as @a[tag=!c3done,tag=c3complete] at @s run tellraw @s {"color":"green","italic":false,"text":"Challenge completed: Hitless Early Game"}
execute as @a[tag=!c3done,tag=c3complete] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!c3done,tag=c3complete] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"CHALLENGE GRANTS YOU SCALE POINTS"}
execute as @a[tag=!c3done,tag=c3complete] at @s run tag @s add c3done

execute as @a[tag=!c3done,tag=c3accepted,tag=c3complete] run tag @s add c3done

execute as @a[tag=!c3done,tag=c3accepted,tag=c3failed] run tag @s add c3done
