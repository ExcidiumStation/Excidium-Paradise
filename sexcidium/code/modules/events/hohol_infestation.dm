#define LOC_KITCHEN 0
#define LOC_ATMOS 1
#define LOC_INCIN 2
#define LOC_CHAPEL 3
#define LOC_LIBRARY 4
#define LOC_HYDRO 5
#define LOC_VAULT 6
#define LOC_CONSTR 7
#define LOC_TECH 8
#define LOC_ARMORY 9
#define LOC_CARGO 10
#define LOC_COURT 11
#define LOC_TOXTEST 12
#define LOC_ARCADE 13

#define VERM_HOHOL 0
#define VERM_BANDERA 1
/datum/event/infestation_hohol
	announceWhen = 10
	endWhen = 11
	var/location
	var/locstring
	var/vermin
	var/vermstring

/datum/event/infestation_hohol/start()

	location = rand(0,13)
	var/list/turf/simulated/floor/turfs = list()
	var/spawn_area_type
	switch(location)
		if(LOC_KITCHEN)
			spawn_area_type = /area/crew_quarters/kitchen
			locstring = "�� �����"
		if(LOC_ATMOS)
			spawn_area_type = /area/atmos
			locstring = "� ����������� ������"
		if(LOC_INCIN)
			spawn_area_type = /area/maintenance/incinerator
			locstring = "� ���������������"
		if(LOC_CHAPEL)
			spawn_area_type = /area/chapel/main
			locstring = "� ������"
		if(LOC_LIBRARY)
			spawn_area_type = /area/library
			locstring = "� ����������"
		if(LOC_HYDRO)
			spawn_area_type = /area/hydroponics
			locstring = "� ��������"
		if(LOC_VAULT)
			spawn_area_type = /area/security/nuke_storage
			locstring = "� ��������� �������� ������"
		if(LOC_CONSTR)
			spawn_area_type = /area/construction
			locstring = "� ������������ ���� ����������� ������"
		if(LOC_TECH)
			spawn_area_type = /area/storage/tech
			locstring = "�� ������ �������� ����"
		if(LOC_ARMORY)
			spawn_area_type = /area/security/securearmoury
			locstring = "� ���������"
		if(LOC_CARGO)
			spawn_area_type = /area/quartermaster/storage
			locstring = "�� ������ �����"
		if(LOC_COURT)
			spawn_area_type = /area/crew_quarters/courtroom
			locstring = "� ���� ����"
		if(LOC_TOXTEST)
			spawn_area_type = /area/toxins/test_area
			locstring = "� ���� ��� ����� ����"
		if(LOC_ARCADE)
			spawn_area_type = /area/crew_quarters/arcade
			locstring = "� ������� ���� �����������"

	for(var/areapath in typesof(spawn_area_type))
		var/area/A = locate(areapath)
		for(var/turf/simulated/floor/F in A.contents)
			if(turf_clear(F))
				turfs += F

	var/list/spawn_types = list()
	var/max_number
	vermin = rand(0,1)
	switch(vermin)
		if(VERM_HOHOL)
			spawn_types = list(/mob/living/simple_animal/hostile/carp/karas)
			max_number = 10
			vermstring = "����� ������������"
		if(VERM_BANDERA)
			spawn_types = list(/mob/living/simple_animal/hostile/carp/karas/megakaras)
			max_number = 2
			vermstring = "������ ��������� ���"
	var/amount_to_spawn = rand(2, max_number)
	while(length(turfs) && amount_to_spawn > 0)
		var/turf/simulated/floor/T = pick_n_take(turfs)
		amount_to_spawn--

		if(vermin == VERM_HOHOL)
			var/spawn_type = pick(spawn_types)
			new spawn_type(T)
		else
			var/spawn_type = pick(spawn_types)
			new spawn_type(T)

/datum/event/infestation_hohol/announce()
	GLOB.event_announcement.Announce("��������! � ������� ������������ [vermstring]! ��� ��������� [locstring]. ����� ������������ ����� ������, ������������� �� ���� ����� � ����.", "������ ���������")

#undef LOC_KITCHEN
#undef LOC_ATMOS
#undef LOC_INCIN
#undef LOC_CHAPEL
#undef LOC_LIBRARY
#undef LOC_HYDRO
#undef LOC_VAULT
#undef LOC_TECH
#undef LOC_CARGO
#undef LOC_COURT
#undef LOC_TOXTEST
#undef LOC_ARCADE

#undef VERM_HOHOL
#undef VERM_BANDERA

