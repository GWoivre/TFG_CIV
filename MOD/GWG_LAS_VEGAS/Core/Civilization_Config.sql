

-----------------------------------------------
-- Types

-- Añade a la civ como existente en la base de datos de civ


-----------------------------------------------

INSERT INTO	Types
			(Type,							Kind					)
VALUES		('CIVILIZATION_GWG_VEGAS',		'KIND_CIVILIZATION'		);
		
-----------------------------------------------
-- Civilizations

-- Insertar info basica de la civ con tanto valores locales como CIVILIZATION_GWG_VEGAS o del juego "5"


-- StartingCivilizationLevelType: siempre: CIVILIZATION_LEVEL_FULL_CIV. 
-- RandomCityNameDepth: Como de grande es la pool de nombres de ciudad
-- Ethnicity: ETHNICITY_AFRICAN, ETHNICITY_ASIAN, ETHNICITY_EURO, ETHNICITY_MEDIT or ETHNICITY_SOUTHAM
-----------------------------------------------

INSERT INTO	Civilizations
			(
			CivilizationType,
			Name,
			Description,
			Adjective,
			StartingCivilizationLevelType,
			RandomCityNameDepth,
			Ethnicity
			)

VALUES		(
			'CIVILIZATION_GWG_VEGAS', --CivilizationType
			'LOC_CIVILIZATION_GWG_VEGAS_NAME', -- Name
			'LOC_CIVILIZATION_GWG_VEGAS_DESCRIPTION', -- Description
			'LOC_CIVILIZATION_GWG_VEGAS_ADJECTIVE', -- Adjective
			'CIVILIZATION_LEVEL_FULL_CIV', -- StartingCivilizationLevelType
			5, -- RandomCityNameDepth
			'ETHNICITY_SOUTHAM' -- Ethnicity
			);

-----------------------------------------------
-- NamedMountains

-- Montañas y sus nombres 

-- Compatibility:  Gathering Storm expansion (Expansion2).
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,							Name											)
VALUES	('NAMED_MOUNTAIN_MOUNT_CHARLESTON',	'LOC_NAMED_MOUNTAIN_MOUNT_CHARLESTON'	),
		('NAMED_MOUNTAIN_FRENCHMAN_MOUNTAIN',			'LOC_NAMED_MOUNTAIN_FRENCHMAN_MOUNTAIN'			),
		('NAMED_MOUNTAIN_CALICO_1',	'LOC_NAMED_MOUNTAIN_CALICO_1'	),
		('NAMED_MOUNTAIN_PETROGLYPH_WALL',		'LOC_NAMED_MOUNTAIN_PETROGLYPH_WALL'		),
		('NAMED_MOUNTAIN_GASS_PEAK',	'LOC_NAMED_MOUNTAIN_GASS_PEAK'		),
		('NAMED_MOUNTAIN_LA_MADRE',					'LOC_NAMED_MOUNTAIN_LA_MADRE'					),
		('NAMED_MOUNTAIN_SPING_MOUNTAINS',		'LOC_NAMED_MOUNTAIN_SPING_MOUNTAINS'			);

-----------------------------------------------
-- NamedMountainCivilizations

-- Nombre de civilizaciones en monatañas

-- Compatibility:  Gathering Storm expansion (Expansion2). 

-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,			NamedMountainType							)
VALUES	('CIVILIZATION_GWG_VEGAS',	'NAMED_MOUNTAIN_MOUNT_CHARLESTON'	),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_MOUNTAIN_FRENCHMAN_MOUNTAIN'			),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_MOUNTAIN_CALICO_1'	),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_MOUNTAIN_PETROGLYPH_WALL'		),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_MOUNTAIN_GASS_PEAK'		),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_MOUNTAIN_LA_MADRE'					),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_MOUNTAIN_SPING_MOUNTAINS'			);

-----------------------------------------------
-- NamedRivers

-- Rios y sus nombnres

