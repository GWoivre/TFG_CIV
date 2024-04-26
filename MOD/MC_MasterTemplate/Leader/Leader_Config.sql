
-----------------------------------------------
-- Players (Gathering Storm)

-- Para que sea disponible

-- Compatibility Gathering Storm.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
		'LOC_CIVILIZATION_GWG_VEGAS_NAME', -- CivilizationName
		'ICON_CIVILIZATION_GWG_VEGAS', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_GWG_DONT_STOP_GAMBLING_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_GWG_VEGAS', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_GWG_CHIFFRE', -- LeaderType
		'LOC_LEADER_GWG_CHIFFRE_NAME', -- LeaderName
		'ICON_LEADER_GWG_CHIFFRE', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_GWG_CHIFFRE' -- LeaderAbilityIcon
		);


-----------------------------------------------
-- PlayerItems (Gathering Storm)

-- Asocia el lider a la civ
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
		'LEADER_GWG_CHIFFRE', -- LeaderType
		'UNIT_GWG_WHALE', -- Type
		'ICON_UNIT_GWG_WHALE', -- Icon
		'LOC_UNIT_GWG_WHALE_NAME', -- Name
		'LOC_UNIT_GWG_WHALE_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
		'LEADER_GWG_CHIFFRE', -- LeaderType
		'BUILDING_CASINO', -- Type
		'ICON_BUILDING_CASINO', -- Icon
		'LOC_BUILDING_CASINO_NAME', -- Name
		'LOC_BUILDING_CASINO_DESCRIPTION', -- Description
		20 -- SortIndex
		);