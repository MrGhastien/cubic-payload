execute if entity @s[team=blue] run tellraw @s {"text":"Vous êtes déjà dans l'équipe Bleue !","color":"blue"}

execute if entity @s[team=!blue] run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 2
execute if entity @s[team=!blue] run tellraw @s [{"text":"Vous avez rejoint l'équipe ","color":"green"},{"text":"Bleue","color":"aqua","bold":true},{"text":" !","color":"green"}]
team join blue @s