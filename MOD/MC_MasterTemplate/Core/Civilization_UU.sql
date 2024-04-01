

-----------------------------------------------
-- Types

-- Inserta y referencia una unidad unica al juego con su habilidad
-----------------------------------------------	
	
INSERT INTO Types
		(Type,									Kind			)
VALUES	('TRAIT_CIVILIZATION_GWG_WHALE',	'KIND_TRAIT'	),
		('UNIT_GWG_WHALE',					'KIND_UNIT'		),
		('ABILITY_GWG_WHALE',				'KIND_ABILITY'	);

-----------------------------------------------
-- Tags

-- Crea una clase de unidades
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_GWG_WHALE',		'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags

-- Lo añade a la clase

-- Hereda de una unidad existente
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_GWG_WHALE',		'CLASS_GWG_WHALE'	),
		('ABILITY_GWG_WHALE',	'CLASS_GWG_WHALE'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_GWG_WHALE',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_SPEARMAN';

-----------------------------------------------
-- Traits

-- Lo añade a traits 
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name,								Description								)
VALUES	('TRAIT_CIVILIZATION_GWG_WHALE',	'LOC_UNIT_GWG_WHALE_NAME',		'LOC_UNIT_GWG_WHALE_DESCRIPTION'	);

-----------------------------------------------
-- CivilizationTraits

-- This defines the civilization to which the TraitType is applied (i.e. which civilization gets the Unique Unit). This is a simple matter of referencing the custom CivilizationType defined in Civilization_Config.sql and using the TraitType defined in this document.
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_GWG_VEGAS',		'TRAIT_CIVILIZATION_GWG_WHALE'		);

-----------------------------------------------
-- Units

-- Añadir una unidad al juego directamente

-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_GWG_WHALE',	-- UnitType
		'LOC_UNIT_GWG_WHALE_NAME',	-- Name
		'LOC_UNIT_GWG_WHALE_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_GWG_WHALE', -- TraitType
		BaseMoves,
		Cost + 15,
		PurchaseYield,
		AdvisorType,
		Combat + 5,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_SPEARMAN';

-----------------------------------------------
-- UnitUpgrades

-- Mejoras de unidad
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_GWG_WHALE',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_SPEARMAN';

-----------------------------------------------
-- UnitAiInfos

-- Darle una IA basica 
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_GWG_WHALE',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_SPEARMAN';
		
-----------------------------------------------
-- UnitReplaces

-- que cambie la unidad por otra y asi no aparezcan las dos en ls misma civ
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_GWG_WHALE',	'UNIT_SPEARMAN'		);

-----------------------------------------------
-- UnitAbilities

-- Aplicar una habilidad a la unidad
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description						)
VALUES	('ABILITY_GWG_WHALE',	'LOC_UNIT_GWG_WHALE_NAME',		'LOC_ABILITY_GWG_WHALE'		);

-----------------------------------------------
-- Modifiers

-- Mismo que UI y UA
-----------------------------------------------
	
INSERT INTO Modifiers	
		(ModifierId,									ModifierType,									OwnerRequirementSetId		)
VALUES	('MODIFIER_WEREJAGUAR_GOLDEN_AGE_STRENGTH',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'PLAYER_HAS_GOLDEN_AGE'		);

-----------------------------------------------
-- ModifierArguments

-- Mismo que UI y UA
-----------------------------------------------

INSERT INTO ModifierArguments		
		(ModifierId,										Name,						Value	)
VALUES	('MODIFIER_WEREJAGUAR_GOLDEN_AGE_STRENGTH',			'Amount',					5		);

-----------------------------------------------
-- UnitAbilityModifiers

-- Mismo que UI y UA
-----------------------------------------------

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId									)
VALUES	('ABILITY_GWG_WHALE',		'MODIFIER_WEREJAGUAR_GOLDEN_AGE_STRENGTH'	);

-----------------------------------------------
-- ModifierStrings

-- Mismo que UI y UA
-----------------------------------------------

INSERT INTO ModifierStrings
		(ModifierId,									Context,		Text							)
VALUES	('MODIFIER_WEREJAGUAR_GOLDEN_AGE_STRENGTH',		'Preview',		'LOC_ABILITY_GWG_WHALE'		);