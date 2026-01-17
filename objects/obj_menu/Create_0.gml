options=[
	"Start Game", "Leave game"
]

index=0

select=function(index_) {
	switch (index_) {
		case 0: room_goto(Stage_Selector) break;
		case 1: game_end() break;
		default: show_message("Opção inválida") break;
	}
}