# LIST-Trigger

# Message
tellraw @s {"text":"Model-List\n","color":"gold","bold":true,"underlined":true}

# Rotation Tool
tellraw @s {"text":"[-1]: Rotation Tool","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click me!"}]},"clickEvent":{"action":"run_command","value":"/trigger model_give set -1"}}

# Text List
function model_config:text

# Reset trigger
scoreboard players set @s model_list 0
