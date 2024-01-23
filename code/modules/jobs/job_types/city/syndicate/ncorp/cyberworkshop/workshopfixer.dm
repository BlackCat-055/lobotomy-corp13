//Mittlehammer
/datum/job/workshopfixer
	title = "Prosthetics Workshop Fixer"
	outfit = /datum/outfit/job/workshopfixer
	department_head = list("Your tutor, the Maestro of the Workshop.")
	faction = "Station"
	supervisors = "Your tutor, the Maestro of the Workshop."
	selection_color = "#94833d"
	total_positions = 0
	spawn_positions = 0
	display_order = JOB_DISPLAY_ORDER_WORKSHOPFIXER
	//need to adjust this so the N-Corp cant get in
	access = list(ACCESS_SYNDICATE)
	minimal_access = list(ACCESS_SYNDICATE)
	paycheck = 100
	maptype = list("city")
	job_important = "You are a member of the Prosthetics Workshop. A workshop that caters towards making and selling cybernetics and prosthetics \
			Follow the orders of the Maestro, as they are your mentor, learn from them and obey their requests."
	job_notice = "Be warned, your mentor heard rumors that N-Corp's Inquisition Nagel und Hammer are spotted around. They will likely be your enemy"

	roundstart_attributes = list(
								FORTITUDE_ATTRIBUTE = 80,
								PRUDENCE_ATTRIBUTE = 80,
								TEMPERANCE_ATTRIBUTE = 80,
								JUSTICE_ATTRIBUTE = 80
								)

/datum/job/mittlehammer/after_spawn(mob/living/carbon/human/H, mob/M)
	ADD_TRAIT(H, TRAIT_COMBATFEAR_IMMUNE, JOB_TRAIT)
	ADD_TRAIT(H, TRAIT_WORK_FORBIDDEN, JOB_TRAIT)
	. = ..()


/datum/outfit/job/workshopfixer
	name = "Prosthetic Workshop Fixer"
	jobtype = /datum/job/workshopfixer
	belt = /obj/item/pda/engineering
	ears = /obj/item/radio/headset/workshop
	uniform = /obj/item/clothing/under/suit/lobotomy/plain
	backpack_contents = list(
		/obj/item/book/granter/crafting_recipe/prosthetic_workshop = 1a
	)
	shoes = /obj/item/clothing/shoes/laceup
