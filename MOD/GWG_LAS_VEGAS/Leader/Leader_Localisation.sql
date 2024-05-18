
-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Civilization_Localisation.sql, are where we define the text that will actually display, in-game. Fundamentally, certain unique code strings have associated 'localisation' strings. In this file, we specify the exact string of characters that will display in place of the unique code string.

-- In all cases, localisation strings always start with LOC_ - such that we can easily tell them apart from game code.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader Name
-----------------------------------------------	
	
	('en_US',	'LOC_LEADER_GWG_CHIFFRE_NAME',  'Chiffre'	),
	
-----------------------------------------------
-- Leader Unique Ability
-----------------------------------------------	

	('en_US',	'LOC_TRAIT_LEADER_GWG_EXPANDING_HORIZONS_NAME',	'Expanding horizons'	),
	('en_US',	'LOC_TRAIT_LEADER_GWG_EXPANDING_HORIZONS_DESCRIPTION',		'Builders and Whales ignore all terrain costs to build more casinos'	),

-----------------------------------------------
-- Leader Agenda
-----------------------------------------------	

	('en_US',	'LOC_AGENDA_GWG_CHIFFRE_NAME',	'Chiffre'	),
	('en_US',	'LOC_AGENDA_GWG_CHIFFRE_DESCRIPTION',	'Le Chiffre, alias "Die Nummer", "Mr. Number", "Herr Ziffer" and other translations of "The Number", "The Numeral", "The Figure", "The Cipher", or "The Code" in various languages, is the paymaster of the "Syndicat des Ouvriers dAlsace" (French for "Alsatian Workmens Union"), a SMERSH-controlled trade union'	),
	
	('en_US',	'LOC_DIPLO_KUDO_LEADER_GWG_CHIFFRE_REASON_ANY',	'Always happy to get more customers'	),
	('en_US',	'LOC_DIPLO_MODIFIER_GWG_CHIFFRE_HAPPY',	'Happy'	),
	
	('en_US',	'LOC_DIPLO_WARNING_LEADER_GWG_CHIFFRE_REASON_ANY',	'Get back when you are a lil bit more mmmmmmmm richer'	),
	('en_US',	'LOC_DIPLO_MODIFIER_GWG_CHIFFRE_UNHAPPY',	'Angry'	),

		
