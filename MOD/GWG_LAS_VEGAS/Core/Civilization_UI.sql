
INSERT OR REPLACE INTO Types	
		(Type,													Kind						)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CASINO',	'KIND_TRAIT'				),
		('BUILDING_CASINO',							'KIND_BUILDING'			);

	
INSERT INTO CivilizationTraits
		(TraitType,												CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CASINO',	'CIVILIZATION_GWG_VEGAS'		);


INSERT INTO Traits
		(TraitType,												Name,											Description												)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CASINO',	'LOC_BUILDING_CASINO_NAME',		'LOC_BUILDING_CASINO_DESCRIPTION'		);



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
-- Building_YieldChanges

-- Que ofrece la infrstuctura
-----------------------------------------------------------------------------------	


INSERT or REPLACE INTO Building_YieldChanges	
		(BuildingType,					YieldType,						YieldChange		)
VALUES	('BUILDING_CASINO',		'YIELD_CULTURE',					2				),
		('BUILDING_CASINO',		'YIELD_GOLD',				3				);		


