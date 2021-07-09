/mob/living/simple_animal/hostile/carp/karas
	name = "Карась"
	icon = 'sexcidium/icons/mob/karas/carp.dmi'
	icon_state = "carp"
	icon_living = "carp"
	icon_dead = "carp_dead"
	icon_gib = "carp_gib"

	maxHealth = 35
	health = 35
	attack_sound = 'sexcidium/sound/effect/oink.ogg'
	speak_emote = list("hrucks")

	speak = list("Ще не вмерла", "Слава Україне", "Героям Слава", "Клятi Москалi", "Моя хата скраю, нічого не знаю")
	speak_emote = list("hrucks")
	emote_see = list("hrucks")
	speak_chance = 5

	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/ham/salo = 2)

/mob/living/simple_animal/hostile/carp/karas/Initialize()
	. = ..()
	name = "[pick(GLOB.karas_first_names)] [pick(GLOB.karas_mid_names)] [pick(GLOB.karas_last_names)]"
	desc = "Солдат Українской киберсотни со званием: [pick(GLOB.karas_desc)]!"

/mob/living/simple_animal/hostile/carp/karas/megakaras
	name = "Мегакарась"
	icon = 'sexcidium/icons/mob/karas/mega.dmi'
	icon_state = "megacarp"
	icon_living = "megacarp"
	icon_dead = "megacarp_dead"
	icon_gib = "megacarp_gib"
	maxHealth = 30
	health = 30
	pixel_x = -16
	mob_size = MOB_SIZE_LARGE
	random_color = FALSE

	obj_damage = 80
	melee_damage_lower = 20
	melee_damage_upper = 20

	var/regen_cooldown = 0

	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/ham/salo = 6)

/mob/living/simple_animal/hostile/carp/karas/megakaras/Initialize()
	. = ..()
	name = "[pick(GLOB.megakaras_first_names)] [pick(GLOB.megakaras_last_names)]"
	desc = "[pick(GLOB.megakaras_desc)]"
	melee_damage_lower += rand(2, 10)
	melee_damage_upper += rand(10, 20)
	maxHealth += rand(30, 60)
	move_to_delay = rand(3, 7)

/mob/living/simple_animal/hostile/carp/karas/megakaras/adjustHealth(amount, updating_health = TRUE)
	. = ..()
	if(.)
		regen_cooldown = world.time + 60

/mob/living/simple_animal/hostile/carp/karas/megakaras/Life()
	..()
	if(regen_cooldown < world.time)
		heal_overall_damage(4)

