
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

-- Añadir modificadores a las habilidades
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId											)
VALUES	('TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US',		'MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD'		),
		('TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US',		'MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD'		);

-----------------------------------------------
-- Modifiers

-- Crear modifiers y darles datos
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,											RunOnce,		Permanent	)
VALUES	('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			);

-----------------------------------------------
-- ModifierArguments

-- Efectos 
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value									)
VALUES	('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'BuildingType',					'BUILDING_SHRINE'						),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'YieldType',					'YIELD_FOOD'							),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'Amount',						2										),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'BuildingType',					'BUILDING_TEMPLE'						),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'YieldType',					'YIELD_FOOD'							),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'Amount',						2										);
