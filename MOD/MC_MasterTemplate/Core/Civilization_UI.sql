
-----------------------------------------------
-- Types

-- Añade la infrastructura unica y de que tipo es
-----------------------------------------------		

INSERT OR REPLACE INTO Types	
		(Type,													Kind						)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_OLMEC_COLOSSAL_HEAD',	'KIND_TRAIT'				),
		('IMPROVEMENT_COLOSSAL_HEAD',							'KIND_IMPROVEMENT'			);

-----------------------------------------------
-- CivilizationTraits

-- This defines the civilization to which the TraitType is applied (i.e. which civilization gets the Unique Infrastructure). This is a simple matter of referencing the custom CivilizationType defined in Civilization_Config.sql and using the TraitType defined in this document.
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,												CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_OLMEC_COLOSSAL_HEAD',	'CIVILIZATION_GWG_VEGAS'		);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT INTO Traits
		(TraitType,												Name,											Description												)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_OLMEC_COLOSSAL_HEAD',	'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME',		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION'		);

--------------------------------------------------------------------------------------------------------------------------
-- Improvements

-- The below defines the core behaviour/configuration of our custom Improvement. This is where we instruct the game to ensure it is unique (by setting the TraitType value), as well as tie together the various locally-defined elements in this mod (ImprovementType, Name, Description, Icon).

-- You will note that the initial instruction is a DELETE. This clears the values from the base-game implementation of IMPROVEMENT_COLOSSAL_HEAD - paving the way for the behaviour/effect we define here.

-- Whilst the majority of information is locally-defined (in this mod), please note the PrereqCivic value, which is where we tell the game which Civic must be attained in order to unlock the Improvement.

-- If you have been following the documents in order, below you will find the first reference to an ICON element. The naming convention is always to append ICON_ in front of the full element name to which it applies. In this case, we're referencing an icon from the base-game; but the same logic should be applied throughout.
--------------------------------------------------------------------------------------------------------------------------
DELETE FROM Improvements WHERE ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD';

INSERT OR REPLACE INTO Improvements	
		(
			ImprovementType,
			Name,
			Description,
			Icon,
			-----------------
			-- Building Info
			-----------------
			Buildable,
			SameAdjacentValid,
			TraitType,
			PrereqCivic,
			-----------------
			-- Plunder Info
			-----------------
			PlunderType,
			PlunderAmount,
			-----------------
			-- Housing Info
			-----------------
			Housing,
			TilesRequired
		)
VALUES	
		(
			'IMPROVEMENT_COLOSSAL_HEAD', -- ImprovementType
			'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME', -- Name
			'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION', -- Description
			'ICON_IMPROVEMENT_COLOSSAL_HEAD', -- Icon
			-----------------
			-- Building Info
			-----------------
			1, -- Buildable
			0, -- SameAdjacentValid
			'TRAIT_CIVILIZATION_IMPROVEMENT_OLMEC_COLOSSAL_HEAD', -- TraitType
			'CIVIC_MYSTICISM', -- PrereqCivic
			-----------------
			-- Plunder Info
			-----------------
			'PLUNDER_SCIENCE', -- PlunderType
			1, -- PlunderAmount
			-----------------
			-- Housing Info
			-----------------
			0, -- Housing
			1 -- TilesRequired
		);
-----------------------------------------------------------------------------------
-- Improvement_ValidTerrains

-- Donde se puede construir
-----------------------------------------------------------------------------------
DELETE FROM Improvement_ValidTerrains WHERE ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD';

INSERT OR REPLACE INTO Improvement_ValidTerrains
			(ImprovementType,								TerrainType				)
VALUES 		('IMPROVEMENT_COLOSSAL_HEAD',					'TERRAIN_GRASS'			),
			('IMPROVEMENT_COLOSSAL_HEAD',					'TERRAIN_GRASS_HILLS'	),
			('IMPROVEMENT_COLOSSAL_HEAD',					'TERRAIN_PLAINS'		),
			('IMPROVEMENT_COLOSSAL_HEAD',					'TERRAIN_PLAINS_HILLS'	),
			('IMPROVEMENT_COLOSSAL_HEAD',					'TERRAIN_TUNDRA'		),
			('IMPROVEMENT_COLOSSAL_HEAD',					'TERRAIN_TUNDRA_HILLS'	);

-----------------------------------------------------------------------------------
-- Improvement_ValidFeatures

-- Que features puede usar

-- The valid values for the FeatureType column can be derived from Features.xml (base-game), specifically those that are labelled with 'KIND_FEATURE' within the core Game Data Types table.

-----------------------------------------------------------------------------------
DELETE FROM Improvement_ValidFeatures WHERE ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD';

INSERT OR REPLACE INTO Improvement_ValidFeatures
			(ImprovementType,						FeatureType			)
VALUES 		('IMPROVEMENT_COLOSSAL_HEAD',			'FEATURE_JUNGLE'	);

-----------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits

-- Quien puede construir esto
-----------------------------------------------------------------------------------
INSERT or REPLACE INTO Improvement_ValidBuildUnits
			(ImprovementType,						UnitType			)
VALUES 		('IMPROVEMENT_COLOSSAL_HEAD',			'UNIT_BUILDER'		);

-----------------------------------------------------------------------------------
-- Improvement_YieldChanges

-- Que ofrece la infrstuctura
-----------------------------------------------------------------------------------	
DELETE FROM Improvement_YieldChanges WHERE ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD';

