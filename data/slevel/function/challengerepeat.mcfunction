
scoreboard objectives add SelectC1 trigger
scoreboard players enable @a SelectC1
execute as @a[scores={SelectC1=1..}] at @s run tag @s add c1accepted
execute as @a[scores={SelectC1=1..}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
execute as @a[scores={SelectC1=1..}] at @s run tellraw @s {"color":"red","italic":false,"text":"Challenge accepted!"}

scoreboard players reset @a[scores={SelectC1=1..}] SelectC1


scoreboard objectives add SelectC2 trigger
scoreboard players enable @a SelectC2
execute as @a[scores={SelectC2=1..}] at @s run tag @s add c2accepted
execute as @a[scores={SelectC2=1..}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
execute as @a[scores={SelectC2=1..}] at @s run tellraw @s {"color":"red","italic":false,"text":"Challenge accepted!"}

scoreboard players reset @a[scores={SelectC2=1..}] SelectC2


scoreboard objectives add SelectC3 trigger
scoreboard players enable @a SelectC3
execute as @a[scores={SelectC3=1..}] at @s run tag @s add c3accepted
execute as @a[scores={SelectC3=1..}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
execute as @a[scores={SelectC3=1..}] at @s run tellraw @s {"color":"red","italic":false,"text":"Challenge accepted!"}

scoreboard players reset @a[scores={SelectC3=1..}] SelectC3



execute if score differ difflevel matches 1 run function slevel:challenge1
execute if score differ difflevel matches 2 run function slevel:challenge1
execute if score differ difflevel matches 3 run function slevel:challenge1
execute if score differ difflevel matches 4 run function slevel:challenge1

execute if score differ difflevel matches 2 run function slevel:challenge2
execute if score differ difflevel matches 3 run function slevel:challenge2
execute if score differ difflevel matches 4 run function slevel:challenge2


execute if score differ difflevel matches 3 run function slevel:challenge3
execute if score differ difflevel matches 4 run function slevel:challenge3


