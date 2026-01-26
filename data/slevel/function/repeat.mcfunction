#execute if score differ difflevel matches 1 run gamerule keep_inventory true

function slevel:startsetup
function slevel:challengerepeat
function slevel:wstatsrepeat
function slevel:prestige_trims/trimrepeat
#recipe give @a slevel:scalepearl


scoreboard objectives add deathscounter deathCount


scoreboard players set @a[scores={deathscounter=1..}] bleedstack 0
scoreboard players set @a[scores={deathscounter=1..}] bleedstacktimer 0
scoreboard players set @a[scores={deathscounter=1..}] froststack 0
scoreboard players set @a[scores={deathscounter=1..}] froststacktimer 0
scoreboard players reset @a[scores={deathscounter=1..}] deathscounter
scoreboard objectives add dballtimer dummy

scoreboard objectives add wstick minecraft.used:minecraft.warped_fungus_on_a_stick

execute as @a[scores={wstick=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{spearl:1b}}}}] at @s run function slevel:resetlevels
scoreboard players reset @a[scores={wstick=1..}] wstick

scoreboard objectives add ResetFinal trigger

scoreboard players enable @a ResetFinal
execute as @a[scores={ResetFinal=1..}] at @s run function slevel:resetlevels

scoreboard players reset @a[scores={ResetFinal=1..}] ResetFinal




