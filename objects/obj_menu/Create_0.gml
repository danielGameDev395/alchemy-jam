options=[
	"Start Game", "Leave game", "Controls"
]

// if in mobile, delete the controls option
if (global.is_mobile) {
	array_delete(options, array_get_index(options, "Controls"), 1)
}

index=0

select=function(index_) {
	switch (index_) {
		case 0: room_goto(rm_stageSelector) break;
		case 1: game_end() break;
		case 2: room_goto(rm_controls) break;
		default: show_message("Opção inválida") break;
	}
}