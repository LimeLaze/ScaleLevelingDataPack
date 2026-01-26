
#Bows/Crossbows
scoreboard objectives add bowshot minecraft.used:minecraft.bow
scoreboard objectives add bowshot2 minecraft.used:minecraft.crossbow
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:bow
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:crossbow

execute as @a[scores={AgilityLvl=..4,bowshot=1..},nbt={SelectedItem:{id:"minecraft:bow",count:1}}] at @s run kill @e[type=arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]
execute as @a[scores={HasteLvl=..3,bowshot=1..},nbt={SelectedItem:{id:"minecraft:bow",count:1}}] at @s run kill @e[type=arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]

execute as @a[scores={AgilityLvl=..4,bowshot=1..},nbt={SelectedItem:{id:"minecraft:bow",count:1}}] at @s run kill @e[type=spectral_arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]
execute as @a[scores={HasteLvl=..3,bowshot=1..},nbt={SelectedItem:{id:"minecraft:bow",count:1}}] at @s run kill @e[type=spectral_arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]


execute as @a[scores={EnduranceLvl=..1,bowshot2=1..},nbt={SelectedItem:{id:"minecraft:crossbow",count:1}}] at @s run kill @e[type=arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]
execute as @a[scores={AgilityLvl=..2,bowshot2=1..},nbt={SelectedItem:{id:"minecraft:crossbow",count:1}}] at @s run kill @e[type=arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]
execute as @a[scores={HasteLvl=..1,bowshot2=1..},nbt={SelectedItem:{id:"minecraft:crossbow",count:1}}] at @s run kill @e[type=arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]

execute as @a[scores={EnduranceLvl=..1,bowshot2=1..},nbt={SelectedItem:{id:"minecraft:crossbow",count:1}}] at @s run kill @e[type=spectral_arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]
execute as @a[scores={AgilityLvl=..2,bowshot2=1..},nbt={SelectedItem:{id:"minecraft:crossbow",count:1}}] at @s run kill @e[type=spectral_arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]
execute as @a[scores={HasteLvl=..1,bowshot2=1..},nbt={SelectedItem:{id:"minecraft:crossbow",count:1}}] at @s run kill @e[type=spectral_arrow,limit=1,sort=nearest,distance=0..3,nbt={inGround:0b}]



scoreboard players reset @a[scores={bowshot2=1..}] bowshot2

scoreboard players reset @a[scores={bowshot=1..}] bowshot

#Swords
execute as @a[nbt={SelectedItem:{id:"minecraft:copper_sword",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:copper_sword
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:iron_sword
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:diamond_sword
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:diamond_sword


execute as @a[scores={AgilityLvl=0},nbt={SelectedItem:{id:"minecraft:copper_sword",count:1}}] at @s run effect give @s weakness 1 99 true

execute as @a[scores={AgilityLvl=0},nbt={SelectedItem:{id:"minecraft:iron_sword",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={StrenghtLvl=..1},nbt={SelectedItem:{id:"minecraft:iron_sword",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={AgilityLvl=..2},nbt={SelectedItem:{id:"minecraft:diamond_sword",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={StrenghtLvl=..2},nbt={SelectedItem:{id:"minecraft:diamond_sword",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={HasteLvl=..2},nbt={SelectedItem:{id:"minecraft:diamond_sword",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={AgilityLvl=..2},nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={StrenghtLvl=..2},nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={HasteLvl=..2},nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1}}] at @s run effect give @s weakness 1 99 true
#Axes

execute as @a[nbt={SelectedItem:{id:"minecraft:copper_axe",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:copper_axe
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_axe",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:iron_axe
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_axe",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:diamond_axe
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:diamond_axe



execute as @a[scores={StrenghtLvl=0},nbt={SelectedItem:{id:"minecraft:copper_axe",count:1}}] at @s run effect give @s weakness 1 99 true

execute as @a[scores={StrenghtLvl=..2},nbt={SelectedItem:{id:"minecraft:iron_axe",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={StrenghtLvl=..6},nbt={SelectedItem:{id:"minecraft:diamond_axe",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={StrenghtLvl=..6},nbt={SelectedItem:{id:"minecraft:netherite_axe",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={HasteLvl=0},nbt={SelectedItem:{id:"minecraft:diamond_axe",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={HasteLvl=0},nbt={SelectedItem:{id:"minecraft:netherite_axe",count:1}}] at @s run effect give @s weakness 1 99 true

#Spears
execute as @a[nbt={SelectedItem:{id:"minecraft:copper_spear",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:copper_spear
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_spear",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:iron_spear
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_spear",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:diamond_spear
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_spear",count:1}}] at @s run item modify entity @s weapon.mainhand slevel:diamond_spear


execute as @a[scores={AgilityLvl=0},nbt={SelectedItem:{id:"minecraft:copper_spear",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={AgilityLvl=..1},nbt={SelectedItem:{id:"minecraft:iron_spear",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={StrenghtLvl=0},nbt={SelectedItem:{id:"minecraft:iron_spear",count:1}}] at @s run effect give @s weakness 1 99 true

execute as @a[scores={StrenghtLvl=0},nbt={SelectedItem:{id:"minecraft:diamond_spear",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={HasteLvl=0},nbt={SelectedItem:{id:"minecraft:diamond_spear",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={AgilityLvl=..5},nbt={SelectedItem:{id:"minecraft:diamond_spear",count:1}}] at @s run effect give @s weakness 1 99 true

execute as @a[scores={StrenghtLvl=0},nbt={SelectedItem:{id:"minecraft:netherite_spear",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={HasteLvl=0},nbt={SelectedItem:{id:"minecraft:netherite_spear",count:1}}] at @s run effect give @s weakness 1 99 true
execute as @a[scores={AgilityLvl=..5},nbt={SelectedItem:{id:"minecraft:netherite_spear",count:1}}] at @s run effect give @s weakness 1 99 true