-----------------------------------------------
-- Dawn of Man (Loading Screen) Text
-----------------------------------------------	

	('en_US',	'LOC_LOADING_INFO_LEADER_GWG_CHIFFRE',
	'Le Chiffre (French: "The Cypher" or "The Digit") is a fictional character and the main antagonist of Ian Flemings 1953 novel, Casino Royale'  	),


	('en_US',	'LOC_DIPLO_FIRST_MEET_LEADER_GWG_CHIFFRE_ANY',
	'Gambling far and wide.' ),
	

	('en_US',	'LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_GWG_CHIFFRE_ANY',
	'Money makes the world run'	),

	('en_US',	'LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_GWG_CHIFFRE_ANY',
	'Money makes the world run'	),
	

	('en_US',	'LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_GWG_CHIFFRE_ANY',
	'Money makes the world run'	),


	('en_US',	'LOC_DIPLO_GREETING_LEADER_GWG_CHIFFRE_HAPPY',
	'lemme treat you to our best meals.'	),


	('en_US',	'LOC_DIPLO_GREETING_LEADER_GWG_CHIFFRE_UNHAPPY',
	'Welcome to business'	),
	

	('en_US',	'LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	''	),
	

	('en_US',	'LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	''	),
	

	('en_US',	'LOC_DIPLO_DELEGATION_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	''	),
	

	('en_US',	'LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	'Land for expansion'	),
	
 
	('en_US',	'LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	'You are not invited.'	),
	

	('en_US',	'LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'Open doors'	),
	

	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	'Customer.'	),
	

	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	'We cant really accept your people.'	),

	('en_US',	'LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'You are formarly invited to our casino'	),

	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'New client, new money.'	),
	

	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'Hope you get into my casino soon.'	),


	('en_US',	'LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'plesaure doing business'	),


	('en_US',	'LOC_DIPLO_KUDO_EXIT_LEADER_GWG_CHIFFRE_ANY',
	'We might have to expand our gratitude.'	),

	('en_US',	'LOC_DIPLO_WARNING_EXIT_LEADER_GWG_CHIFFRE_ANY',
	'We dont need these poors.'	),

	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_GWG_CHIFFRE_HAPPY',
	'This is just business'	),

	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_GWG_CHIFFRE_UNHAPPY',
	'Okay okay.'	),

	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_GWG_CHIFFRE_HAPPY',
	'We are friends, and friends have borders.'	),

	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_GWG_CHIFFRE_UNHAPPY',
	'Okay okay.'	),

	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_GWG_CHIFFRE_ANY',
	'You forced me to do this'	),


	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_GWG_CHIFFRE_HAPPY',
	'Be carefull, lets not step on each others feet'	),

	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_GWG_CHIFFRE_UNHAPPY',
	'Maybe you are too excited for the casino'	),

	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_GWG_CHIFFRE_HAPPY',
	'Lets hope for a future casino plan here'	),

	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_GWG_CHIFFRE_UNHAPPY',
	'I guess you dont want money and riches here'	),

	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_GWG_CHIFFRE_HAPPY',
	'im sure you dont need that many people'	),

	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_GWG_CHIFFRE_UNHAPPY',
	'We dont accept anyone in here.'	),
	

	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_GWG_CHIFFRE_HAPPY',
	'Glad to make business with you'	),

	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_GWG_CHIFFRE_UNHAPPY',
	'Customer is king, even if the king is the enemy.'	),

	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_GWG_CHIFFRE_HAPPY',
	'Why dont you try again.'	),

	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_GWG_CHIFFRE_UNHAPPY',
	'Only a fool would bet on these odds.'	),


	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	'We might have to kick you from this casino.'	),
	
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'We dont accept these business around here. (Denounces You)'	),
	

	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	'Our lands are protected by our Gods. Your decision will lead you to your tomb.'	),

	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'I would never wanted this to happen'	), 


	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_GWG_CHIFFRE_ANY',
	'Glad we could make a deal'	),
	

	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_GWG_CHIFFRE_ANY',
	'Ill never accept this'	),

	('en_US',	'LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'Why dont we gamble our worries away.'	),



	('en_US',	'LOC_DIPLO_DEFEAT_FROM_AI_LEADER_GWG_CHIFFRE_ANY',
	'Your fate is not cemented by this victory. The Olmec Gods will take their sacrifice in time!'	),

	('en_US',	'LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_GWG_CHIFFRE_ANY',
	'{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_GWG_CHIFFRE_ANY}'	),



	('en_US',	'LOC_PEDIA_LEADERS_PAGE_GWG_CHIFFRE_QUOTE',
	'You know, I never understood all these elaborate tortures. Its the simplest thing... to cause more pain than a man can possibly endure. And of course, its not only the immediate agony, but the knowledge that - if you do not yield soon enough - there will be little left to identify you as a man.'  ),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_GWG_CHIFFRE_TITLE',
	'Chiffre'),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_GWG_CHIFFRE_SUBTITLE',
	'The greatest gambler to ever live'	),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GWG_CHIFFRE_CHAPTER_CAPSULE_BODY',
	''),
	
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GWG_CHIFFRE_CHAPTER_DETAILED_BODY',
	''	),

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GWG_CHIFFRE_CHAPTER_HISTORY_PARA_1',
	''),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GWG_CHIFFRE_CHAPTER_HISTORY_PARA_2',
	''),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GWG_CHIFFRE_CHAPTER_HISTORY_PARA_3',
	''),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GWG_CHIFFRE_CHAPTER_HISTORY_PARA_4',
	'.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GWG_CHIFFRE_CHAPTER_HISTORY_PARA_5',
	'`.'),

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_GWG_CHIFFRE_UU_CHAPTER_HISTORY_PARA_1',  	
	''	);

