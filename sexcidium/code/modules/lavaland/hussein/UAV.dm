/obj/item/gun/projectile/automatic/gyropistol/UAV
	name = "Obama's UAV"
	desc = "A prototype UAV, that looks like gyrojet. It has Zerg&Co. trademark on it."
	icon_state = "gyropistol"
	fire_sound = 'sound/effects/explosion1.ogg'
	origin_tech = "combat=6"
	mag_type = /obj/item/ammo_box/magazine/obama
	can_holster = TRUE // Override default automatic setting since it is a handgun sized gun
	burst_size = 1
	fire_delay = 0
	actions_types = list()


/obj/item/gun/projectile/automatic/gyropistol/process_chamber(eject_casing = 0, empty_chamber = 1)
	..()

/obj/item/gun/projectile/automatic/gyropistol/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "loaded" : ""]"
	return

/obj/item/ammo_box/magazine/obama
	name = "Obama's freedom Rockets"
	icon = 'icons/obj/ammo.dmi'
	icon_state = "75"
	ammo_type = /obj/item/ammo_casing/caseless/a75
	caliber = "75"
	multiple_sprites = 2
	max_ammo = 4