function slevel:dragonbuffed
difficulty hard
advancement grant @a only slevel:diffselect
execute as @e[type=!player,type=!iron_golem,type=!wolf,type=!snow_golem] run effect give @s minecraft:strength 1 0 true

execute as @e[type=skeleton,tag=!enchantedskele] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"power":1}}}}}
tag @e[type=skeleton,tag=!enchantedskele] add enchantedskele
execute as @e[type=bogged,tag=!enchantedskele] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"power":1}}}}}
tag @e[type=bogged,tag=!enchantedskele] add enchantedskele
execute as @e[type=stray,tag=!enchantedskele] at @s run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"power":1}}}}}
tag @e[type=stray,tag=!enchantedskele] add enchantedskele
