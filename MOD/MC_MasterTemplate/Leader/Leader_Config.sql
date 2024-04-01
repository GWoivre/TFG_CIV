
-----------------------------------------------
-- Players (Gathering Storm)

-- The below section instructs the game to make this leader available as a selection when running the Gathering Storm ruleset.

-- This is identical to the Rise & Fall entry, directly above - though in this case, the Domain is Players:Expansion2_Players, which refers to Gathering Storm.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
		'LOC_CIVILIZATION_GWG_VEGAS_NAME', -- CivilizationName
		'ICON_CIVILIZATION_GWG_VEGAS', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_DESCRIPTION', -- CivilizationAbilityDescription
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
-- PlayerItems (Base Game / Vanilla)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- As above, I have commented-out this section as this template requires the Gathering Storm expansion.
-----------------------------------------------

--INSERT INTO PlayerItems
--		(CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
--VALUES	(
--		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
--		'LEADER_GWG_CHIFFRE', -- LeaderType
--		'UNIT_GWG_WHALE', -- Type
--		'ICON_UNIT_GWG_WHALE', -- Icon
--		'LOC_UNIT_GWG_WHALE_NAME', -- Name
--		'LOC_UNIT_GWG_WHALE_DESCRIPTION', -- Description
--		10	-- SortIndex
--		),
--		
--		(
--		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
--		'LEADER_GWG_CHIFFRE', -- LeaderType
--		'IMPROVEMENT_COLOSSAL_HEAD', -- Type
--		'ICON_IMPROVEMENT_COLOSSAL_HEAD', -- Icon
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME', -- Name
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION', -- Description
--		20 -- SortIndex
--		);
		
-----------------------------------------------
-- PlayerItems (Rise & Fall)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- Identical to the base-game version, except for the added Domain property that indicates the ruleset of the active Expansion.

-- Again, this is commented-out as this template requires the Gathering Storm expansion.
-----------------------------------------------

--INSERT INTO PlayerItems
--		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
--VALUES	(
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
--		'LEADER_GWG_CHIFFRE', -- LeaderType
--		'UNIT_GWG_WHALE', -- Type
--		'ICON_UNIT_GWG_WHALE', -- Icon
--		'LOC_UNIT_GWG_WHALE_NAME', -- Name
--		'LOC_UNIT_GWG_WHALE_DESCRIPTION', -- Description
--		10	-- SortIndex
--		),
--		
--		(
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_GWG_VEGAS', -- CivilizationType
--		'LEADER_GWG_CHIFFRE', -- LeaderType
--		'IMPROVEMENT_COLOSSAL_HEAD', -- Type
--		'ICON_IMPROVEMENT_COLOSSAL_HEAD', -- Icon
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME', -- Name
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION', -- Description
--		20 -- SortIndex
--		);

-----------------------------------------------
-- PlayerItems (Gathering Storm)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- Identical to the base-game version, except for the added Domain property that indicates the ruleset of the active Expansion.
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
		'IMPROVEMENT_COLOSSAL_HEAD', -- Type
		'ICON_IMPROVEMENT_COLOSSAL_HEAD', -- Icon
		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME', -- Name
		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION', -- Description
		20 -- SortIndex
		);