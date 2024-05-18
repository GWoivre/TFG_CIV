

INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,		Filename					)
VALUES	('ICON_ATLAS_GWG_VEGAS',					22,	 		1,				1,					'OlmecAtlas22.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					30,	 		1,				1,					'OlmecAtlas30.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					36,	 		1,				1,					'OlmecAtlas36.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					44,	 		1,				1,					'OlmecAtlas44.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					48,	 		1,				1,					'OlmecAtlas48.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					50,	 		1,				1,					'OlmecAtlas50.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					64,	 		1,				1,					'OlmecAtlas64.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					80,	 		1,				1,					'OlmecAtlas80.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					200, 		1,				1,					'OlmecAtlas200.dds'			),
		('ICON_ATLAS_GWG_VEGAS',					256, 		1,				1,					'OlmecAtlas256.dds'			),

		('ICON_ATLAS_GWG_CHIFFRE',				32,	 		1,				1,					'PoNgbeIcon32.dds'			),
		('ICON_ATLAS_GWG_CHIFFRE',				45,	 		1,				1,					'PoNgbeIcon45.dds'			),
		('ICON_ATLAS_GWG_CHIFFRE',				48,	 		1,				1,					'PoNgbeIcon48.dds'			),
		('ICON_ATLAS_GWG_CHIFFRE',				50,	 		1,				1,					'PoNgbeIcon50.dds'			),
		('ICON_ATLAS_GWG_CHIFFRE',				55,	 		1,				1,					'PoNgbeIcon55.dds'			),
		('ICON_ATLAS_GWG_CHIFFRE',				64,			1,				1,					'PoNgbeIcon64.dds'			),
		('ICON_ATLAS_GWG_CHIFFRE',				80,	 		1,				1,					'PoNgbeIcon80.dds'			),
		('ICON_ATLAS_GWG_CHIFFRE',				256,	 	1,				1,					'PoNgbeIcon256.dds'			),
		
		('ICON_ATLAS_GWG_WHALE',			22,			2,				1,					'WerejaguarAtlas22.dds'		),
		('ICON_ATLAS_GWG_WHALE',			32,			2,				1,					'WerejaguarAtlas32.dds'		),
		('ICON_ATLAS_GWG_WHALE',			38,			2,				1,					'WerejaguarAtlas38.dds'		),
		('ICON_ATLAS_GWG_WHALE',			50,			2,				1,					'WerejaguarAtlas50.dds'		),
		('ICON_ATLAS_GWG_WHALE',			70,			2,				1,					'WerejaguarAtlas70.dds'		),
		('ICON_ATLAS_GWG_WHALE',			80,			2,				1,					'WerejaguarAtlas80.dds'		),
		('ICON_ATLAS_GWG_WHALE',			95,			2,				1,					'WerejaguarAtlas95.dds'		),
		('ICON_ATLAS_GWG_WHALE',			200,		2,				1,					'WerejaguarAtlas200.dds'	),
		('ICON_ATLAS_GWG_WHALE',			256,		2,				1,					'WerejaguarAtlas256.dds'	),
		
		('ICON_ATLAS_CASINO',			38,			1,				1,					'ColossalHead38.dds'		),
		('ICON_ATLAS_CASINO',			40,			1,				1,					'ColossalHead40.dds'		),
		('ICON_ATLAS_CASINO',			50,			1,				1,					'ColossalHead50.dds'		),
		('ICON_ATLAS_CASINO',			80,			1,				1,					'ColossalHead80.dds'		),
		('ICON_ATLAS_CASINO',			200,		1,				1,					'ColossalHead200.dds'		),
		('ICON_ATLAS_CASINO',			256,		1,				1,					'ColossalHead256.dds'		);

-----------------------------------------------


INSERT INTO IconDefinitions
		(Name,										Atlas,							'Index'				)
VALUES	('ICON_CIVILIZATION_GWG_VEGAS',				'ICON_ATLAS_GWG_VEGAS',			0					),
		('ICON_LEADER_GWG_CHIFFRE',					'ICON_ATLAS_GWG_CHIFFRE',		0					),
		('ICON_UNIT_GWG_WHALE_PORTRAIT',		'ICON_ATLAS_GWG_WHALE',		0					),
		('ICON_UNIT_GWG_WHALE',					'ICON_ATLAS_GWG_WHALE',		1					);