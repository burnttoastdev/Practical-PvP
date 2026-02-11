# Ender pearls ->
execute as @e[type=minecraft:villager] if data entity @s {VillagerData:{profession:"minecraft:cleric"}} if data entity @s Offers.Recipes[6] run data remove entity @s Offers.Recipes[6]

execute as @e[type=minecraft:villager] if data entity @s {VillagerData:{profession:"minecraft:cleric"}} if data entity @s Offers.Recipes[7] run data remove entity @s Offers.Recipes[7]

# removes all level 4 cleric trades to remove reciving ender pearls
# find way to fix error message showing

# Elytra replacement ->
execute as @e[type=minecraft:item_frame,nbt={Item:{id: "minecraft:elytra"}}] run data merge entity @s {Item:{components:{"minecraft:custom_name":{italic:0b,text:"Elytra Scrap"},"minecraft:dyed_color":16383998,"minecraft:enchantment_glint_override":1b,"minecraft:lore":[{color:"gray",extra:[{color:"gray",italic:0b,text:"been"}],italic:0b,text:"It's wings have "},{color:"gray",italic:0b,text:"cut off..."}],"minecraft:rarity":"epic","minecraft:tooltip_display":{hidden_components:["minecraft:dyed_color","minecraft:trim"]},"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"},"minecraft:unbreakable":{}},count:1,id:"minecraft:leather_chestplate"}}

# above command replaces item frames with elytra's with the alternative
# a.k.a. replacing end ship elytra's

# Combat logging ->

execute as @a[tag=combat] run function pvp:combat_tick

# checks if they are safe or should be killed

execute if entity @s[tag=combat] if score @s logged matches 1.. run function pvp:kill
execute if entity @s[tag=!combat] if score @s logged matches 1.. run function pvp:safe

# checks if they died in combat

execute if score @s deaths matches 1.. run function pvp:death