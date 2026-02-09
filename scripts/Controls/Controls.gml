#region Right and Left
function right_control() {
	return keyboard_check(vk_right) || keyboard_check(ord("D")) ||
			gamepad_axis_value(0, gp_axislh)>DEADZONE || gamepad_button_check(0, gp_padr)
}

function left_control() {
	return keyboard_check(vk_left) || keyboard_check(ord("A")) ||
			gamepad_axis_value(0, gp_axislh)<-DEADZONE || gamepad_button_check(0, gp_padl)
}

function right_button() {
	return keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) ||
			gamepad_button_check_pressed(0, gp_padr)
}

function left_button() {
	return keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) ||
			gamepad_button_check_pressed(0, gp_padl)
}
#endregion

#region Up and Down
function up_button() {
	return keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) ||
			gamepad_button_check_pressed(0, gp_padu)
}

function down_button() {
	return keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) ||
			gamepad_button_check_pressed(0, gp_padd)
}
#endregion

#region In game actions
function jump_button() {
	return keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("J")) ||
			gamepad_button_check_pressed(0, gp_face1) || gamepad_button_check_pressed(0, gp_shoulderlb)
}

function attack_button() {
	return keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("K")) ||
			gamepad_button_check_pressed(0, gp_face3) || gamepad_button_check_pressed(0, gp_shoulderrb)
}

function pause_button() {
	return keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_alt) ||
			keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start)
}
#endregion

#region Game control
function confirm_button() {
	return keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) ||
			gamepad_button_check_pressed(0, gp_face1) || gamepad_button_check_pressed(0, gp_start)
}

function restart_button() {
	return keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0, gp_select)
}

function goto_menu_button() {
	return keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0, gp_shoulderl)
}

function return_button() {
	return keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace) || 
			gamepad_button_check_pressed(0, gp_select)
}
#endregion