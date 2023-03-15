# TURN-Trigger

# Check for illegal values
execute unless score @s model_turn matches -8..8 run scoreboard players set @s model_turn 0

# Change rotation (calculate new rotation)
execute as @e[type=item_frame,limit=1,sort=nearest,distance=..5] store result score @s model_rotation run data get entity @s ItemRotation
scoreboard players operation @e[type=item_frame,limit=1,sort=nearest,distance=..5] model_rotation += @s model_turn

# Change rotation (check for overflow)
execute as @e[type=item_frame,limit=1,sort=nearest,distance=..5] if score @s model_rotation matches ..-1 run scoreboard players add @s model_rotation 8
execute as @e[type=item_frame,limit=1,sort=nearest,distance=..5] if score @s model_rotation matches 8.. run scoreboard players remove @s model_rotation 8

# Change rotation (rotate)
execute as @e[type=item_frame,limit=1,sort=nearest,distance=..5] store result entity @s ItemRotation byte 1 run scoreboard players get @s model_rotation

# Calculate degrees
scoreboard players operation @s model_turn *= #45 model_rotation
scoreboard players operation @e[type=item_frame,limit=1,sort=nearest,distance=..5] model_rotation *= #45 model_rotation

# Messages
execute unless entity @e[type=item_frame,limit=1,sort=nearest,distance=..15] run title @s actionbar {"text":"Couldn't find any model!","color":"red"}
execute if entity @e[type=item_frame,limit=1,sort=nearest,distance=..15] unless entity @e[type=item_frame,limit=1,sort=nearest,distance=..5] run title @s actionbar {"text":"Too far away!","color":"red"}
execute if entity @e[type=item_frame,limit=1,sort=nearest,distance=..5] run title @s actionbar [{"text":"Rotated by ","color":"green"},{"score":{"name":"@s","objective":"model_turn"},"color":"green"},{"text":"° (","color":"green"},{"score":{"name":"@e[type=item_frame,limit=1,sort=nearest,distance=..5]","objective":"model_rotation"}},{"text":"°)"}]

# Reset trigger & scores
scoreboard players set @e[type=item_frame,limit=1,sort=nearest,distance=..5] model_rotation 0
scoreboard players set @s model_turn 0
