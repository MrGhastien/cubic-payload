schedule clear cubic_payload:timer

title @a title {"text":"L'équipe rouge a gagné !","color":"red","bold":true}
title @a subtitle {"text":"Le temps imparti s'est écoulé","color":"red"}

clear @a[team=blue]

data merge storage cubic_payload:state {Finished:1b}