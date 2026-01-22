if (part_system_exists(EXPLO_SYS)) {
	part_type_destroy(BOMB_PART)
	part_type_destroy(ROBOT_PART)
	part_type_destroy(GAMEOVER_PART)
	part_system_destroy(EXPLO_SYS)
}