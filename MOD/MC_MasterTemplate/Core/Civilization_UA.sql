
-----------------------------------------------
-- Types

-- Reconoce a la habilidad unica como existente en la DB y notifica a la IA que es "Buena"
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING',		'KIND_TRAIT'	);

-----------------------------------------------
-- Traits

-- Lo crea como una habilidad en la tabla de habilidades
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,											Name,														Description														)
VALUES	('TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING',		'LOC_TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING_NAME',		'LOC_TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits

-- La asocia a la civilizacion 
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType										)
VALUES	('CIVILIZATION_GWG_VEGAS',		'TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING'	);

-----------------------------------------------
-- TraitModifiers

-- Añadir modificadores a las habilidades
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId											)
VALUES	('TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING',		'MODIFIER_GWG_DONT_STOP_GAMBLING_CASINO_YIELD'		),
		('TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING',		'MODIFIER_GWG_DONT_STOP_GAMBLING_BANK_YIELD'		);

-----------------------------------------------
-- Modifiers

-- Crear modifiers y darles datos
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,											RunOnce,		Permanent	)
VALUES	('MODIFIER_GWG_DONT_STOP_GAMBLING_CASINO_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			),
		('MODIFIER_GWG_DONT_STOP_GAMBLING_BANK_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			);

-----------------------------------------------
-- ModifierArguments

-- Efectos 
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value									)
VALUES	('MODIFIER_GWG_DONT_STOP_GAMBLING_CASINO_YIELD',			'BuildingType',					'BUILDING_CASINO'						),
		('MODIFIER_GWG_DONT_STOP_GAMBLING_CASINO_YIELD',			'YieldType',					'YIELD_CULTURE'							),
		('MODIFIER_GWG_DONT_STOP_GAMBLING_CASINO_YIELD',			'Amount',						4										),
		('MODIFIER_GWG_DONT_STOP_GAMBLING_BANK_YIELD',			'BuildingType',					'BUILDING_BANK'						),
		('MODIFIER_GWG_DONT_STOP_GAMBLING_BANK_YIELD',			'YieldType',					'YIELD_GOLD'							),
		('MODIFIER_GWG_DONT_STOP_GAMBLING_BANK_YIELD',			'Amount',						4										);
