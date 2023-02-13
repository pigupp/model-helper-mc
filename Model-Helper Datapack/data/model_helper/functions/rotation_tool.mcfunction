# ROTATION-TOOL

# Set score to 0 if score not set (disabled)
# execute unless score @s model_carrot_use = @s model_carrot_use run scoreboard players set @s model_carrot_use 0
# execute unless score @s model_sneak_time = @s model_sneak_time run scoreboard players set @s model_sneak_time 0

# Hold correct item and check if dropped
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{RotationTool:1b}}}] run scoreboard players set @s model_tool 1
execute if entity @s[scores={model_tool=1}] if score @s model_drop matches 1.. if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{RotationTool:1b}}}] run scoreboard players set @s model_tool 2

# Rotate +1 when used
execute if entity @s[scores={model_tool=1}] if score @s model_carrot_use matches 1.. run trigger model_turn set 1

# Rotate -1 when dropping item and giving item back
execute if entity @s[scores={model_tool=2}] run trigger model_turn set -1
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{RotationTool:1b}}}]
execute if entity @s[scores={model_tool=2}] run trigger model_give set -1

# Reset scoreboard
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{RotationTool:1b}}}] run scoreboard players set @s model_tool 0
scoreboard players set @s model_carrot_use 0
scoreboard players set @s model_drop 0
