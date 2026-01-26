advancement revoke @s only slevel:spellcasting
scoreboard players set @s SenseScoreCool 40
scoreboard players set @s[scores={SenseLvl=3..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel3:1b}}}}] SenseScoreCool 38

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel4:1b}}}}] SenseScoreCool 34

scoreboard players set @s[scores={SenseLvl=7..,AgilityLvl=1..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wandlevel5:1b}}}}] SenseScoreCool 30

execute if entity @s[scores={SenseScore=20..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=20..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{firespell:1b}}}}}] at @s run function slevel:spells/fire


execute if entity @s[scores={SenseScore=10..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=10..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{dmgspell:1b}}}}}] at @s run function slevel:spells/dmg


execute if entity @s[scores={SenseScore=100..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=100..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{ghastspell:1b}}}}}] at @s run function slevel:spells/ghast
execute if entity @s[scores={SenseScore=25..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=25..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{fangspell:1b}}}}}] at @s run function slevel:spells/fang


execute if entity @s[scores={SenseScore=70..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=70..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{windspell:1b}}}}}] at @s run function slevel:spells/wind
execute if entity @s[scores={SenseScore=170..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=170..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{thunspell:1b}}}}}] at @s run function slevel:spells/thunderstart
execute if entity @s[scores={SenseScore=160..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=160..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{sonicspell:1b}}}}}] at @s run function slevel:spells/sonic
execute if entity @s[scores={SenseScore=110..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=110..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{dragonspell:1b}}}}}] at @s run function slevel:spells/dragon
execute if entity @s[scores={SenseScore=2..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=2..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{breathspell:1b}}}}}] at @s run function slevel:spells/breathstart
execute if entity @s[scores={SenseScore=40..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=40..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{rockspell:1b}}}}}] at @s run function slevel:spells/rockstart
execute if entity @s[scores={SenseScore=30..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=30..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{hitspell:1b}}}}}] at @s run function slevel:spells/hitstart
execute if entity @s[scores={SenseScore=7..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=7..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{bloodspell:1b}}}}}] at @s run function slevel:spells/bloodstart
execute if entity @s[scores={SenseScore=13..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=13..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{shulkspell:1b}}}}}] at @s run function slevel:spells/dmg2
execute if entity @s[scores={SenseScore=200..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=200..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{deepspell:1b}}}}}] at @s run function slevel:spells/deepstart
execute if entity @s[scores={SenseScore=120..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=120..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{healspell:1b}}}}}] at @s run function slevel:spells/heal
execute if entity @s[scores={SenseScore=80..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=80..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{cloudspell:1b}}}}}] at @s run function slevel:spells/cloudstart
execute if entity @s[scores={SenseScore=60..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=60..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{icespell:1b}}}}}] at @s run function slevel:spells/icestart
execute if entity @s[scores={SenseScore=35..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=35..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{shatspell:1b}}}}}] at @s run function slevel:spells/ice2start
execute if entity @s[scores={SenseScore=120..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=120..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{unheal:1b}}}}}] at @s run function slevel:spells/unheal
execute if entity @s[scores={SenseScore=65..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=65..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{slimespell:1b}}}}}] at @s run function slevel:spells/slimestart
execute if entity @s[scores={SenseScore=15..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=15..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{shieldspell:1b}}}}}] at @s run function slevel:spells/shield
execute if entity @s[scores={SenseScore=140..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=140..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{witherspell:1b}}}}}] at @s run function slevel:spells/wither
execute if entity @s[scores={SenseScore=30..},nbt={SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{wand:1b}}}}] if entity @s[scores={SenseScore=30..},nbt={equipment:{offhand:{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{dartspell:1b}}}}}] at @s run function slevel:spells/dartstart





