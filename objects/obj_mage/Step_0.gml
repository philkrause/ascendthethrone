
mana = global.mage_mana
hp = global.mage_health

image_index += image_speed

//Rest animation
if resting == true {
	if (image_index >= 80) {
		image_index = 75
	}
}