#Legendray enchantments
scoreboard objectives add posttime dummy
scoreboard players add postponenpc posttime 0
execute if score postponenpc posttime matches 1 run execute as @e[tag=postpone] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0.001 1 force
execute if score postponenpc posttime matches 1 run execute as @e[tag=postpone] at @s run execute as @e[distance=0..2,type=!player,type=!#slevel:not_mob] at @s run damage @s 7 minecraft:player_attack by @e[tag=postpone,sort=nearest,limit=1]

execute if score postponenpc posttime matches 1 run execute as @e[tag=postpone] at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.7 0.7
execute if score postponenpc posttime matches 1 run execute as @e[tag=postpone] at @s run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.7 0.7
execute if score postponenpc posttime matches 1 run kill @e[tag=postpone]
execute if score postponenpc posttime matches 1.. run scoreboard players remove postponenpc posttime 1


scoreboard objectives add bleedstack dummy
scoreboard objectives add bleedstacktimer dummy
scoreboard players remove @e[scores={bleedstacktimer=..1,bleedstack=1..}] bleedstack 1

scoreboard players remove @e[scores={bleedstacktimer=1..}] bleedstacktimer 1
execute as @e[scores={bleedstack=1..}] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0.6 0.6 0.6 0.001 1 normal
execute as @e[scores={bleedstack=200..}] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0.6 0.6 0.6 0.001 100 normal
execute as @e[scores={bleedstack=200..}] at @s run playsound minecraft:entity.creeper.death hostile @a ~ ~ ~ 2 2
execute as @e[scores={bleedstack=200..}] at @s run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 0.6 1.7
execute as @e[scores={bleedstack=200..}] at @s run damage @s 15 minecraft:generic_kill by @s
execute as @e[scores={bleedstack=200..}] at @s run scoreboard players reset @s bleedstack

scoreboard objectives add froststack dummy
scoreboard objectives add froststacktimer dummy
scoreboard players remove @e[scores={froststacktimer=..1,froststack=1..}] froststack 1

scoreboard players remove @e[scores={froststacktimer=1..}] froststacktimer 1
execute as @e[scores={froststack=1..}] at @s run particle block{block_state:"minecraft:ice"} ~ ~0.7 ~ 0.6 0.6 0.6 0.001 1 normal
execute as @e[scores={froststack=300..}] at @s run particle block{block_state:"minecraft:ice"} ~ ~0.7 ~ 0.6 0.6 0.6 0.001 100 normal
execute as @e[scores={froststack=300..}] at @s run particle poof ~ ~0.7 ~ 0.6 0.6 0.6 0.5 30 normal
execute as @e[scores={froststack=300..}] at @s run attribute @s minecraft:follow_range base set 1
execute as @e[scores={froststack=300..}] at @s run effect give @s minecraft:mining_fatigue 30 5 true
execute as @e[scores={froststack=300..}] at @s run effect give @s minecraft:blindness 10 5 true
execute as @e[scores={froststack=300..}] at @s run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0.7
execute as @e[scores={froststack=300..}] at @s run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0.5
execute as @e[scores={froststack=300..}] at @s run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0.9

execute as @e[scores={froststack=300..}] at @s run damage @s 9 minecraft:generic_kill by @s
execute as @e[scores={froststack=300..}] at @s run scoreboard players reset @s froststack

#Scale Earn

scoreboard objectives add scalepoint dummy
scoreboard players add @a scalepoint 0
scoreboard objectives add scalepointearn dummy
scoreboard objectives add scalepointearnrepeat dummy
scoreboard objectives add playtimemax minecraft.custom:minecraft.play_time
scoreboard objectives add playtime minecraft.custom:minecraft.play_time
scoreboard objectives add playtimeshort minecraft.custom:minecraft.play_time
scoreboard players add @a scalepointearnrepeat 0
execute as @a[scores={playtimeshort=6000}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[scores={playtimeshort=6000}] at @s run scoreboard players add @s scalepoint 1
execute as @a[scores={playtimeshort=6000}] at @s run title @s title {"bold":false,"color":"gold","italic":false,"text":"TIME GRANTS YOU A SCALE POINT"}
execute as @a[scores={playtimeshort=6000}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0

execute as @a[scores={playtimeshort=24000}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[scores={playtimeshort=24000}] at @s run scoreboard players add @s scalepoint 1
execute as @a[scores={playtimeshort=24000}] at @s run title @s title {"bold":false,"color":"gold","italic":false,"text":"TIME GRANTS YOU A SCALE POINT"}
execute as @a[scores={playtimeshort=24000}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0

execute as @a[scores={playtime=72000,scalepointearnrepeat=..7}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[scores={playtime=72000,scalepointearnrepeat=..7}] at @s run scoreboard players add @s scalepointearnrepeat 1
execute as @a[scores={playtime=72000,scalepointearnrepeat=..7}] at @s run scoreboard players add @s scalepoint 1
execute as @a[scores={playtime=72000,scalepointearnrepeat=..7}] at @s run title @s title {"bold":false,"color":"gold","italic":false,"text":"TIME GRANTS YOU A SCALE POINT"}
execute as @a[scores={playtime=72000,scalepointearnrepeat=..7}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[scores={playtime=72000..}] at @s run scoreboard players reset @s playtime


execute as @a[scores={playtimemax=216000..,scalepointearnrepeat=8..}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[scores={playtimemax=216000..,scalepointearnrepeat=8..}] at @s run scoreboard players add @s scalepointearnrepeat 1
execute as @a[scores={playtimemax=216000..,scalepointearnrepeat=8..}] at @s run scoreboard players add @s scalepoint 1
execute as @a[scores={playtimemax=216000..,scalepointearnrepeat=8..}] at @s run title @s title {"bold":false,"color":"gold","italic":false,"text":"TIME GRANTS YOU A SCALE POINT"}
execute as @a[scores={playtimemax=216000..,scalepointearnrepeat=8..}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[scores={playtimemax=216000..,scalepointearnrepeat=8..}] at @s run scoreboard players reset @s playtimemax



execute as @a[scores={scalepoint=1..}] at @s run particle dust{color:[0.910,0.851,0.337],scale:1} ~ ~0.9 ~ 0.2 0.3 0.2 0.001 1 force


execute as @a[tag=!ctableadv,nbt={Inventory:[{id:"minecraft:crafting_table"}]}] at @s run scoreboard players add @s scalepointearn 2
execute as @a[tag=!ctableadv,nbt={Inventory:[{id:"minecraft:crafting_table"}]}] at @s run scoreboard players add @s scalepoint 2
execute as @a[tag=!ctableadv,nbt={Inventory:[{id:"minecraft:crafting_table"}]}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU SCALE POINTS"}
execute as @a[tag=!ctableadv,nbt={Inventory:[{id:"minecraft:crafting_table"}]}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!ctableadv,nbt={Inventory:[{id:"minecraft:crafting_table"}]}] at @s run tag @s add ctableadv

execute as @a[tag=!tameadv,advancements={husbandry/tame_an_animal=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!tameadv,advancements={husbandry/tame_an_animal=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!tameadv,advancements={husbandry/tame_an_animal=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!tameadv,advancements={husbandry/tame_an_animal=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!tameadv,advancements={husbandry/tame_an_animal=true}] at @s run tag @s add tameadv

execute as @a[tag=!bedadv,advancements={adventure/sleep_in_bed=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!bedadv,advancements={adventure/sleep_in_bed=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!bedadv,advancements={adventure/sleep_in_bed=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!bedadv,advancements={adventure/sleep_in_bed=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!bedadv,advancements={adventure/sleep_in_bed=true}] at @s run tag @s add bedadv

execute as @a[tag=!tradeadv,advancements={adventure/trade=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!tradeadv,advancements={adventure/trade=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!tradeadv,advancements={adventure/trade=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!tradeadv,advancements={adventure/trade=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!tradeadv,advancements={adventure/trade=true}] at @s run tag @s add tradeadv

execute as @a[tag=!trialadv,advancements={adventure/minecraft_trials_edition=true}] at @s run scoreboard players add @s scalepointearn 2
execute as @a[tag=!trialadv,advancements={adventure/minecraft_trials_edition=true}] at @s run scoreboard players add @s scalepoint 2
execute as @a[tag=!trialadv,advancements={adventure/minecraft_trials_edition=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU SCALE POINTS"}
execute as @a[tag=!trialadv,advancements={adventure/minecraft_trials_edition=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!trialadv,advancements={adventure/minecraft_trials_edition=true}] at @s run tag @s add trialadv

execute as @a[tag=!trial2adv,advancements={adventure/under_lock_and_key=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!trial2adv,advancements={adventure/under_lock_and_key=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!trial2adv,advancements={adventure/under_lock_and_key=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!trial2adv,advancements={adventure/under_lock_and_key=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!trial2adv,advancements={adventure/under_lock_and_key=true}] at @s run tag @s add trial2adv


execute as @a[tag=!bastionadv,advancements={nether/loot_bastion=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!bastionadv,advancements={nether/loot_bastion=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!bastionadv,advancements={nether/loot_bastion=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!bastionadv,advancements={nether/loot_bastion=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!bastionadv,advancements={nether/loot_bastion=true}] at @s run tag @s add bastionadv

execute as @a[tag=!debrisadv,advancements={nether/obtain_ancient_debris=true}] at @s run scoreboard players add @s scalepointearn 2
execute as @a[tag=!debrisadv,advancements={nether/obtain_ancient_debris=true}] at @s run scoreboard players add @s scalepoint 2
execute as @a[tag=!debrisadv,advancements={nether/obtain_ancient_debris=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU SCALE POINTS"}
execute as @a[tag=!debrisadv,advancements={nether/obtain_ancient_debris=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!debrisadv,advancements={nether/obtain_ancient_debris=true}] at @s run tag @s add debrisadv


execute as @a[tag=!enchantadv,advancements={story/enchant_item=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!enchantadv,advancements={story/enchant_item=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!enchantadv,advancements={story/enchant_item=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!enchantadv,advancements={story/enchant_item=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!enchantadv,advancements={story/enchant_item=true}] at @s run tag @s add enchantadv


execute as @a[tag=!ipickaxeadv,advancements={story/iron_tools=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!ipickaxeadv,advancements={story/iron_tools=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!ipickaxeadv,advancements={story/iron_tools=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!ipickaxeadv,advancements={story/iron_tools=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!ipickaxeadv,advancements={story/iron_tools=true}] at @s run tag @s add ipickaxeadv

execute as @a[tag=!diamondadv,advancements={story/mine_diamond=true}] at @s run scoreboard players add @s scalepointearn 2
execute as @a[tag=!diamondadv,advancements={story/mine_diamond=true}] at @s run scoreboard players add @s scalepoint 2
execute as @a[tag=!diamondadv,advancements={story/mine_diamond=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU SCALE POINTS"}
execute as @a[tag=!diamondadv,advancements={story/mine_diamond=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!diamondadv,advancements={story/mine_diamond=true}] at @s run tag @s add diamondadv



execute as @a[tag=!netheradv,nbt={Dimension:"minecraft:the_nether"}] at @s run scoreboard players add @s scalepointearn 3
execute as @a[tag=!netheradv,nbt={Dimension:"minecraft:the_nether"}] at @s run scoreboard players add @s scalepoint 3
execute as @a[tag=!netheradv,nbt={Dimension:"minecraft:the_nether"}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU SCALE POINTS"}
execute as @a[tag=!netheradv,nbt={Dimension:"minecraft:the_nether"}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!netheradv,nbt={Dimension:"minecraft:the_nether"}] at @s run tag @s add netheradv

execute as @a[tag=!witheradv,advancements={nether/summon_wither=true}] at @s run scoreboard players add @s scalepointearn 3
execute as @a[tag=!witheradv,advancements={nether/summon_wither=true}] at @s run scoreboard players add @s scalepoint 3
execute as @a[tag=!witheradv,advancements={nether/summon_wither=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU SCALE POINTS"} 
execute as @a[tag=!witheradv,advancements={nether/summon_wither=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0 
execute as @a[tag=!witheradv,advancements={nether/summon_wither=true}] at @s run tag @s add witheradv


execute as @a[tag=!blazeadv,advancements={nether/obtain_blaze_rod=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!blazeadv,advancements={nether/obtain_blaze_rod=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!blazeadv,advancements={nether/obtain_blaze_rod=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!blazeadv,advancements={nether/obtain_blaze_rod=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!blazeadv,advancements={nether/obtain_blaze_rod=true}] at @s run tag @s add blazeadv

execute as @a[tag=!elytraadv,advancements={end/elytra=true}] at @s run scoreboard players add @s scalepointearn 1
execute as @a[tag=!elytraadv,advancements={end/elytra=true}] at @s run scoreboard players add @s scalepoint 1
execute as @a[tag=!elytraadv,advancements={end/elytra=true}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU A SCALE POINT"}
execute as @a[tag=!elytraadv,advancements={end/elytra=true}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!elytraadv,advancements={end/elytra=true}] at @s run tag @s add elytraadv


execute as @a[tag=!endadv,nbt={Dimension:"minecraft:the_end"}] at @s run scoreboard players add @s scalepointearn 3
execute as @a[tag=!endadv,nbt={Dimension:"minecraft:the_end"}] at @s run scoreboard players add @s scalepoint 3
execute as @a[tag=!endadv,nbt={Dimension:"minecraft:the_end"}] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"PROGRESS GRANTS YOU SCALE POINTS"}
execute as @a[tag=!endadv,nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0
execute as @a[tag=!endadv,nbt={Dimension:"minecraft:the_end"}] at @s run tag @s add endadv


#Difficulty++ / Advanced Keep Inventory
scoreboard objectives add deathxp minecraft.custom:minecraft.deaths 
scoreboard objectives add kilevel dummy
scoreboard players add differ ki 0

scoreboard objectives add SelectAKI trigger
scoreboard players enable @a SelectAKI

execute as @a[scores={SelectAKI=1..}] at @s run scoreboard players add differ kilevel 1
execute as @a[scores={SelectAKI=1..}] at @s run playsound minecraft:block.stone_button.click_off master @a ~ ~ ~ 1 0
execute if score differ kilevel matches 2 run scoreboard players set differ kilevel 0

execute as @a[scores={SelectAKI=1..}] at @s if score differ kilevel matches 1 run tellraw @a {"bold":true,"color":"yellow","italic":false,"text":"Advanced Keep Inventory: ON"}
execute as @a[scores={SelectAKI=1..}] at @s if score differ kilevel matches 0 run tellraw @a {"bold":true,"color":"yellow","italic":false,"text":"Advanced Keep Inventory: OFF"}

execute if score differ kilevel matches 0 run gamerule keep_inventory false
execute if score differ kilevel matches 1 run gamerule keep_inventory true
execute as @a[scores={deathxp=1..}] at @s if score differ kilevel matches 1 run xp set @s 0 levels
execute as @a[scores={deathxp=1..}] at @s if score differ kilevel matches 1 run xp set @s 0 points


scoreboard players reset @a[scores={SelectAKI=1..}] SelectAKI
scoreboard players reset @a[scores={deathxp=1..}] deathxp



scoreboard objectives add difflevel dummy
scoreboard players add differ difflevel 0

scoreboard objectives add SelectD1 trigger

scoreboard players enable @a SelectD1
execute as @a[scores={SelectD1=1..}] at @s run scoreboard players set differ difflevel 1
execute as @a[scores={SelectD1=1..}] at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.7 0
execute as @a[scores={SelectD1=1..}] at @s run title @a title ["Difficulty++ selected: ",{"color":"red","text":"Expert"}]
execute if score differ difflevel matches 1 run function slevel:done
scoreboard players reset @a[scores={SelectD1=1..}] SelectD1

scoreboard objectives add SelectD2 trigger

scoreboard players enable @a SelectD2
execute as @a[scores={SelectD2=1..}] at @s run scoreboard players set differ difflevel 2
execute as @a[scores={SelectD2=1..}] at @s run playsound minecraft:entity.warden.hurt master @a ~ ~ ~ 0.7 0
execute as @a[scores={SelectD2=1..}] at @s run title @a title ["Difficulty++ selected: ",{"color":"dark_red","text":"Veteran"}]
execute if score differ difflevel matches 2 run function slevel:dtwo
scoreboard players reset @a[scores={SelectD2=1..}] SelectD2


scoreboard objectives add SelectD3 trigger

scoreboard players enable @a SelectD3
execute as @a[scores={SelectD3=1..}] at @s run scoreboard players set differ difflevel 3
execute as @a[scores={SelectD3=1..}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.5 0
execute as @a[scores={SelectD3=1..}] at @s run title @a title ["Difficulty++ selected: ",{"color":"black","text":"Divinity"}]
execute if score differ difflevel matches 3 run function slevel:dthree
scoreboard players reset @a[scores={SelectD3=1..}] SelectD3

scoreboard objectives add SelectD4 trigger

scoreboard players enable @a SelectD4
execute as @a[scores={SelectD4=1..}] at @s run scoreboard players set differ difflevel 4
execute as @a[scores={SelectD4=1..}] at @s run playsound minecraft:entity.warden.angry master @a ~ ~ ~ 0.7 0.7
execute as @a[scores={SelectD4=1..}] at @s run title @a title ["Difficulty++ selected: ",{"color":"dark_purple","text":"Chronos"}]
execute if score differ difflevel matches 4 run function slevel:dfour
scoreboard players reset @a[scores={SelectD4=1..}] SelectD4

scoreboard objectives add SelectVanilla trigger

scoreboard players enable @a SelectVanilla
execute as @a[scores={SelectVanilla=1..}] at @s run scoreboard players set differ difflevel 0
execute as @a[scores={SelectVanilla=1..}] at @s run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0
execute as @a[scores={SelectVanilla=1..}] at @s run title @a title ["Difficulty++ selected: ",{"color":"white","text":"Vanilla"}]
execute if score differ difflevel matches 0 run function slevel:dvanilla
scoreboard players reset @a[scores={SelectVanilla=1..}] SelectVanilla


#Stats
scoreboard objectives add SeeStats trigger

scoreboard players enable @a SeeStats
execute as @a[scores={SeeStats=1..}] at @s run function slevel:stats
scoreboard players reset @a[scores={SeeStats=1..}] SeeStats

#Vigor
scoreboard objectives add VigorLvl dummy
scoreboard objectives add VigorUp trigger
scoreboard players enable @a VigorUp
scoreboard players add @a VigorLvl 0
execute as @a[scores={scalepoint=0,VigorUp=1..}] at @s run title @s title ""
execute as @a[scores={scalepoint=0,VigorUp=1..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO SCALE POINTS"}
execute as @a[scores={scalepoint=0,VigorUp=1..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5
execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=10..}] at @s run title @s title ""
execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=10..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"ALREADY AT MAX LEVEL"}
execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=10..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=..9}] at @s run tag @s add leveledhealth

execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=..9}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.5 2
execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=..9}] at @s run title @s title [{"color":"white","text":"+1 "},{"color":"red","text":"Vigor"}]
execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=..9}] at @s run advancement grant @s only slevel:leveledup

execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=..9}] at @s run scoreboard players add @s VigorLvl 1
execute as @a[scores={scalepoint=1..,VigorUp=1..,VigorLvl=..9}] at @s run scoreboard players remove @s scalepoint 1
scoreboard players reset @a[scores={VigorUp=1..}] VigorUp

execute as @a[scores={VigorLvl=1}] at @s run attribute @s minecraft:max_health base set 12
execute as @a[scores={VigorLvl=2}] at @s run attribute @s minecraft:max_health base set 14
execute as @a[scores={VigorLvl=3}] at @s run attribute @s minecraft:max_health base set 16
execute as @a[scores={VigorLvl=4}] at @s run attribute @s minecraft:max_health base set 18
execute as @a[scores={VigorLvl=5}] at @s run attribute @s minecraft:max_health base set 20
execute as @a[scores={VigorLvl=6}] at @s run attribute @s minecraft:max_health base set 22
execute as @a[scores={VigorLvl=7}] at @s run attribute @s minecraft:max_health base set 24
execute as @a[scores={VigorLvl=8}] at @s run attribute @s minecraft:max_health base set 26
execute as @a[scores={VigorLvl=9}] at @s run attribute @s minecraft:max_health base set 28
execute as @a[scores={VigorLvl=10}] at @s run attribute @s minecraft:max_health base set 30
execute as @a[scores={VigorLvl=10}] at @s run advancement grant @s only slevel:maxxedlevel
execute as @a[scores={VigorLvl=10}] at @s run tag @s add Vigormaxed


#Sense
scoreboard objectives add SenseLvl dummy
scoreboard objectives add SenseUp trigger
scoreboard players enable @a SenseUp
scoreboard players add @a SenseLvl 0

scoreboard objectives add SenseValue dummy
scoreboard objectives add SenseScore dummy
scoreboard players add @a SenseScore 0

scoreboard objectives add SpellCool dummy
scoreboard players add @a SpellCool 0
scoreboard players remove @a[scores={SpellCool=1..}] SpellCool 1

scoreboard objectives add SenseScoreCool dummy
scoreboard players add @a SenseScoreCool 0
scoreboard players remove @a[scores={SenseScoreCool=1..}] SenseScoreCool 1

execute as @a[scores={SenseScoreCool=0,SenseLvl=1,SenseScore=..19}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=2,SenseScore=..39}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=3,SenseScore=..59}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=4,SenseScore=..79}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=5,SenseScore=..99}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=6,SenseScore=..119}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=7,SenseScore=..139}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=8,SenseScore=..159}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=9,SenseScore=..179}] at @s run scoreboard players add @s SenseScore 1
execute as @a[scores={SenseScoreCool=0,SenseLvl=10,SenseScore=..199}] at @s run scoreboard players add @s SenseScore 1
scoreboard players set @a[scores={SenseScore=201..}] SenseScore 200
execute as @a[nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run recipe give @s slevel:copperwand
execute as @a[nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run recipe give @s slevel:woodenwand
execute as @a[nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run recipe give @s slevel:ironwand
execute as @a[nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run recipe give @s slevel:diamondwand
execute as @a[nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run recipe give @s slevel:stonewand
execute as @a[nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run recipe give @s slevel:goldenwand
execute as @e[tag=windball] at @s run particle minecraft:cloud ~ ~ ~
execute as @e[tag=witherballs] at @s run particle dust{color:[0.710,0.922,1.000],scale:2} ~ ~0.3 ~ 0 0 0 0 0 force
execute as @e[tag=spellfang] at @s run particle dust{color:[0.388,0.376,0.325],scale:3} ~ ~ ~ 0.4 0.1 0.4 0.001 2 force
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart1"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart2"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart3"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart4"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart5"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart6"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart7"]}] run kill @s
execute as @e[type=arrow,nbt={inGround:1b,Tags:["dart8"]}] run kill @s
scoreboard objectives add dart_rc dummy
scoreboard objectives add thun_rc dummy
scoreboard objectives add sonic_rc dummy
scoreboard objectives add rock_rc dummy
scoreboard objectives add deep_rc dummy
scoreboard objectives add cloud_rc dummy
scoreboard objectives add breath_rc dummy
scoreboard objectives add hit_rc dummy
scoreboard objectives add ice_rc dummy
scoreboard objectives add ice2_rc dummy
scoreboard objectives add slime_rc dummy
scoreboard objectives add blood_rc dummy
scoreboard objectives add WindCool dummy
scoreboard players add @a WindCool 0
execute as @a[scores={WindCool=4}] at @s anchored eyes positioned ^ ^ ^ summon minecraft:wind_charge run function slevel:windball

execute as @a[scores={WindCool=4}] at @s run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.7 1.3
execute as @a[scores={WindCool=8}] at @s anchored eyes positioned ^ ^ ^ summon minecraft:wind_charge run function slevel:windball

execute as @a[scores={WindCool=8}] at @s run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.7 1.3
execute as @a[scores={WindCool=12}] at @s anchored eyes positioned ^ ^ ^ summon minecraft:wind_charge run function slevel:windball

execute as @a[scores={WindCool=12}] at @s run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.7 1.3

scoreboard players remove @a[scores={WindCool=1..}] WindCool 1
execute as @e[tag=boulder] at @s if entity @e[distance=0..2,tag=!boulder,type=!#slevel:not_mob] run function slevel:spells/rockdrop
execute as @e[tag=boulder] at @s unless block ~ ~-1 ~ #slevel:raycast_pass run function slevel:spells/rockdrop
execute as @e[tag=boulder] at @s unless block ~0.2 ~-1 ~ #slevel:raycast_pass run function slevel:spells/rockdrop
execute as @e[tag=boulder] at @s unless block ~-0.2 ~-1 ~ #slevel:raycast_pass run function slevel:spells/rockdrop
execute as @e[tag=boulder] at @s unless block ~ ~-1 ~0.2 #slevel:raycast_pass run function slevel:spells/rockdrop
execute as @e[tag=boulder] at @s unless block ~ ~-1 ~-0.2 #slevel:raycast_pass run function slevel:spells/rockdrop

execute as @e[tag=boulder] at @s run particle block{block_state:"minecraft:deepslate"} ~ ~ ~ 0.3 0.3 0.3 0.01 10 force
execute as @e[tag=boulder] at @s run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.01 1 force


execute as @e[tag=iceboulder] at @s if entity @e[distance=0..2,tag=!iceboulder,type=!#slevel:not_mob] run function slevel:spells/icedrop
execute as @e[tag=iceboulder] at @s unless block ~ ~-1 ~ #slevel:raycast_pass run function slevel:spells/icedrop
execute as @e[tag=iceboulder] at @s unless block ~0.2 ~-1 ~ #slevel:raycast_pass run function slevel:spells/icedrop
execute as @e[tag=iceboulder] at @s unless block ~-0.2 ~-1 ~ #slevel:raycast_pass run function slevel:spells/icedrop
execute as @e[tag=iceboulder] at @s unless block ~ ~-1 ~0.2 #slevel:raycast_pass run function slevel:spells/icedrop
execute as @e[tag=iceboulder] at @s unless block ~ ~-1 ~-0.2 #slevel:raycast_pass run function slevel:spells/icedrop

execute as @e[tag=iceboulder] at @s run particle block{block_state:"minecraft:ice"} ~ ~ ~ 0.3 0.3 0.3 0.01 10 force
execute as @e[tag=iceboulder] at @s run particle poof ~ ~ ~ 0.3 0.3 0.3 0.01 1 force








scoreboard objectives add SonicCool dummy
scoreboard players add @a SonicCool 0
scoreboard players remove @a[scores={SonicCool=1..}] SonicCool 1
execute as @a[scores={SonicCool=1}] at @s run function slevel:spells/sonicstart

scoreboard objectives add HealCool dummy
scoreboard players add @a HealCool 0
scoreboard players remove @a[scores={HealCool=1..}] HealCool 1
execute as @a[scores={HealCool=39}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.6 0 0.6 1 50
execute as @a[scores={HealCool=39}] at @s run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1
execute as @a[scores={HealCool=26}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.6 0 0.6 1 50
execute as @a[scores={HealCool=26}] at @s run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1
execute as @a[scores={HealCool=13}] at @s run particle minecraft:happy_villager ~ ~2 ~ 0.6 0 0.6 1 50
execute as @a[scores={HealCool=13}] at @s run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1
execute as @a[scores={HealCool=1}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.6 0.6 0.6 1 50
execute as @a[scores={HealCool=1}] at @s run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.4
execute as @a[scores={HealCool=1}] at @s run playsound minecraft:entity.villager.yes player @s ~ ~ ~ 1 1.2
execute as @a[scores={HealCool=1}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.7 20 force
execute as @a[scores={HealCool=1}] at @s run function slevel:spells/healstart

scoreboard objectives add UnHealCool dummy
scoreboard players add @a UnHealCool 0
scoreboard players remove @a[scores={UnHealCool=1..}] UnHealCool 1
execute as @a[scores={UnHealCool=39}] at @s run particle minecraft:witch ~ ~ ~ 0.6 0 0.6 1 50
execute as @a[scores={UnHealCool=39}] at @s run playsound minecraft:entity.witch.hurt player @a ~ ~ ~0.7 0.7
execute as @a[scores={UnHealCool=26}] at @s run particle minecraft:witch ~ ~1 ~ 0.6 0 0.6 1 50
execute as @a[scores={UnHealCool=26}] at @s run playsound minecraft:entity.witch.hurt player @a ~ ~ ~0.7 0.7
execute as @a[scores={UnHealCool=13}] at @s run particle minecraft:witch ~ ~2 ~ 0.6 0 0.6 1 50
execute as @a[scores={UnHealCool=13}] at @s run playsound minecraft:entity.witch.hurt player @a ~ ~ ~0.7 0.7
execute as @a[scores={UnHealCool=1}] at @s run particle minecraft:witch ~ ~1 ~ 0.6 0.6 0.6 1 50
execute as @a[scores={UnHealCool=1}] at @s run playsound minecraft:entity.witch.hurt player @a ~ ~ ~0.7 1.4
execute as @a[scores={UnHealCool=1}] at @s run playsound minecraft:entity.witch.celebrate player @s ~ ~ ~ 0.5 1.2 
execute as @a[scores={UnHealCool=1}] at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.7 20 force
execute as @a[scores={UnHealCool=1}] at @s run function slevel:spells/unhealstart


scoreboard objectives add CloudCool dummy
scoreboard players add @e[type=armor_stand,tag=cloudstand] CloudCool 0

scoreboard players remove @e[scores={CloudCool=1..}] CloudCool 1

execute as @e[type=armor_stand,tag=cloudstand] at @s run effect give @e[distance=0..2] levitation 1 0 true
execute as @e[type=armor_stand,tag=cloudstand] at @s run particle cloud ~ ~ ~ 0.8 0.4 0.8 0.001 30 force
execute as @e[type=armor_stand,tag=cloudstand] at @s run tag @e[distance=0..2,tag=!cloudstand] add clouded
execute as @e[tag=clouded] at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.001 5 force
execute as @e[tag=clouded] at @s unless entity @e[type=armor_stand,tag=cloudstand,distance=0..4] run tag @s remove clouded
execute as @e[scores={CloudCool=..1}] at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.7 20 force
execute as @e[scores={CloudCool=..1}] at @s run playsound minecraft:block.powder_snow.break player @a ~ ~ ~ 1 0
execute as @e[scores={CloudCool=..1}] at @s run kill @s


scoreboard objectives add SlimeCool dummy
scoreboard players add @e SlimeCool 0
execute as @e[scores={SlimeCool=1}] at @s run effect clear @s minecraft:levitation
scoreboard players remove @e[scores={SlimeCool=1..}] SlimeCool 1

execute as @a[scores={SenseScore=0..}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"dark_gray","italic":false,"text":"||||||||||||||||||||"}]
execute as @a[scores={SenseScore=1..10}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|"},{"color":"dark_gray","italic":false,"text":"|||||||||||||||||||"}]
execute as @a[scores={SenseScore=11..20}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||"},{"color":"dark_gray","italic":false,"text":"||||||||||||||||||"}]
execute as @a[scores={SenseScore=21..30}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||"},{"color":"dark_gray","italic":false,"text":"|||||||||||||||||"}]
execute as @a[scores={SenseScore=31..40}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||"},{"color":"dark_gray","italic":false,"text":"||||||||||||||||"}]
execute as @a[scores={SenseScore=41..50}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||"},{"color":"dark_gray","italic":false,"text":"|||||||||||||||"}]
execute as @a[scores={SenseScore=51..60}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||"},{"color":"dark_gray","italic":false,"text":"||||||||||||||"}]
execute as @a[scores={SenseScore=61..70}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||||"},{"color":"dark_gray","italic":false,"text":"|||||||||||||"}]
execute as @a[scores={SenseScore=71..80}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||||"},{"color":"dark_gray","italic":false,"text":"||||||||||||"}]
execute as @a[scores={SenseScore=81..90}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||||||"},{"color":"dark_gray","italic":false,"text":"|||||||||||"}]
execute as @a[scores={SenseScore=91..100}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||||||"},{"color":"dark_gray","italic":false,"text":"||||||||||"}]
execute as @a[scores={SenseScore=101..110}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||||||||"},{"color":"dark_gray","italic":false,"text":"|||||||||"}]
execute as @a[scores={SenseScore=111..120}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||||||||"},{"color":"dark_gray","italic":false,"text":"||||||||"}]
execute as @a[scores={SenseScore=121..130}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||||||||||"},{"color":"dark_gray","italic":false,"text":"|||||||"}]
execute as @a[scores={SenseScore=131..140}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||||||||||"},{"color":"dark_gray","italic":false,"text":"||||||"}]
execute as @a[scores={SenseScore=141..150}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||||||||||||"},{"color":"dark_gray","italic":false,"text":"|||||"}]
execute as @a[scores={SenseScore=151..160}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||||||||||||"},{"color":"dark_gray","italic":false,"text":"||||"}]
execute as @a[scores={SenseScore=161..170}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||||||||||||||"},{"color":"dark_gray","italic":false,"text":"|||"}]
execute as @a[scores={SenseScore=171..180}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||||||||||||||"},{"color":"dark_gray","italic":false,"text":"||"}]
execute as @a[scores={SenseScore=181..190}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"|||||||||||||||||||"},{"color":"dark_gray","italic":false,"text":"|"}]
execute as @a[scores={SenseScore=191..200}] at @s run title @s actionbar [{"color":"aqua","italic":false,"text":"☆"},{"color":"aqua","italic":false,"text":"||||||||||||||||||||"}]

execute as @a[scores={scalepoint=0,SenseUp=1..}] at @s run title @s title ""
execute as @a[scores={scalepoint=0,SenseUp=1..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO SCALE POINTS"}
execute as @a[scores={scalepoint=0,SenseUp=1..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,SenseUp=1..,SenseLvl=10..}] at @s run title @s title ""
execute as @a[scores={scalepoint=1..,SenseUp=1..,SenseLvl=10..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"ALREADY AT MAX LEVEL"}

execute as @a[scores={scalepoint=1..,SenseUp=1..,SenseLvl=10..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,SenseUp=1..,SenseLvl=..9}] at @s run tag @s add leveledsense

execute as @a[scores={scalepoint=1..SenseUp=1..,SenseLvl=..9}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.5 2
execute as @a[scores={scalepoint=1..,SenseUp=1..,SenseLvl=..9}] at @s run title @s title [{"color":"white","text":"+1 "},{"color":"aqua","text":"Sense"}]
execute as @a[scores={scalepoint=1..,VigorUp=1..,SenseLvl=..9}] at @s run advancement grant @s only slevel:leveledup

execute as @a[scores={scalepoint=1..,SenseUp=1..,SenseLvl=..9}] at @s run scoreboard players add @s SenseLvl 1
execute as @a[scores={scalepoint=1..,SenseUp=1..,SenseLvl=..9}] at @s run scoreboard players remove @s scalepoint 1
scoreboard players reset @a[scores={SenseUp=1..}] SenseUp

execute as @a[scores={SenseLvl=1}] at @s run scoreboard players set @s SenseValue 20
execute as @a[scores={SenseLvl=1..}] at @s run recipe give @s slevel:spell_spark
execute as @a[scores={SenseLvl=1..}] at @s run recipe give @s slevel:spell_fireball
execute as @a[scores={SenseLvl=1..}] at @s run recipe give @s slevel:spell_thunder
execute as @a[scores={SenseLvl=1..}] at @s run recipe give @s slevel:spell_dragon
execute as @a[scores={SenseLvl=1..}] at @s run recipe give @s slevel:spell_breath
execute as @a[scores={SenseLvl=1..}] at @s run recipe give @s slevel:spell_slime
execute as @a[scores={SenseLvl=2}] at @s run scoreboard players set @s SenseValue 40
execute as @a[scores={SenseLvl=3}] at @s run scoreboard players set @s SenseValue 60
execute as @a[scores={SenseLvl=4}] at @s run scoreboard players set @s SenseValue 80
execute as @a[scores={SenseLvl=5}] at @s run scoreboard players set @s SenseValue 100
execute as @a[scores={SenseLvl=6}] at @s run scoreboard players set @s SenseValue 120
execute as @a[scores={SenseLvl=7}] at @s run scoreboard players set @s SenseValue 140
execute as @a[scores={SenseLvl=8}] at @s run scoreboard players set @s SenseValue 160
execute as @a[scores={SenseLvl=9}] at @s run scoreboard players set @s SenseValue 180
execute as @a[scores={SenseLvl=10}] at @s run scoreboard players set @s SenseValue 200
execute as @a[scores={SenseLvl=10}] at @s run advancement grant @s only slevel:maxxedlevel
execute as @a[scores={SenseLvl=10}] at @s run tag @s add Sensemaxed

execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{firespell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{dmgspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{ghastspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{fangspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{windspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{thunspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{sonicspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{dragonspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{breathspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{rockspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{hitspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{bloodspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{shulkspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{deepspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{healspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{cloudspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{icespell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{shatspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{unheal:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{slimespell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{shieldspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{witherspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell
execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{dartspell:1b}}}]}] at @s run advancement grant @s only slevel:getspell

execute as @a[nbt={Inventory:[{id:"minecraft:flower_banner_pattern",components:{"minecraft:custom_data":{firespell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{dmgspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{ghastspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{fangspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{windspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{thunspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{sonicspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{dragonspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{breathspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{rockspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{hitspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{bloodspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{shulkspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{deepspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{healspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{cloudspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{icespell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{shatspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{unheal:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{slimespell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{shieldspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{witherspell:1b}}},{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_data":{dartspell:1b}}}]}] at @s run advancement grant @s only slevel:allspells



#Endurance
scoreboard objectives add EnduranceLvl dummy
scoreboard objectives add EnduranceUp trigger
scoreboard players enable @a EnduranceUp
scoreboard players add @a EnduranceLvl 0
execute as @a[scores={scalepoint=0,EnduranceUp=1..}] at @s run title @s title ""
execute as @a[scores={scalepoint=0,EnduranceUp=1..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO SCALE POINTS"}
execute as @a[scores={scalepoint=0,EnduranceUp=1..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=10..}] at @s run title @s title ""
execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=10..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"ALREADY AT MAX LEVEL"}
execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=10..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=..9}] at @s run tag @s add leveledsafefall

execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=..9}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.5 2
execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=..9}] at @s run title @s title [{"color":"white","text":"+1 "},{"color":"dark_green","text":"Endurance"}]
execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=..9}] at @s run advancement grant @s only slevel:leveledup

execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=..9}] at @s run scoreboard players add @s EnduranceLvl 1
execute as @a[scores={scalepoint=1..,EnduranceUp=1..,EnduranceLvl=..9}] at @s run scoreboard players remove @s scalepoint 1
scoreboard players reset @a[scores={EnduranceUp=1..}] EnduranceUp

execute as @a[scores={EnduranceLvl=1}] at @s run attribute @s minecraft:safe_fall_distance base set 2.5
execute as @a[scores={EnduranceLvl=1}] at @s run attribute @s minecraft:armor base set 1
execute as @a[scores={EnduranceLvl=2}] at @s run attribute @s minecraft:safe_fall_distance base set 3
execute as @a[scores={EnduranceLvl=2}] at @s run attribute @s minecraft:armor base set 2
execute as @a[scores={EnduranceLvl=3}] at @s run attribute @s minecraft:safe_fall_distance base set 3.5
execute as @a[scores={EnduranceLvl=3}] at @s run attribute @s minecraft:armor base set 3
execute as @a[scores={EnduranceLvl=4}] at @s run attribute @s minecraft:safe_fall_distance base set 4
execute as @a[scores={EnduranceLvl=4}] at @s run attribute @s minecraft:armor base set 4
execute as @a[scores={EnduranceLvl=5}] at @s run attribute @s minecraft:safe_fall_distance base set 4.5
execute as @a[scores={EnduranceLvl=5}] at @s run attribute @s minecraft:armor base set 5
execute as @a[scores={EnduranceLvl=6}] at @s run attribute @s minecraft:safe_fall_distance base set 5
execute as @a[scores={EnduranceLvl=6}] at @s run attribute @s minecraft:armor base set 6
execute as @a[scores={EnduranceLvl=7}] at @s run attribute @s minecraft:safe_fall_distance base set 5.5
execute as @a[scores={EnduranceLvl=7}] at @s run attribute @s minecraft:armor base set 7
execute as @a[scores={EnduranceLvl=8}] at @s run attribute @s minecraft:safe_fall_distance base set 6
execute as @a[scores={EnduranceLvl=9}] at @s run attribute @s minecraft:armor base set 8
execute as @a[scores={EnduranceLvl=9}] at @s run attribute @s minecraft:safe_fall_distance base set 6.5
execute as @a[scores={EnduranceLvl=9}] at @s run attribute @s minecraft:armor base set 9
execute as @a[scores={EnduranceLvl=10}] at @s run attribute @s minecraft:safe_fall_distance base set 7
execute as @a[scores={EnduranceLvl=10}] at @s run attribute @s minecraft:armor base set 10
execute as @a[scores={EnduranceLvl=10}] at @s run advancement grant @s only slevel:maxxedlevel
execute as @a[scores={EnduranceLvl=10}] at @s run tag @s add Endurancemaxed

#Strenght
scoreboard objectives add StrenghtLvl dummy
scoreboard objectives add StrenghtUp trigger
scoreboard players enable @a StrenghtUp
scoreboard players add @a StrenghtLvl 0
execute as @a[scores={scalepoint=0,StrenghtUp=1..}] at @s run title @s title ""
execute as @a[scores={scalepoint=0,StrenghtUp=1..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO SCALE POINTS"}
execute as @a[scores={scalepoint=0,StrenghtUp=1..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=10..}] at @s run title @s title ""
execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=10..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"ALREADY AT MAX LEVEL"}
execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=10..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=..9}] at @s run tag @s add leveledattack

execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=..9}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.5 2
execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=..9}] at @s run title @s title [{"color":"white","text":"+1 "},{"color":"dark_red","text":"Strength"}]
execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=..9}] at @s run advancement grant @s only slevel:leveledup

execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=..9}] at @s run scoreboard players add @s StrenghtLvl 1
execute as @a[scores={scalepoint=1..,StrenghtUp=1..,StrenghtLvl=..9}] at @s run scoreboard players remove @s scalepoint 1
scoreboard players reset @a[scores={StrenghtUp=1..}] StrenghtUp

execute as @a[scores={StrenghtLvl=1}] at @s run attribute @s minecraft:attack_damage base set 1
execute as @a[scores={StrenghtLvl=2}] at @s run attribute @s minecraft:attack_damage base set 1.5
execute as @a[scores={StrenghtLvl=3}] at @s run attribute @s minecraft:attack_damage base set 2
execute as @a[scores={StrenghtLvl=4}] at @s run attribute @s minecraft:attack_damage base set 2.5
execute as @a[scores={StrenghtLvl=5}] at @s run attribute @s minecraft:attack_damage base set 3
execute as @a[scores={StrenghtLvl=6}] at @s run attribute @s minecraft:attack_damage base set 3.5
execute as @a[scores={StrenghtLvl=7}] at @s run attribute @s minecraft:attack_damage base set 4
execute as @a[scores={StrenghtLvl=8}] at @s run attribute @s minecraft:attack_damage base set 4.5
execute as @a[scores={StrenghtLvl=9}] at @s run attribute @s minecraft:attack_damage base set 5
execute as @a[scores={StrenghtLvl=10}] at @s run attribute @s minecraft:attack_damage base set 5.5
execute as @a[scores={StrenghtLvl=10}] at @s run advancement grant @s only slevel:maxxedlevel
execute as @a[scores={StrenghtLvl=10}] at @s run tag @s add Strenghtmaxed


#Haste
scoreboard objectives add HasteLvl dummy
scoreboard objectives add HasteUp trigger
scoreboard players enable @a HasteUp
scoreboard players add @a HasteLvl 0
execute as @a[scores={scalepoint=0,HasteUp=1..}] at @s run title @s title ""
execute as @a[scores={scalepoint=0,HasteUp=1..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO SCALE POINTS"}
execute as @a[scores={scalepoint=0,HasteUp=1..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=10..}] at @s run title @s title ""
execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=10..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"ALREADY AT MAX LEVEL"}
execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=10..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=..9}] at @s run tag @s add leveledhaste

execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=..9}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.5 2
execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=..9}] at @s run title @s title [{"color":"white","text":"+1 "},{"color":"gold","text":"Haste"}]
execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=..9}] at @s run advancement grant @s only slevel:leveledup

execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=..9}] at @s run scoreboard players add @s HasteLvl 1
execute as @a[scores={scalepoint=1..,HasteUp=1..,HasteLvl=..9}] at @s run scoreboard players remove @s scalepoint 1
scoreboard players reset @a[scores={HasteUp=1..}] HasteUp



execute as @a[scores={HasteLvl=1}] at @s run attribute @s minecraft:block_break_speed base set 0.75
execute as @a[scores={HasteLvl=2}] at @s run attribute @s minecraft:block_break_speed base set 1
execute as @a[scores={HasteLvl=3}] at @s run attribute @s minecraft:block_break_speed base set 1.25
execute as @a[scores={HasteLvl=4}] at @s run attribute @s minecraft:block_break_speed base set 1.5
execute as @a[scores={HasteLvl=5}] at @s run attribute @s minecraft:block_break_speed base set 1.75
execute as @a[scores={HasteLvl=6}] at @s run attribute @s minecraft:block_break_speed base set 2
execute as @a[scores={HasteLvl=7}] at @s run attribute @s minecraft:block_break_speed base set 2.25
execute as @a[scores={HasteLvl=8}] at @s run attribute @s minecraft:block_break_speed base set 2.5
execute as @a[scores={HasteLvl=9}] at @s run attribute @s minecraft:block_break_speed base set 2.75
execute as @a[scores={HasteLvl=10}] at @s run attribute @s minecraft:block_break_speed base set 3
execute as @a[scores={HasteLvl=10}] at @s run advancement grant @s only slevel:maxxedlevel
execute as @a[scores={HasteLvl=10}] at @s run tag @s add Hastemaxed

#Agility
scoreboard objectives add AgilityLvl dummy
scoreboard objectives add AgilityUp trigger
scoreboard players enable @a AgilityUp
scoreboard players add @a AgilityLvl 0
execute as @a[scores={scalepoint=0,AgilityUp=1..}] at @s run title @s title ""
execute as @a[scores={scalepoint=0,AgilityUp=1..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO SCALE POINTS"}
execute as @a[scores={scalepoint=0,AgilityUp=1..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=10..}] at @s run title @s title ""
execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=10..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"ALREADY AT MAX LEVEL"}
execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=10..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=..9}] at @s run tag @s add leveledspeed

execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=..9}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.5 2
execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=..9}] at @s run title @s title [{"color":"white","text":"+1 "},{"color":"white","text":"Agility"}]
execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=..9}] at @s run advancement grant @s only slevel:leveledup

execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=..9}] at @s run scoreboard players add @s AgilityLvl 1
execute as @a[scores={scalepoint=1..,AgilityUp=1..,AgilityLvl=..9}] at @s run scoreboard players remove @s scalepoint 1
scoreboard players reset @a[scores={AgilityUp=1..}] AgilityUp


execute as @a[scores={AgilityLvl=1}] at @s run attribute @s minecraft:attack_speed base set 3.75
execute as @a[scores={AgilityLvl=2}] at @s run attribute @s minecraft:attack_speed base set 4
execute as @a[scores={AgilityLvl=3}] at @s run attribute @s minecraft:attack_speed base set 4.25
execute as @a[scores={AgilityLvl=4}] at @s run attribute @s minecraft:attack_speed base set 4.5
execute as @a[scores={AgilityLvl=5}] at @s run attribute @s minecraft:attack_speed base set 4.75
execute as @a[scores={AgilityLvl=6}] at @s run attribute @s minecraft:attack_speed base set 5
execute as @a[scores={AgilityLvl=7}] at @s run attribute @s minecraft:attack_speed base set 5.25
execute as @a[scores={AgilityLvl=8}] at @s run attribute @s minecraft:attack_speed base set 5.50
execute as @a[scores={AgilityLvl=9}] at @s run attribute @s minecraft:attack_speed base set 5.75
execute as @a[scores={AgilityLvl=10}] at @s run attribute @s minecraft:attack_speed base set 6


execute as @a[scores={AgilityLvl=1}] at @s run attribute @s minecraft:movement_speed base set 0.07
execute as @a[scores={AgilityLvl=2}] at @s run attribute @s minecraft:movement_speed base set 0.08
execute as @a[scores={AgilityLvl=3}] at @s run attribute @s minecraft:movement_speed base set 0.09
execute as @a[scores={AgilityLvl=4}] at @s run attribute @s minecraft:movement_speed base set 0.1
execute as @a[scores={AgilityLvl=5}] at @s run attribute @s minecraft:movement_speed base set 0.11
execute as @a[scores={AgilityLvl=6}] at @s run attribute @s minecraft:movement_speed base set 0.12
execute as @a[scores={AgilityLvl=7}] at @s run attribute @s minecraft:movement_speed base set 0.13
execute as @a[scores={AgilityLvl=8}] at @s run attribute @s minecraft:movement_speed base set 0.14
execute as @a[scores={AgilityLvl=9}] at @s run attribute @s minecraft:movement_speed base set 0.15
execute as @a[scores={AgilityLvl=10}] at @s run attribute @s minecraft:movement_speed base set 0.16
execute as @a[scores={AgilityLvl=10}] at @s run advancement grant @s only slevel:maxxedlevel
execute as @a[scores={AgilityLvl=10}] at @s run tag @s add Agilitymaxed

execute as @a[tag=!leveledhealth] at @s run attribute @s minecraft:max_health base set 10

execute as @a[tag=!leveledspeed] at @s run attribute @s minecraft:movement_speed base set 0.06

execute as @a[tag=!leveledhaste] at @s run attribute @s minecraft:attack_speed base set 3.5
execute as @a[tag=!leveledhaste] at @s run attribute @s minecraft:block_break_speed base set 0.5


execute as @a[tag=!leveledattack] at @s run attribute @s minecraft:attack_damage base set 0.5


execute as @a[tag=!leveledsafefall] at @s run attribute @s minecraft:safe_fall_distance base set 2
execute as @a[tag=!leveledsafefall] at @s run attribute @s minecraft:armor base set 0




#Class Conigs
execute as @a[tag=class1on,tag=!combatant] at @s run stopsound @s
execute as @a[tag=class1on,tag=!combatant] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"Combatant Selected"}
execute as @a[tag=class1on,tag=combatant] at @s run title @s title [{"color":"dark_purple","obfuscated":true,"text":"s"},{"bold":false,"color":"dark_purple","italic":false,"obfuscated":false,"text":"SCALE LEVELS RESET"},{"obfuscated":true,"text":"s"}]
execute as @a[tag=class1on] at @s run tag @s add combatant
execute as @a[tag=class1on] at @s run tag @s remove class1on

execute as @a[tag=class2on,tag=!northerner] at @s run stopsound @s
execute as @a[tag=class2on,tag=!northerner] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"Northerner Selected"}
execute as @a[tag=class2on,tag=northerner] at @s run title @s title [{"color":"dark_purple","obfuscated":true,"text":"s"},{"bold":false,"color":"dark_purple","italic":false,"obfuscated":false,"text":"SCALE LEVELS RESET"},{"obfuscated":true,"text":"s"}]
execute as @a[tag=class2on] at @s run tag @s add northerner
execute as @a[tag=class2on] at @s run tag @s remove class2on

execute as @a[tag=class3on,tag=!hunter] at @s run stopsound @s
execute as @a[tag=class3on,tag=!hunter] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"Hunter Selected"}
execute as @a[tag=class3on,tag=hunter] at @s run title @s title [{"color":"dark_purple","obfuscated":true,"text":"s"},{"bold":false,"color":"dark_purple","italic":false,"obfuscated":false,"text":"SCALE LEVELS RESET"},{"obfuscated":true,"text":"s"}]
execute as @a[tag=class3on] at @s run tag @s add hunter
execute as @a[tag=class3on] at @s run tag @s remove class3on

execute as @a[tag=class4on,tag=!necro] at @s run stopsound @s
execute as @a[tag=class4on,tag=!necro] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"Necromancer Selected"}
execute as @a[tag=class4on,tag=necro] at @s run title @s title [{"color":"dark_purple","obfuscated":true,"text":"s"},{"bold":false,"color":"dark_purple","italic":false,"obfuscated":false,"text":"SCALE LEVELS RESET"},{"obfuscated":true,"text":"s"}]
execute as @a[tag=class4on] at @s run tag @s add necro
execute as @a[tag=class4on] at @s run tag @s remove class4on

execute as @a[tag=class5on,tag=!miner] at @s run stopsound @s
execute as @a[tag=class5on,tag=!miner] at @s run title @s title {"bold":false,"color":"yellow","italic":false,"text":"Miner Selected"}
execute as @a[tag=class5on,tag=miner] at @s run title @s title [{"color":"dark_purple","obfuscated":true,"text":"s"},{"bold":false,"color":"dark_purple","italic":false,"obfuscated":false,"text":"SCALE LEVELS RESET"},{"obfuscated":true,"text":"s"}]
execute as @a[tag=class5on] at @s run tag @s add miner
execute as @a[tag=class5on] at @s run tag @s remove class5on




#Prestige
tag @a[tag=Agilitymaxed,tag=Endurancemaxed,tag=Vigormaxed,tag=Strenghtmaxed,tag=Hastemaxed,tag=Sensemaxed] add maxedall
scoreboard objectives add PrestigeLvl dummy
scoreboard objectives add PrestigeUp trigger
scoreboard players enable @a PrestigeUp
scoreboard players add @a PrestigeLvl 0


execute as @a[scores={scalepoint=0,PrestigeUp=1..}] at @s run title @s title ""
execute as @a[scores={scalepoint=0,PrestigeUp=1..}] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO SCALE POINTS"}
execute as @a[scores={scalepoint=0,PrestigeUp=1..}] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5

execute as @a[scores={scalepoint=1..,PrestigeUp=1..},tag=!maxedall] at @s run title @s title ""
execute as @a[scores={scalepoint=1..,PrestigeUp=1..},tag=!maxedall] at @s run title @s subtitle {"bold":true,"color":"dark_red","italic":false,"text":"NO MAX STATS"}
execute as @a[scores={scalepoint=1..,PrestigeUp=1..},tag=!maxedall] at @s run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.5 0.5



execute as @a[scores={scalepoint=1..,PrestigeUp=1..,HasteLvl=10..,VigorLvl=10..,EnduranceLvl=10..,AgilityLvl=10..,StrenghtLvl=10..,SenseLvl=10..}] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 2 0
execute as @a[scores={scalepoint=1..,PrestigeUp=1..,HasteLvl=10..,VigorLvl=10..,EnduranceLvl=10..,AgilityLvl=10..,StrenghtLvl=10..,SenseLvl=10..}] at @s run title @s title [{"color":"white","text":"+1 "},{"color":"green","text":"Prestige"}]
execute as @a[scores={scalepoint=1..,PrestigeUp=1..,HasteLvl=10..,VigorLvl=10..,EnduranceLvl=10..,AgilityLvl=10..,StrenghtLvl=10..,SenseLvl=10..}] at @s run advancement grant @s only slevel:prestigeup
execute as @a[scores={scalepoint=1..,PrestigeUp=1..,HasteLvl=10..,VigorLvl=10..,EnduranceLvl=10..,AgilityLvl=10..,StrenghtLvl=10..,SenseLvl=10..}] at @s run scoreboard players add @s PrestigeLvl 1
execute as @a[scores={scalepoint=1..,PrestigeUp=1..,HasteLvl=10..,VigorLvl=10..,EnduranceLvl=10..,AgilityLvl=10..,StrenghtLvl=10..,SenseLvl=10..}] at @s run xp add @s 30 levels
execute as @a[scores={scalepoint=1..,PrestigeUp=1..,HasteLvl=10..,VigorLvl=10..,EnduranceLvl=10..,AgilityLvl=10..,StrenghtLvl=10..,SenseLvl=10..}] at @s run scoreboard players remove @s scalepoint 1
scoreboard players reset @a[scores={PrestigeUp=1..}] PrestigeUp

execute as @a[tag=!pretrim1,scores={PrestigeLvl=5..}] at @s run give @s creeper_banner_pattern[item_model="trim_mask",item_name={"italic":false,"text":"Mask Armor Trim"},rarity="epic",lore=[{"color":"gray","italic":false,"text":"Prestige Smithing Template"}," ",{"color":"gray","italic":false,"text":"Applies to:"},{"color":"blue","italic":false,"text":"Equipped Helmet"},{"color":"gray","italic":false,"text":"Ingredients:"},{"color":"blue","italic":false,"text":"Ingots & Crystals"},{"color":"gray","italic":false,"text":"To Apply:"},{"color":"blue","italic":false,"text":"Right-Click with the trim while holding a selected material in offhand"}],consumable={consume_seconds:1000000000,animation:"spyglass",has_consume_particles:false},custom_data={trimmask:1b}] 1

execute as @a[tag=!pretrim1,scores={PrestigeLvl=5..}] at @s run tag @s add pretrim1

execute as @a[tag=!pretrim2,scores={PrestigeLvl=15..}] at @s run give @s creeper_banner_pattern[item_model="trim_cinder",item_name={"italic":false,"text":"Cinder Armor Trim"},rarity="epic",lore=[{"color":"gray","italic":false,"text":"Prestige Smithing Template"}," ",{"color":"gray","italic":false,"text":"Applies to:"},{"color":"blue","italic":false,"text":"All Equipped Armor"},{"color":"gray","italic":false,"text":"Ingredients:"},{"color":"blue","italic":false,"text":"Ingots & Crystals"},{"color":"gray","italic":false,"text":"To Apply:"},{"color":"blue","italic":false,"text":"Right-Click with the trim while holding a selected material in offhand"}],consumable={consume_seconds:1000000000,animation:"spyglass",has_consume_particles:false},custom_data={trimcinder:1b}] 1

execute as @a[tag=!pretrim2,scores={PrestigeLvl=15..}] at @s run tag @s add pretrim2

execute as @a[tag=!pretrim3,scores={PrestigeLvl=25..}] at @s run give @s creeper_banner_pattern[item_model="trim_shovel",item_name={"italic":false,"text":"Shovel Armor Trim"},rarity="epic",lore=[{"color":"gray","italic":false,"text":"Prestige Smithing Template"}," ",{"color":"gray","italic":false,"text":"Applies to:"},{"color":"blue","italic":false,"text":"All Equipped Armor"},{"color":"gray","italic":false,"text":"Ingredients:"},{"color":"blue","italic":false,"text":"Ingots & Crystals"},{"color":"gray","italic":false,"text":"To Apply:"},{"color":"blue","italic":false,"text":"Right-Click with the trim while holding a selected material in offhand"}],consumable={consume_seconds:1000000000,animation:"spyglass",has_consume_particles:false},custom_data={trimshovel:1b}] 1

execute as @a[tag=!pretrim3,scores={PrestigeLvl=25..}] at @s run tag @s add pretrim3

execute as @a[tag=!pretrim4,scores={PrestigeLvl=50..}] at @s run give @s creeper_banner_pattern[item_model="trim_cover",item_name={"italic":false,"text":"Cover Armor Trim"},rarity="epic",lore=[{"color":"gray","italic":false,"text":"Prestige Smithing Template"}," ",{"color":"gray","italic":false,"text":"Applies to:"},{"color":"blue","italic":false,"text":"All Equipped Armor"},{"color":"gray","italic":false,"text":"Ingredients:"},{"color":"blue","italic":false,"text":"Ingots & Crystals"},{"color":"gray","italic":false,"text":"To Apply:"},{"color":"blue","italic":false,"text":"Right-Click with the trim while holding a selected material in offhand"}],consumable={consume_seconds:1000000000,animation:"spyglass",has_consume_particles:false},custom_data={trimcover:1b}] 1

execute as @a[tag=!pretrim4,scores={PrestigeLvl=50..}] at @s run tag @s add pretrim4


scoreboard players reset @a hotlinedamage

scoreboard players reset @a slowdamage
scoreboard players set @a deathsend 0
scoreboard players reset @a hitlessdmg