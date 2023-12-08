/datum/attribute/constitution
	name = CONSTITUTION_ATTRIBUTE
	desc = "Attribute responsible for determining maximum health value and eventually unarmoured defense."
	affected_stats = list("Max Health")
	initial_stat_value = DEFAULT_HUMAN_MAX_HEALTH

/datum/attribute/constitution/get_printed_level_bonus()
	return round(level * CONSTITUTION_MOD) + initial_stat_value

