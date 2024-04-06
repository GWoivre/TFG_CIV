
-----------------------------------------------
-- Types

-- Lo inserta en types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION',			'KIND_TRAIT'	),
		('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'KIND_ABILITY'	);

-----------------------------------------------
-- Tags

-- Crea una clase de unidades
-----------------------------------------------
INSERT INTO Tags
		(Tag,							Vocabulary		)
VALUES	('CLASS_MC_BUILDER_SETTLER',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags

-- Damos habilidad a clase
-----------------------------------------------

INSERT INTO TypeTags
		(Type,												Tag								)
VALUES	('UNIT_BUILDER',									'CLASS_MC_BUILDER_SETTLER'		),
		('UNIT_SETTLER',									'CLASS_MC_BUILDER_SETTLER'		),
		('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'CLASS_MC_BUILDER_SETTLER'		);

-----------------------------------------------
-- UnitAbilities

-- definimos la habilidad en conjunto
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,									Name,												Description,												Inactive	)
VALUES	('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_NAME',	'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_DESCRIPTION',		1			);

-----------------------------------------------
-- UnitAbilityModifiers

-- Asociamos la modicacion a la habilidad
-----------------------------------------------

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,									ModifierId							)
VALUES	('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'ALTITUDE_TRAINING_IGNORE_HILLS'	);

-----------------------------------------------
-- Traits

-- Se añade a traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,									Name,												Description												)
VALUES	('TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION',	'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_NAME',	'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits

-- Se le asocia al lider
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType								)
VALUES	('LEADER_GWG_CHIFFRE',	'TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION'	);

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
VALUES	('TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION',	'TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING'	);

-----------------------------------------------
-- ModifierArguments

-- lo junta todo
-----------------------------------------------

INSERT INTO ModifierArguments 
		(ModifierId,										Name,				Value												)
VALUES	('TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING',	'AbilityType',		'ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST'	);
