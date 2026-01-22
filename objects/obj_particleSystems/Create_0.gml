if (instance_number(object_index)>1) { instance_destroy(); exit }

// init system and types
global.explo_system=part_system_create()
global.bomb_part=part_type_create()
global.robot_part=part_type_create()
global.gameover_part=part_type_create()

#macro EXPLO_SYS global.explo_system
#macro BOMB_PART global.bomb_part
#macro ROBOT_PART global.robot_part
#macro GAMEOVER_PART global.gameover_part

#region Bomb explosion particle
part_system_depth(EXPLO_SYS, -100)

part_type_shape(BOMB_PART, pt_shape_pixel)
part_type_size(BOMB_PART, 3, 7, -0.01, 0)
part_type_life(BOMB_PART, 30, 70)

part_type_colour3(BOMB_PART, c_white, c_maroon, c_gray)
part_type_alpha3(BOMB_PART, 1, 0.6, 0.3)

part_type_orientation(BOMB_PART, 10, 170, 0, 0, 0)
part_type_direction(BOMB_PART, 10, 170, 0, 0)
part_type_speed(BOMB_PART, 1, 2, 0, 0)
part_type_gravity(BOMB_PART, 0.001, 90)
#endregion

#region Robot explosion particle
part_type_shape(ROBOT_PART, pt_shape_pixel)
part_type_size(ROBOT_PART, 2, 6, -0.01, 0)
part_type_life(ROBOT_PART, 25, 45)

part_type_colour_mix(ROBOT_PART, c_ltgray, c_dkgray)
part_type_alpha3(ROBOT_PART, 1, 0.7, 0.4)

part_type_orientation(ROBOT_PART, -20, 200, 0, 0, 0)
part_type_direction(ROBOT_PART, -20, 200, 0, 0)
part_type_speed(ROBOT_PART, 0.5, 1.5, 0, 0)
part_type_gravity(ROBOT_PART, 0.0005, 90)
#endregion

#region Game over particle
part_type_shape(GAMEOVER_PART, pt_shape_pixel)
part_type_size(GAMEOVER_PART, 8, 16, 0, 0)
part_type_life(GAMEOVER_PART, 120, 120)

part_type_colour3(GAMEOVER_PART, c_white, c_yellow, c_orange)
part_type_alpha3(GAMEOVER_PART, 1, 0.75, 0.5)

part_type_orientation(GAMEOVER_PART, 0, 359, 0, 0, 0)
part_type_direction(GAMEOVER_PART, 0, 359, 0, 0)
part_type_speed(GAMEOVER_PART, 1, 5.5, 0.01, 0)
part_type_gravity(GAMEOVER_PART, 0.005, 270)

#endregion

