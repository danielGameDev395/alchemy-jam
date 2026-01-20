function save_game() {
	if (file_exists("save.sav")) { file_delete("save.sav") }
	
	ini_open("save.sav")
	
	// write the array at string
	var array_string = json_stringify(global.best_times)
	ini_write_string("Time", "best_times", array_string)
	
	ini_close()
}

function load_game() {
	global.best_times=[0,0,0]

	if (file_exists("save.sav")) {
		ini_open("save.sav")
		
		// read the string at array
		var string_array = ini_read_string("Time", "best_times", [])
		global.best_times=json_parse(string_array)
		
		ini_close()
	}
}