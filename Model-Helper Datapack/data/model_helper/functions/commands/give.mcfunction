# GIVE-Trigger

# Rotation tool
give @s[scores={model_give=-1}] carrot_on_a_stick{display:{Name:'{"text":"Rotation Tool","color":"light_purple","italic":false}',Lore:['[{"text":"[Turn +45°]: Use (","color":"dark_purple","italic":false},{"keybind":"key.use","color":"dark_aqua"},{"text":")"}]','[{"text":"[Turn -45°]: Drop (","color":"dark_purple","italic":false},{"keybind":"key.drop","color":"dark_aqua"},{"text":")"}]','{"text":"ID: -1","color":"dark_gray","italic":false}']},RotationTool:1b,Enchantments:[{}]}

# Item List
function model_config:items

# Reset trigger
scoreboard players set @s model_give 0
