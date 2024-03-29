
-----------------------------------------------
-- Types

-- Reconoce a la habilidad unica como existente en la DB y notifica a la IA que es "Buena"
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US',		'KIND_TRAIT'	);

-----------------------------------------------
-- Traits

-- Lo crea como una habilidad en la tabla de habilidades
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,											Name,														Description														)
VALUES	('TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US',		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_NAME',		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits

-- La asocia a la civilizacion
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType										)
VALUES	('CIVILIZATION_GWG_VEGAS',		'TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US'	);

-----------------------------------------------
-- TraitModifiers

-- The below entry - or entries, in this example case - tie the effective modifiers to the TraitType. A modifier is the top-level item that instructs the game to perform a deviation away from the base ruleset in some way. The possibilities are endless, so these notes make no attempt to cover what can be done - only to instruct against the logic, step by step.

-- This template will walk you through a typical example, nonetheless; though I highly recommend spending some time familiarising yourself with the base-game files and/or the database to get a general appreciation of how things work.

-- In this example, we're assigning two Modifiers to the Civilization Trait we created. That is, there are two gameplay effects that this trait will be directly responsible for causing to happen. I'll explain the specific gameplay effects in the code in latter parts of this file.

-- Learning point: There are numerous ways to unfurl the logic that follows below. For me, the most effective way was a combination of following the base game data, trial and error and (admittedly) a healthy dose of asking for help.

-- Learning point: The starting point to search in the base game XML is to look-up an existing CivilizationType (e.g. CIVILIZATION_AMERICA) and note their TRAIT_CIVILIZATION_ that is neither the Unique Infrastructure nor the Unique Unit. In America's case, it is TRAIT_CIVILIZATION_FOUNDING_FATHERS. Searching that will lead you to the ModifierId entry (or entries) that grant the various bonuses associated with that TraitType. You can apply this simple principle in order to look-up how the code is constructed, in every situation.
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId											)
VALUES	('TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US',		'MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD'		),
		('TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US',		'MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD'		);

-----------------------------------------------
-- Modifiers

-- This section defines, for each of your modifiers, the type of modifier it is and the conditions under which it is applied.

-- The ModifierType is important - it governs the sphere of application of the effect(s) in question. It does this by having a defined pair of values linked to it - known as a CollectionType and an EffectType. The CollectionType instructs the game on which elements/items (all civilizations, one specific civilization, all cities of one civilization, etc) to apply the modifier, whilst the EffectType instructs the game as to what change to apply (grant more of a yield, increase combat strength, etc).

-- The naming convention for a ModifierType is typically: MODIFIER_COLLECTIONTYPE_EFFECTTYPE, where COLLECTIONTYPE and EFFECTTYPE cite the two parts that make up a modifier (explained directly above). I strongly recommend making use of existing ModifierType values until you are confident with creating your own. As a general principle, find an existing ability that is similar in construct to what you wish to achieve, look it up, identify the ModifierType it uses and then enter that into the ModifierType value(s) below.

-- RunOnce and Permanent are boolean values that instruct the game on the points at which the modifier is, or can be, applied. There is an excellent guide available via CivFanatics that explains these concepts (and more) that I highly recommend:

-- https://forums.civfanatics.com/resources/using-modifiers-chapter-1-creating-and-attaching-modifiers.25683/ --

-- In this case, we have two gameplay effects - both similar in nature. As a result, we're using the same ModifierType for both of them. The two effects we want to grant is to increase the yield that a particular building grants our custom civilization, when built. As with many things in the base-game's code, once we understand the terminology, the unique strings used are fairly intuitive.
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,											RunOnce,		Permanent	)
VALUES	('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			);

-----------------------------------------------
-- ModifierArguments

-- The below entries define the specific deviations from the base game ruleset that are applied when the modifier is executed and attached to the pertinent items.

-- The ModifierType governs the actual 'values' that are accepted within the Name column, which in turn governs the values that are accepted within the value column. I expect the below example data will make those connections clear.

-- More specifically, the EffectType that is used by the ModifierType directly dictates the values allowed. In our case, we are adjusting a yield that is provided by a building. It follows, therefore, that the ModifierType allows us to specify three variables: BuildingType, YieldType and Amount.

-- Together, these values tell the game that the Shrine building provides an additional +2 Food, whilst the Temple has the same effect.

-- Logic recap: As the Modifiers using these ModifierArguments are linked to a CivilizationTrait via the TraitModifiers table, these bonuses are only available if a Civilization has been assigned that trait. We assigned it via the CivilizationTraits table and only to our custom civilization. By doing this, we've granted our civilization (only) an additional +2 Food yield from each of the Shrine and Temple buildings.
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value									)
VALUES	('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'BuildingType',					'BUILDING_SHRINE'						),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'YieldType',					'YIELD_FOOD'							),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'Amount',						2										),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'BuildingType',					'BUILDING_TEMPLE'						),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'YieldType',					'YIELD_FOOD'							),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'Amount',						2										);
