

-----------------------------------------------
-- Types

-- Lo inserta a types
-----------------------------------------------

INSERT INTO	Types
			(Type,					Kind			)
VALUES		('LEADER_GWG_CHIFFRE',	'KIND_LEADER'	);
		
-----------------------------------------------
-- Leaders

-- define el lider
-----------------------------------------------

INSERT INTO	Leaders
			(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES		('LEADER_GWG_CHIFFRE',	'LOC_LEADER_GWG_CHIFFRE_NAME',	'LEADER_DEFAULT', 	4				);

-----------------------------------------------
-- CivilizationLeaders

-- Junta lider y civ
-----------------------------------------------

INSERT INTO	CivilizationLeaders
			(CivilizationType,				LeaderType,				CapitalName					)
VALUES		('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	'LOC_CITY_NAME_GWG_VEGAS_1'	);
		
-----------------------------------------------
-- LeaderQuotes

-- Civipedia 
-----------------------------------------------

INSERT INTO	LeaderQuotes
			(LeaderType,			Quote										)
VALUES		('LEADER_GWG_CHIFFRE',	'LOC_PEDIA_LEADERS_PAGE_GWG_CHIFFRE_QUOTE'	);

-----------------------------------------------
-- CityNames

-- Nombre de ciudades
-----------------------------------------------

INSERT INTO	CityNames
			(CivilizationType,				LeaderType,				SortIndex,	CityName						)
VALUES		('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_1'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_2'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_3'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_4'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_5'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_6'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_7'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_8'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_9'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_10'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_11'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_12'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_13'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_14'		),
			('CIVILIZATION_GWG_VEGAS',		'LEADER_GWG_CHIFFRE',	-1,			'LOC_CITY_NAME_GWG_VEGAS_15'		);
