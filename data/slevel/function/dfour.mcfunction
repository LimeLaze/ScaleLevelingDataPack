function slevel:dragonbuffed
difficulty hard
advancement grant @a only slevel:diffselect
scoreboard objectives add hotlinedamage minecraft.custom:minecraft.damage_taken
kill @e[nbt={HurtTime:10s},type=!ender_dragon]
execute as @a[scores={hotlinedamage=1..}] at @s run kill @s 
scoreboard players reset @a hotlinedamage