execute if entity @s[team=red] run tellraw @s {"text":"Vous êtes déjà dans l'équipe Rouge !","color":"dark_red"}

execute if entity @s[team=!red] run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 2
execute if entity @s[team=!red] run tellraw @s [{"text":"Vous avez rejoint l'équipe ","color":"green"},{"text":"Rouge","color":"red","bold":true},{"text":" !","color":"green"}]
team join red @s