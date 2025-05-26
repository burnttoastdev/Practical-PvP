# Ender pearls ->
execute as @e[type=minecraft:villager] if data entity @s {VillagerData:{profession:"minecraft:cleric"}} if data entity @s Offers.Recipes[6] run data remove entity @s Offers.Recipes[6]

execute as @e[type=minecraft:villager] if data entity @s {VillagerData:{profession:"minecraft:cleric"}} if data entity @s Offers.Recipes[7] run data remove entity @s Offers.Recipes[7]

# removes all level 4 cleric trades to remove reciving ender pearls
# find way to fix error message showing

# Elytra replacement ->
execute as @e[type=minecraft:item_frame,nbt={Item:{id: "minecraft:elytra"}}] run data merge entity @s {Item:{id: "minecraft:leather_chestplate",components:{trim:{pattern:spire,material:diamond,show_in_tooltip:false},dyed_color:10329495,custom_name:[{"text":"Elytra Scrap","italic":false,"color":"light_purple"}],lore:[[{"text":"Litterly useless...","italic":false,"color":"gray"}]],enchantment_glint_override:true,unbreakable:{},tooltip_display:{hidden_components:[dyed_color,trim]}}}}

# above command replaces item frames with elytra's with the alternative
# a.k.a. replacing end ship elytra's

# Combat logging ->

execute as @a[tag=combat] run function pvp:combat_tick

# checks if they are safe or should be killed

execute if entity @s[tag=combat] if score @s logged matches 1.. run function pvp:kill
execute if entity @s[tag=!combat] if score @s logged matches 1.. run function pvp:safe

# checks if they died in combat

execute if score @s deaths matches 1.. run function pvp:death