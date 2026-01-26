function slevel:dragonbuffed
difficulty hard
advancement grant @a only slevel:diffselect
execute as @e[type=!player,type=!iron_golem,type=!wolf,type=!snow_golem] run effect give @s minecraft:strength 1 1 true

scoreboard objectives add slowdamage minecraft.custom:minecraft.damage_taken
execute as @e[type=skeleton,tag=!enchantedskele] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"power":2}}}}}
tag @e[type=skeleton,tag=!enchantedskele] add enchantedskele
execute as @e[type=bogged,tag=!enchantedskele] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"power":2}}}}}
tag @e[type=bogged,tag=!enchantedskele] add enchantedskele
execute as @e[type=stray,tag=!enchantedskele] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"power":2}}}}}
tag @e[type=stray,tag=!enchantedskele] add enchantedskele
execute as @a[scores={slowdamage=1..}] at @s run effect give @s slowness 2 2 true
scoreboard players reset @a slowdamage