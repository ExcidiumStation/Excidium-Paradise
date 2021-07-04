/mob/living/simple_animal/goossein
	name = "Saddam Goossein"
	desc = "A pretty goose... Wait, why it speaks in arabic?"
	icon = 'sexcidium/icons/mob/hussein/goossein.dmi'
	icon_state = "goossein"
	icon_living = "goossein"
	icon_dead = "goossein_dead"
	speak = list("الدجال؟","الدجال","الدجال!","استرجع يديك من الزيت ، أنت الكافر")
	speak_emote = list("swears on arabic")
	emote_see = list("hisses")
	speak_chance = 1
	turns_per_move = 5
	see_in_dark = 6
	butcher_results = list(/obj/item/reagent_containers/food/drinks/oilcan/full = 2)
	response_help  = "الحيوانات الأليفة"
	response_disarm = "بلطف يدفع جانبا"
	response_harm   = "ركلات"
	attacktext = "kicks"
	health = 250
	maxHealth = 250
	can_collar = 0
	mob_biotypes = MOB_ORGANIC | MOB_BEAST
	gold_core_spawnable = FRIENDLY_SPAWN
	footstep_type = FOOTSTEP_MOB_CLAW