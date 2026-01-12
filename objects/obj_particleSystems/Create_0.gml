if (instance_number(object_index)>1) { instance_destroy(); exit }

// init system and types
global.explo_system=part_system_create()
global.explo_part=part_type_create()

// change this for script?
#macro EXPLO_SYS global.explo_system
#macro EXPLO_PART global.explo_part

#region Explosion particle
part_system_depth(EXPLO_SYS, -100)

part_type_shape(EXPLO_PART, pt_shape_pixel)
part_type_size(EXPLO_PART, 5, 10, -0.01, 0)
part_type_life(EXPLO_PART, 30, 90)

part_type_colour3(EXPLO_PART, c_white, c_red, c_gray)
part_type_alpha3(EXPLO_PART, 1, 0.6, 0.3)

part_type_orientation(EXPLO_PART, 10, 170, 0, 0, 0)
part_type_direction(EXPLO_PART, 10, 170, 0, 0)
part_type_speed(EXPLO_PART, 1, 3, 0, 0)
part_type_gravity(EXPLO_PART, 0.001, 90)
#endregion