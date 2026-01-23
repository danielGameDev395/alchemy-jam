options=[
	"Start Game", "Leave game", "Controls"
]

index=0

select=function(index_) {
	switch (index_) {
		case 0: room_goto(rm_stageSelector) break;
		case 1: game_end() break;
		case 2: room_goto(rm_controls) break;
		default: show_message("Opção inválida") break;
	}
}