-- Compatibility: Gathering Storm expansion (Expansion2). 
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,					Name									)
VALUES	('NAMED_RIO_COLORADO',				'LOC_NAMED_RIO_COLORADO'				),
		('NAMED_RIVER_LAS_VEGAS_WASH',			'LOC_NAMED_RIVER_LAS_VEGAS_WASH'			),
		('NAMED_RIVER_THOUSAND_SPINGS_CREEK',				'LOC_NAMED_RIVER_THOUSAND_SPINGS_CREEK'					),
		('NAMED_RIVER_VIRGIN',			'LOC_NAMED_RIVER_VIRGIN'				),
		('NAMED_RIVER_VALLEY_WASH',				'LOC_NAMED_RIVER_VALLEY_WASH'				),
		('NAMED_RIVER_MUDDY',			'LOC_NAMED_RIVER_MUDDY'				);

-----------------------------------------------
-- NamedRiverCivilizations

-- Civilizaciones con rio

-- Compatibility: Gathering Storm expansion (Expansion2). 
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,			NamedRiverType					)
VALUES	('CIVILIZATION_GWG_VEGAS',	'NAMED_RIO_COLORADO'			),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_RIVER_LAS_VEGAS_WASH'		),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_RIVER_THOUSAND_SPINGS_CREEK'				),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_RIVER_VIRGIN'			),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_RIVER_VALLEY_WASH'			),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_RIVER_MUDDY'			);


-----------------------------------------------
-- NamedDeserts

-- Desiertos

-- Compatibility: N Gathering Storm expansion (Expansion2). 
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,			Name							)
VALUES	('NAMED_MOJAVE_DESERTN',	'LOC_NAMED_MOJAVE_DESERT'		),
		('NAMED_DEATH_VALLEY',	'LOC_NAMED_DEATH_VALLEY'	);

-----------------------------------------------
-- NamedDesertCivilizations

-- Civ de desierto

-- Compatibility: Gathering Storm expansion (Expansion2). 
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,			NamedDesertType				)
VALUES	('CIVILIZATION_GWG_VEGAS',	'NAMED_MOJAVE_DESERTN'		),
		('CIVILIZATION_GWG_VEGAS',	'NAMED_DEATH_VALLEY'	);

-----------------------------------------------
-- CityNames

-- Nombre de ciudades

-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,			CityName						)
VALUES	('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_1'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_2'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_3'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_4'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_5'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_6'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_7'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_8'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_9'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_10'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_11'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_12'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_13'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_14'		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITY_NAME_GWG_VEGAS_15'		);
		
-----------------------------------------------
-- CivilizationCitizenNames

-- Nombres de ciudadanos

-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,			CitizenName,						Female	)
VALUES	('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_1',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_2',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_3',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_4',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_5',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_6',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_7',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_8',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_9',		0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_MALE_10',	0 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_1',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_2',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_3',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_4',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_5',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_6',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_7',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_8',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_9',	1 		),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CITIZEN_GWG_VEGAS_FEMALE_10',	1 		);

-----------------------------------------------
-- CivilizationInfo

-- Info para la Civipedia
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,			Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_GWG_VEGAS',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_GWG_VEGAS_LOCATION',		10			),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_GWG_VEGAS_SIZE',			20			),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_GWG_VEGAS_POPULATION',		30			),
		('CIVILIZATION_GWG_VEGAS',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_GWG_VEGAS_CAPITAL',			40			);
		
-----------------------------------------------
-- Start Bias

--  Preferencia de spawn con prioridad de 1 a 5 siendo la 1 la mas alta
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,			TerrainType,			Tier	)
VALUES	('CIVILIZATION_GWG_VEGAS',	'TERRAIN_DESERT',		1		);
-- que empieze en desierto
INSERT INTO	StartBiasFeatures
		(CivilizationType,			FeatureType,			Tier	)
VALUES	('CIVILIZATION_GWG_VEGAS',	'FEATURE_FLOODPLAINS',	4		);

INSERT INTO	StartBiasResources
		(CivilizationType,			ResourceType,			Tier	)
VALUES	('CIVILIZATION_GWG_VEGAS',	'RESOURCE_SILVER',		3		);
-- que le venga la plata
INSERT INTO	StartBiasRivers
		(CivilizationType,				Tier	)
VALUES	('CIVILIZATION_GWG_VEGAS',		4		);
-- pocos rios