/obj/item/clothing/suit/armor/dg_armor //Figure I'd make a new file and subtype for the new dungeon crawling armor since you know, figure it would be cleaner I guess
	allowed = null
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list(BLUNT_DAMAGE = 0, PIERCE_DAMAGE = 0, SLASH_DAMAGE = 0)

/obj/item/clothing/suit/armor/Initialize()
	. = ..()
	if(!allowed)
		allowed = GLOB.security_vest_allowed

/obj/item/clothing/suit/armor/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stack/sheet/silk))
		var/datum/component/silkweave/silkweave = GetComponent(/datum/component/silkweave)
		if(!silkweave)
			silkweave = AddComponent(/datum/component/silkweave)
		silkweave.apply_silk(W, user)
	else
		. = ..()
