schedule clear cubic_payload:timer

title @a title {"text":"L'équipe bleue a gagné !","color":"aqua","bold":true}
title @a subtitle {"text":"La bombe a atteint le terminus","color":"aqua"}

clear @a[team=red]

kill @e[type=tnt_minecart,tag=payload]

data merge storage cubic_payload:state {Finished:1b}