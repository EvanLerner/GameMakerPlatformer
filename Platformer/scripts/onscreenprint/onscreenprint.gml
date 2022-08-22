///onscreenprint(String, non-string variable, [string2, non-string variable2...])
//draw_set_valign(fa_top);
//draw_set_halign(fa_right);
draw_set_font(Font1);

var output_string = "";
var str = "";

for (var i = 0; i < argument_count; i+=2) {
	str = argument[i];
	if (!is_string(str)) str = string(str);
	output_string += str + " ";
	str = argument[i+1];
	if (!is_string(str)) str = string(str);
	output_string += str + " ";
	draw_text_colour(x, y + i*25, output_string, c_lime, c_lime, c_green, c_green, 1);
	output_string = "";
}
