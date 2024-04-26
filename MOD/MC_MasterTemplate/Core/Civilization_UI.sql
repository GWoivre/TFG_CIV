
-----------------------------------------------
-- Types

-- Añade la infrastructura unica y de que tipo es
-----------------------------------------------		

INSERT OR REPLACE INTO Types	
		(Type,													Kind						)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CASINO',	'KIND_TRAIT'				),
		('BUILDING_CASINO',							'KIND_BUILDING'			);

-----------------------------------------------
-- CivilizationTraits

-- This defines the civilization to which the TraitType is applied (i.e. which civilization gets the Unique Infrastructure). This is a simple matter of referencing the custom CivilizationType defined in Civilization_Config.sql and using the TraitType defined in this document.
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,												CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CASINO',	'CIVILIZATION_GWG_VEGAS'		);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT INTO Traits
		(TraitType,												Name,											Description												)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CASINO',	'LOC_BUILDING_CASINO_NAME',		'LOC_BUILDING_CASINO_DESCRIPTION'		);

--------------------------------------------------------------------------------------------------------------------------
-- Improvements

-- The below defines the core behaviour/configuration of our custom Improvement. This is where we instruct the game to ensure it is unique (by setting the TraitType value), as well as tie together the various locally-defined elements in this mod (ImprovementType, Name, Description, Icon).

-- You will note that the initial instruction is a DELETE. This clears the values from the base-game implementation of BUILDING_CASINO - paving the way for the behaviour/effect we define here.

-- Whilst the majority of information is locally-defined (in this mod), please note the PrereqCivic value, which is where we tell the game which Civic must be attained in order to unlock the Improvement.

-- If you have been following the documents in order, below you will find the first reference to an ICON element. The naming convention is always to append ICON_ in front of the full element name to which it applies. In this case, we're referencing an icon from the base-game; but the same logic should be applied throughout.
--------------------------------------------------------------------------------------------------------------------------


INSERT INTO Buildings	
		(
	BuildingType,
	Name,
	PrereqTech,
	Cost,
	Description,
	Entertainment,
	PurchaseYield,
	Maintenance,
	TraitType,
	CitizenSlots,
	AdvisorType

		)
VALUES	
		(
			'BUILDING_CASINO', -- BuildingType
			'LOC_BUILDING_CASINO_NAME', -- Name
			'TECH_CURRENCY', -- PrereqTech
			200, -- Cost
			'LOC_BUILDING_CASINO_DESCRIPTION', -- Description
			3, -- Entertrainment
			'YIELD_GOLD', -- PurchaseYield
			2, --Maintenance
			'TRAIT_CIVILIZATION_BUILDING_CASINO', --TraitType
			1, --Citizen slots
			'ADVISOR_CULTURE'

		);
-----------------------------------------------------------------------------------
-- Improvement_ValidTerrains

-- Donde se puede construir
-----------------------------------------------------------------------------------


INSERT OR REPLACE INTO Building_ValidTerrains
			(BuildingType,								TerrainType				)
VALUES 		('BUILDING_CASINO',					'TERRAIN_GRASS'			),
			('BUILDING_CASINO',					'TERRAIN_GRASS_HILLS'	),
			('BUILDING_CASINO',					'TERRAIN_PLAINS'		),
			('BUILDING_CASINO',					'TERRAIN_PLAINS_HILLS'	),
			('BUILDING_CASINO',					'TERRAIN_TUNDRA'		),
			('BUILDING_CASINO',					'TERRAIN_TUNDRA_HILLS'	),
			('BUILDING_CASINO',					'TERRAIN_DESERT');


-----------------------------------------------------------------------------------
-- Improvement_YieldChanges

-- Que ofrece la infrstuctura
-----------------------------------------------------------------------------------	


INSERT or REPLACE INTO Building_YieldChanges	
		(BuildingType,					YieldType,						YieldChange		)
VALUES	('BUILDING_CASINO',		'YIELD_CULTURE',					2				),
		('BUILDING_CASINO',		'YIELD_GOLD',				3				);		


-----------------------------------------------------------------------------------
-- Improvement_Tourism

-- Bonus de turismo
-----------------------------------------------------------------------------------	


INSERT INTO Building_TourismBombs_XP2	
		(BuildingType,				TourismBombValue,	)
VALUES	('BUILDING_CASINO',	500	);
