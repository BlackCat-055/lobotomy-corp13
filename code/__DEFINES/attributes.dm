

//Leftovers from LC13, gonna have to take these out eventually

#define FORTITUDE_ATTRIBUTE "Fortitude"
#define PRUDENCE_ATTRIBUTE "Prudence"
#define TEMPERANCE_ATTRIBUTE "Temperance"
#define JUSTICE_ATTRIBUTE "Justice"

//New ATTRIBUTEs
#define STRENGTH_ATTRIBUTE "Strength"
#define DEXTERITY_ATTRIBUTE "Dexterity"
#define CONSTITUTION_ATTRIBUTE "Constitution"
#define PERCEPTION_ATTRIBUTE "Perception"
#define WISDOM_ATTRIBUTE "Wisdom"
#define INTELLIGIENCE_ATTRIBUTE "Intelligience"

#define WORK_TO_ATTRIBUTE list(\
							ABNORMALITY_WORK_INSTINCT = FORTITUDE_ATTRIBUTE,\
							ABNORMALITY_WORK_INSIGHT = PRUDENCE_ATTRIBUTE,\
							ABNORMALITY_WORK_ATTACHMENT = TEMPERANCE_ATTRIBUTE,\
							ABNORMALITY_WORK_REPRESSION = JUSTICE_ATTRIBUTE,\
							)


/// The old one for deciding health
#define FORTITUDE_MOD 1

/// The max human health is adjusted to default define + fortitude points * this modifier
#define CONSTITUTION_MOD 1

/// Same as above, but for sanity and prudence
#define WISDOM_MOD 1

/// Old modifier for deciding sanity
#define PRUDENCE_MOD 1

/// How much temperance affects the success rate of the works; Higher = better.
#define TEMPERANCE_SUCCESS_MOD 0.2

/// The dexterity attribute is divided by this number to decide the movement speed buff; The higher it is - the lower is maximum speed
#define DEXTERITY_MOVESPEED_DIVISER 230

/// Old modifier
#define JUSTICE_MOVESPEED_DIVISER 230
