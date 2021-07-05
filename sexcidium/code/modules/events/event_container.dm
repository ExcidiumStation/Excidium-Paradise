/datum/event_container/moderate
	severity = EVENT_LEVEL_MODERATE
	available_events = list(
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Nothing",					/datum/event/nothing,					1230),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Appendicitis", 			/datum/event/spontaneous_appendicitis, 	0,		list(ASSIGNMENT_MEDICAL = 10), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Carp School",				/datum/event/carp_migration,			200, 	list(ASSIGNMENT_ENGINEER = 10, ASSIGNMENT_SECURITY = 20), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Hohol School",				/datum/event/hohol_migration,			500, 	list(ASSIGNMENT_ENGINEER = 10, ASSIGNMENT_SECURITY = 20), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Rogue Drones",				/datum/event/rogue_drone, 				0,		list(ASSIGNMENT_SECURITY = 20)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Space Vines",				/datum/event/spacevine, 				250,	list(ASSIGNMENT_ENGINEER = 10)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Meteor Shower",			/datum/event/meteor_wave,				0,		list(ASSIGNMENT_ENGINEER = 25)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Solar Flare",				/datum/event/solar_flare,				0,		list(ASSIGNMENT_ENGINEER = 25)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Meaty Ores",				/datum/event/dust/meaty,				0,		list(ASSIGNMENT_ENGINEER = 20)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Communication Blackout",	/datum/event/communications_blackout,	500,	list(ASSIGNMENT_AI = 150, ASSIGNMENT_SECURITY = 120)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Prison Break",				/datum/event/prison_break,				0,		list(ASSIGNMENT_SECURITY = 100)),
		//new /datum/event_meta(EVENT_LEVEL_MODERATE, "Virology Breach",			/datum/event/prison_break/virology,		0,		list(ASSIGNMENT_MEDICAL = 100)),
		//new /datum/event_meta(EVENT_LEVEL_MODERATE, "Xenobiology Breach",		/datum/event/prison_break/xenobiology,	0,		list(ASSIGNMENT_SCIENCE = 100)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "APC Short",				/datum/event/apc_short, 				200,	list(ASSIGNMENT_ENGINEER = 60)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Electrical Storm",			/datum/event/electrical_storm, 			250,	list(ASSIGNMENT_ENGINEER = 20, ASSIGNMENT_JANITOR = 150)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Radiation Storm",			/datum/event/radiation_storm, 			25,		list(ASSIGNMENT_MEDICAL = 50), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Hohol Infestation",		/datum/event/infestation_hohol,			125,	list(ASSIGNMENT_SECURITY = 30), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Spider Infestation",		/datum/event/spider_infestation, 		100,	list(ASSIGNMENT_SECURITY = 30), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Ion Storm",				/datum/event/ion_storm, 				0,		list(ASSIGNMENT_AI = 50, ASSIGNMENT_CYBORG = 50, ASSIGNMENT_ENGINEER = 15, ASSIGNMENT_SCIENTIST = 5)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Borer Infestation",		/datum/event/borer_infestation, 		40,		list(ASSIGNMENT_SECURITY = 30), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Immovable Rod",			/datum/event/immovable_rod,				0,		list(ASSIGNMENT_ENGINEER = 30), TRUE),
		//new /datum/event_meta/ninja(EVENT_LEVEL_MODERATE, "Space Ninja",		/datum/event/space_ninja, 				0,		list(ASSIGNMENT_SECURITY = 15), TRUE),
		// NON-BAY EVENTS
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Mass Hallucination",		/datum/event/mass_hallucination,		300),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Brand Intelligence",		/datum/event/brand_intelligence,		50, 	list(ASSIGNMENT_ENGINEER = 25),	TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Space Dust",				/datum/event/dust,						50,		list(ASSIGNMENT_ENGINEER = 50)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Dimensional Tear",			/datum/event/tear,						0,		list(ASSIGNMENT_SECURITY = 35)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Honknomoly",				/datum/event/tear/honk,						0),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Vent Clog",				/datum/event/vent_clog,					250),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Wormholes",				/datum/event/wormholes,					150),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Pyro Anomaly",				/datum/event/anomaly/anomaly_pyro,		75,		list(ASSIGNMENT_ENGINEER = 60)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Vortex Anomaly",			/datum/event/anomaly/anomaly_vortex,	75,		list(ASSIGNMENT_ENGINEER = 25)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Bluespace Anomaly",		/datum/event/anomaly/anomaly_bluespace,	75,		list(ASSIGNMENT_ENGINEER = 25)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Flux Anomaly",				/datum/event/anomaly/anomaly_flux,		75,		list(ASSIGNMENT_ENGINEER = 50)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Gravitational Anomaly",	/datum/event/anomaly/anomaly_grav,		200),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Revenant", 				/datum/event/revenant, 					150),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Swarmer Spawn", 			/datum/event/spawn_swarmer, 			150, is_one_shot = TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Morph Spawn", 				/datum/event/spawn_morph, 				40,		list(ASSIGNMENT_SECURITY = 10), is_one_shot = TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Disease Outbreak",			/datum/event/disease_outbreak, 			0,		list(ASSIGNMENT_MEDICAL = 150), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Headcrabs",				/datum/event/headcrabs, 				0,		list(ASSIGNMENT_SECURITY = 20)),
		new /datum/event_meta(EVENT_LEVEL_MODERATE, "Door Runtime",				/datum/event/door_runtime,				50,		list(ASSIGNMENT_ENGINEER = 25, ASSIGNMENT_AI = 150), TRUE)
	)

