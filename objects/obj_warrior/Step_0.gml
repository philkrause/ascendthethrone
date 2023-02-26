
image_index += image_speed

mana = global.warrior_mana
hp = global.warrior_health



//Rest animation
if resting == true {
	if (image_index >= 80) {
		image_index = 75
	}
}