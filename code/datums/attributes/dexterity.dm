/datum/attribute/dexterity
	name = DEXTERITY_ATTRIBUTE
	desc = "Attribute that will be responsible for movement speed and eventually attack chance."
	affected_stats = list("Speed Modifier") //todo: make this affect movement speed and add in an attack chance thing

/datum/attribute/dexterity/on_update(mob/living/carbon/user)
	if(!istype(user))
		return FALSE
	var/slowdown = -(get_modified_level() / DEXTERITY_MOVESPEED_DIVISER)
	user.add_or_update_variable_movespeed_modifier(/datum/movespeed_modifier/dexterity_attribute, multiplicative_slowdown = slowdown)
	return TRUE
