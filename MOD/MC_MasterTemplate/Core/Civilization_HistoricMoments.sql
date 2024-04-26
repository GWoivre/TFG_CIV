

-----------------------------------------------
-- Moment Illustrations

-- Añade momentos historicos basados en cuando creas una unidad o creas la lozalizacion unica

-- MomentIllustrationType: Valores internos
-- MomentDataType: Mismo que arriba
-- GameDataType: Que unidad o localizacion queremos que lo tenga
-- Texture: que arte usar

-- Compatibility: Rise & Fall (Expansion1)
-----------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,					GameDataType,						Texture								)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',			'MOMENT_DATA_UNIT',				'UNIT_GWG_WHALE',				'WerejaguarHistoricMoment.dds'		),
		('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',		'BUILDING_CASINO',		'ColossalHeadHistoricMoment.dds'	);
