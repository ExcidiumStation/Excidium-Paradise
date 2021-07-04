//Necropolis Tendrils_hussein, which spawn lavaland monsters and break into a chasm when killed
/area/ruin/powered/hussein
	icon_state = "dk_yellow"

/obj/structure/spawner/hussein_oil
	name = "Hussein Oil Tank"
	desc = "Most prized possession of Saddam Hussein, the Great Dictator, legends says, that he hide Obama UAV inside...."

	icon = 'sexcidium/icons/mob/hussein/oil.dmi'
	icon_state = "oil"

	faction = list("mining")
	max_mobs = 1
	max_integrity = 250
	mob_types = list(/mob/living/simple_animal/hostile/syndicate/melee/autogib/saddam)

	move_resist = INFINITY // just killing it tears a massive hole in the ground, let's not move it
	anchored = TRUE
	resistance_flags = FIRE_PROOF | LAVA_PROOF

	var/obj/effect/light_emitter/tendril/emitted_light

GLOBAL_LIST_INIT(tendrils_hussein, list())

/obj/structure/spawner/hussein_oil/Initialize(mapload)
	. = ..()
	emitted_light = new(loc)
	GLOB.tendrils_hussein += src
	return INITIALIZE_HINT_LATELOAD

/obj/structure/spawner/hussein_oil/LateInitialize()
	for(var/F in RANGE_TURFS(1, src))
		if(ismineralturf(F))
			var/turf/simulated/mineral/M = F
			M.ChangeTurf(M.turf_type, FALSE, FALSE, TRUE)

/obj/structure/spawner/hussein_oil/deconstruct(disassembled)
	new /obj/effect/collapse_hussein(loc)
	new /obj/structure/closet/crate/necropolis/hussein(loc)
	return ..()

/obj/structure/spawner/hussein_oil/Destroy()
	var/last_tendril_hussein = TRUE
	if(GLOB.tendrils_hussein.len>1)
		last_tendril_hussein = FALSE

	if(last_tendril_hussein && !admin_spawned)
		if(SSmedals.hub_enabled)
			for(var/mob/living/L in view(7,src))
				if(L.stat || !L.client)
					continue
				SSmedals.UnlockMedal("[BOSS_MEDAL_TENDRIL] [ALL_KILL_MEDAL]", L.client)
				SSmedals.SetScore(TENDRIL_CLEAR_SCORE, L.client, 1)
	GLOB.tendrils_hussein -= src
	QDEL_NULL(emitted_light)
	return ..()

/obj/effect/light_emitter/tendril
	set_luminosity = 4
	set_cap = 2.5
	light_color = LIGHT_COLOR_LAVA

/obj/effect/collapse_hussein
	name = "collapsing necropolis tendril"
	desc = "Get clear!"
	layer = TABLE_LAYER
	icon = 'sexcidium/icons/mob/hussein/oil.dmi'
	icon_state = "oil"
	anchored = TRUE
	density = TRUE
	var/obj/effect/light_emitter/tendril/emitted_light

/obj/effect/collapse_hussein/Initialize(mapload)
	. = ..()
	emitted_light = new(loc)
	visible_message("<span class='boldannounce'>The oil tank was RIGGED WITH A'La'Mikola BOMB! Get back!</span>")
	visible_message("<span class='warning'>Something falls free of the oil tank!</span>")
	playsound(loc, 'sexcidium/sound/effect/hussein.ogg', 200, FALSE, 50, TRUE, TRUE)
	addtimer(CALLBACK(src, .proc/collapse), 50)

/obj/effect/collapse_hussein/Destroy()
	QDEL_NULL(emitted_light)
	return ..()

/obj/effect/collapse_hussein/proc/collapse()
	for(var/mob/M in range(7, src))
		shake_camera(M, 15, 1)
	playsound(get_turf(src),'sound/effects/explosionfar.ogg', 200, TRUE)
	visible_message("<span class='boldannounce'>The oil tank falls inward, the ground around it widening into a yawning chasm!</span>")
	for(var/turf/T in range(2,src))
		if(!T.density)
			T.TerraformTurf(/turf/simulated/floor/chasm/straight_down/lava_land_surface)
	qdel(src)
