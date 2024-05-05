
-----------------------------------------------
-- Types

-- Lo inserta en types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_GWG_EXPANDING_HORIZONS',			'KIND_TRAIT'	),
		('ABILITY_GWG_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'KIND_ABILITY'	);

-----------------------------------------------
-- Tags

-- Crea una clase de unidades
-----------------------------------------------
INSERT INTO Tags
		(Tag,							Vocabulary		)
VALUES	('CLASS_GWG_BUILDER_WHALE',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags

-- Damos habilidad a clase
-----------------------------------------------

INSERT INTO TypeTags
		(Type,												Tag								)
VALUES	('UNIT_GWG_WHALE',									'CLASS_GWG_BUILDER_WHALE'		),
		('UNIT_SETTLER',									'CLASS_GWG_BUILDER_WHALE'		),
		('ABILITY_GWG_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'CLASS_GWG_BUILDER_WHALE'		);

-----------------------------------------------
-- UnitAbilities

-- definimos la habilidad en conjunto
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,									Name,												Description,												Inactive	)
VALUES	('ABILITY_GWG_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'LOC_TRAIT_LEADER_GWG_EXPANDING_HORIZONS_NAME',	'LOC_TRAIT_LEADER_GWG_EXPANDING_HORIZONS_DESCRIPTION',		1			);

-----------------------------------------------
-- UnitAbilityModifiers

-- Asociamos la modicacion a la habilidad
-----------------------------------------------

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,									ModifierId							)
VALUES	('ABILITY_GWG_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'ALTITUDE_TRAINING_IGNORE_HILLS'	);

-----------------------------------------------
-- Traits

-- Se añade a traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,									Name,												Description												)
VALUES	('TRAIT_LEADER_GWG_EXPANDING_HORIZONS',	'LOC_TRAIT_LEADER_GWG_EXPANDING_HORIZONS_NAME',	'LOC_TRAIT_LEADER_GWG_EXPANDING_HORIZONS_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits

-- Se le asocia al lider
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType								)
VALUES	('LEADER_GWG_CHIFFRE',	'TRAIT_LEADER_GWG_EXPANDING_HORIZONS'	);

-----------------------------------------------
-- Modifiers

-- Modificador a id
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,								Permanent	)
VALUES	('TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',		1			);

-----------------------------------------------
-- TraitModifiers

-- se lo da a las unidades
-----------------------------------------------

INSERT INTO TraitModifiers 
		(TraitType,									ModifierId											)
VALUES	('TRAIT_LEADER_GWG_EXPANDING_HORIZONS',	'TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING'	);

-----------------------------------------------
-- ModifierArguments

-- lo junta todo
-----------------------------------------------

INSERT INTO ModifierArguments 
		(ModifierId,										Name,				Value												)
VALUES	('TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING',	'AbilityType',		'ABILITY_GWG_BUILDER_SETTLER_IGNORE_TERRAIN_COST'	);
