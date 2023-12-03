/datum/attribute/wisdom
	name = WISDOM_ATTRIBUTE
	desc = "Attribute responsible for maximum sanity points."
	affected_stats = list("Max Sanity")
	initial_stat_value = DEFAULT_HUMAN_MAX_SANITY

/datum/attribute/prudence/get_printed_level_bonus()
	return round(level * WISDOM_MOD) + initial_stat_value
