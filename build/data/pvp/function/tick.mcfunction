execute as @e[type=minecraft:villager] if data entity @s {VillagerData:{profession:"minecraft:cleric"}} if data entity @s Offers.Recipes[6] run data remove entity @s Offers.Recipes[6]

execute as @e[type=minecraft:villager] if data entity @s {VillagerData:{profession:"minecraft:cleric"}} if data entity @s Offers.Recipes[7] run data remove entity @s Offers.Recipes[7]

# removes all level 4 cleric trades to remove reciving ender pearls
# find way to fix error message showing