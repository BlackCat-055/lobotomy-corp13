//Grand Inquisitor
/datum/job/maestro
	title = "Prosthetics Workshop Maestro"
	outfit = /datum/outfit/job/maestro
	department_head = list("Your ambitions and craft.")
	faction = "Station"
	supervisors = "Your ambitions and craft."
	selection_color = "#b5a357"
	total_positions = 0
	spawn_positions = 0
	display_order = JOB_DISPLAY_ORDER_WORKSHOPHEAD
	trusted_only = TRUE
	//This access stuff would like need to be changed but dunno what
	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	minimal_access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
	paycheck = 700
	maptype = list("city")
	job_important = "This is a roleplay role. You are the Maestro or Head of the local Prosthetics Workshop. \
		Create prosthetics and augments to sell to your customers. Direct and teach your apprentices. Gather materials from the Backstreets to make your prosthetics\
		You only have two Fixers under your belt, only you and they know your art of crafting prosthetics. \
		(INSERT LOCATION FOR WORKSHOP. ERROR NO WORKSHOP DETECTED)."
	job_notice = "Be warned, you heard rumors that N-Corp's Inquisition Nagel und Hammer are spotted around. They will likely be your enemy"

	roundstart_attributes = list(
								FORTITUDE_ATTRIBUTE = 120,
								PRUDENCE_ATTRIBUTE = 120,
								TEMPERANCE_ATTRIBUTE = 120,
								JUSTICE_ATTRIBUTE = 120
								)

/datum/job/grandinquis/after_spawn(mob/living/carbon/human/H, mob/M)
	ADD_TRAIT(H, TRAIT_COMBATFEAR_IMMUNE, JOB_TRAIT)
	ADD_TRAIT(H, TRAIT_WORK_FORBIDDEN, JOB_TRAIT)
	//Don't spawn these goobers without a director.
	for(var/datum/job/processing in SSjob.occupations)
//This is me trying to see if I can co-opt the system for spawning the antag faction and make it so the workshop spawns alongside the N-Corp
		if(istype(processing, /datum/job/workshopfixer))
			processing.total_positions = 2
	. = ..()


/datum/outfit/job/maestro
	name = "Workshop Maestro"
	jobtype = /datum/job/maestro
	belt = /obj/item/pda/engineering
	ears = /obj/item/radio/headset/workshop/maestro
	uniform = /obj/item/clothing/under/suit/lobotomy/plain
	backpack_contents = list()
	shoes = /obj/item/clothing/shoes/laceup
	//backpack_contents = list(/obj/item/structurecapsule/syndicate/ncorp) Have to change this, dunno what
