/obj/effect/minecraft
	name = "Minecraft Machine"
	desc = "Unique Arcade machine, that can LITERALLY KILL YOU. It has Zerg&Co. trademark on its back."
	density = TRUE
	icon = 'sexcidium/icons/obj/machinery/arcade.dmi'
	icon_state = "arcade"
	var/triggered_minecraft = FALSE

/obj/effect/minecraft/Crossed(AM as mob|obj, oldloc)
	Bumped(AM)

/obj/effect/minecraft/attack_hand(AM as mob|obj, oldloc)
	Bumped(AM)

/obj/effect/minecraft/Bumped(mob/M as mob|obj)

	if(triggered_minecraft)
		return

	if(istype(M, /mob/living/carbon/human))
		visible_message("<span class='danger'>[M] triggers [src]!</span>")
		triggered_minecraft = TRUE
		daticheblyaaa(M)

/obj/effect/minecraft/proc/daticheblyaaa(mob)
	for(var/mob/O in viewers(world.view, src.loc))
		do_sparks(3, 1, src)
		explosion(mob, 1, 0, 0, 0)
		qdel(src)