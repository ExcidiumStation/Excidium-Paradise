/obj/structure/closet/crate/necropolis/hussein
	name = "سرية صدام حسين عبد المجيد التكريتي"
	desc = "مرحبا بكم في منطقة نائب الرئيس."
	icon = 'icons/obj/closet.dmi'
	icon_state = "coffin"
	icon_closed = "coffin"
	icon_opened = "coffin_open"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF

/obj/structure/closet/crate/necropolis/hussein
	desc = "مرحبا بكم في منطقة نائب الرئيس."

/obj/structure/closet/crate/necropolis/hussein/populate_contents()
	var/loot = rand(1, 1)
	switch(loot)
		if(1)
			new /obj/item/gun/projectile/automatic/gyropistol/UAV(src)