/datum/event_container/major
	severity = EVENT_LEVEL_MAJOR
	available_events = list(
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Nothing",			/datum/event/nothing,			590),															// 57% on high pop (120+). 64.2% on lowpop (70+)
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Carp Migration",	/datum/event/carp_migration,	10,						list(ASSIGNMENT_SECURITY =  3), TRUE),	// 4.8% on high pop, 3.4% on low pop
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Hohol Migration",	/datum/event/hohol_migration,	50,						list(ASSIGNMENT_SECURITY =  3), TRUE),	// 4.8% on high pop, 3.4% on low pop
		//new /datum/event_meta(EVENT_LEVEL_MAJOR, "Containment Breach",	/datum/event/prison_break/station,	0,			list(ASSIGNMENT_ANY = 5)),
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "APC Overload",	/datum/event/apc_overload,		0),
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Blob",			/datum/event/blob, 				30,						list(ASSIGNMENT_ENGINEER =  5), TRUE),	// 6.9% on high pop, 5.5% on low pop
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Meteor Wave",		/datum/event/meteor_wave,		30,						list(ASSIGNMENT_ENGINEER =  5),	TRUE),	// 6.9% on high pop, 5.5% on low pop
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Abductor Visit",	/datum/event/abductor, 		    20, 					list(ASSIGNMENT_SECURITY =  3), TRUE),	// 5.8% on high pop, 4.5% on low pop
		//new /datum/event_meta/alien(EVENT_LEVEL_MAJOR, "Alien Infestation",	/datum/event/alien_infestation, 		0,		list(ASSIGNMENT_SECURITY = 15), TRUE),
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Traders",			/datum/event/traders,			85, is_one_shot = TRUE),										// 8.4% on high pop, 9.4% on low pop
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Terror Spiders",	/datum/event/spider_terror, 	20,						list(ASSIGNMENT_SECURITY = 4), TRUE),	// 7.1% on high pop, 5.3% on low pop
		new /datum/event_meta(EVENT_LEVEL_MAJOR, "Slaughter Demon",	/datum/event/spawn_slaughter,	10,  is_one_shot = TRUE)	// 3% on high pop, 2.1% on low pop
		//new /datum/event_meta(EVENT_LEVEL_MAJOR, "Floor Cluwne",	/datum/event/spawn_floor_cluwne,	15, is_one_shot = TRUE)
	)