INSERT or REPLACE INTO Improvement_YieldChanges	
		(ImprovementType,					YieldType,						YieldChange		)
VALUES	('IMPROVEMENT_COLOSSAL_HEAD',		'YIELD_FAITH',					1				),
		('IMPROVEMENT_COLOSSAL_HEAD',		'YIELD_SCIENCE',				1				);		

-----------------------------------------------------------------------------------
-- Improvement_Adjacencies

-- bonuses por estar adyacente
-----------------------------------------------------------------------------------
DELETE FROM Improvement_Adjacencies WHERE ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD';

INSERT or REPLACE INTO Improvement_Adjacencies	
		(ImprovementType,				YieldChangeId)
VALUES	('IMPROVEMENT_COLOSSAL_HEAD',	'OLMEC_COLOSSAL_HEAD_HOLY_SITE'		),
		('IMPROVEMENT_COLOSSAL_HEAD',	'OLMEC_COLOSSAL_HEAD_CAMPUS'		);

INSERT INTO Adjacency_YieldChanges
		(ID,								Description,	YieldType,			YieldChange,	TilesRequired,		AdjacentDistrict			)
VALUES	('OLMEC_COLOSSAL_HEAD_HOLY_SITE',	'Placeholder',	'YIELD_SCIENCE',	1,				1,					'DISTRICT_HOLY_SITE'		),
		('OLMEC_COLOSSAL_HEAD_CAMPUS',		'Placeholder',	'YIELD_FAITH',		1,				1,					'DISTRICT_CAMPUS'			);

-----------------------------------------------------------------------------------
-- Improvement_Tourism

-- Bonus de turismo
-----------------------------------------------------------------------------------	
DELETE FROM Improvement_Tourism WHERE ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD';

INSERT INTO Improvement_Tourism	
		(ImprovementType,				TourismSource,						PrereqTech,			ScalingFactor	)
VALUES	('IMPROVEMENT_COLOSSAL_HEAD',	'TOURISMSOURCE_SCIENCE',			'TECH_FLIGHT',		100				);

-------------------------------------
-- TraitModifiers

-- mismo que en UA
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,													ModifierId								)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_OLMEC_COLOSSAL_HEAD', 		'OLMEC_COLOSSAL_HEAD_GREAT_ARTIST'		);

-------------------------------------
-- Modifiers

-- Mismo que UA

-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,											SubjectRequirementSetId		)
VALUES	('OLMEC_COLOSSAL_HEAD_GREAT_ARTIST',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				'OLMEC_4_COLOSSAL_HEAD'		),
		('OLMEC_COLOSSAL_HEAD_GREAT_ARTIST_POINT',			'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',			null						);

-------------------------------------
-- ModifierArguments

-- Mismo que UA

-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value										)
VALUES	('OLMEC_COLOSSAL_HEAD_GREAT_ARTIST',				'ModifierId',				'OLMEC_COLOSSAL_HEAD_GREAT_ARTIST_POINT'	),
		('OLMEC_COLOSSAL_HEAD_GREAT_ARTIST_POINT',			'GreatPersonClassType',		'GREAT_PERSON_CLASS_ARTIST'					),
		('OLMEC_COLOSSAL_HEAD_GREAT_ARTIST_POINT',			'Amount',					1											);

-------------------------------------
-- RequirementSets

-- Cumplir o todos los requisitos o solo 1 para validar
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType				)
VALUES	('OLMEC_4_COLOSSAL_HEAD',				'REQUIREMENTSET_TEST_ALL'		),
		('PLOT_HAS_OLMEC_COLOSSAL_HEAD',		'REQUIREMENTSET_TEST_ALL'		);

-------------------------------------
-- RequirementSetRequirements

-- Asociar una Id
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId									)
VALUES	('OLMEC_4_COLOSSAL_HEAD',				'OLMEC_4_COLOSSAL_HEAD_REQUIREMENT'				),
		('PLOT_HAS_OLMEC_COLOSSAL_HEAD',		'PLOT_HAS_OLMEC_COLOSSAL_HEAD_REQUIREMENT'		);

-------------------------------------
-- Requirements

-- Asociar requerimiento a un tipo
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 									RequirementType									)
VALUES	('OLMEC_4_COLOSSAL_HEAD_REQUIREMENT',				'REQUIREMENT_COLLECTION_COUNT_ATLEAST'			),
		('PLOT_HAS_OLMEC_COLOSSAL_HEAD_REQUIREMENT',		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'		);

-------------------------------------
-- RequirementArguments

-- The RequirementArguments is where the specific values that the check is looking to reference are defined. In conjunction with the RequirementType, this gives the game enough information to know whether the check returns a 'true' or a 'false' result.

-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 								Name,						Value							)
VALUES	('OLMEC_4_COLOSSAL_HEAD_REQUIREMENT', 			'CollectionType',			'COLLECTION_CITY_PLOT_YIELDS'	),
		('OLMEC_4_COLOSSAL_HEAD_REQUIREMENT', 			'Count',					4								),
		('OLMEC_4_COLOSSAL_HEAD_REQUIREMENT', 			'RequirementSetId',			'PLOT_HAS_OLMEC_COLOSSAL_HEAD'	),
		('PLOT_HAS_OLMEC_COLOSSAL_HEAD_REQUIREMENT', 	'ImprovementType',			'IMPROVEMENT_COLOSSAL_HEAD'		);