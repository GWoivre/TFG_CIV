/*
	Leader Agendas
	Authors: MC
*/

-----------------------------------------------
-- Types

-- Lo inserta en tipos
-----------------------------------------------

INSERT INTO Types
			(Type,							Kind			)
VALUES		('TRAIT_AGENDA_GWG_CHIFFRE',		'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas

-- Define la agenda
-----------------------------------------------

INSERT INTO Agendas
			(AgendaType,			Name,							Description								)
VALUES 		('AGENDA_GWG_CHIFFRE',	'LOC_AGENDA_GWG_CHIFFRE_NAME',	'LOC_AGENDA_GWG_CHIFFRE_DESCRIPTION'		);

-----------------------------------------------
-- Traits

-- Lo añadimos a Traits
-----------------------------------------------

INSERT INTO Traits				
			(TraitType,						Name,							Description								)
VALUES		('TRAIT_AGENDA_GWG_CHIFFRE',		'LOC_AGENDA_GWG_CHIFFRE_NAME',	'LOC_AGENDA_GWG_CHIFFRE_DESCRIPTION'		);

-----------------------------------------------
-- AgendaTraits

-- Definimos que Traits tiene la agenda
-----------------------------------------------

INSERT INTO AgendaTraits
			(AgendaType,			TraitType					)
VALUES 		('AGENDA_GWG_CHIFFRE',	'TRAIT_AGENDA_GWG_CHIFFRE'	);

-----------------------------------------------
-- HistoricalAgendas

-- Explicamos a la IA del juego como controlar al personaje
-----------------------------------------------

INSERT INTO HistoricalAgendas
			(LeaderType,			AgendaType				)
VALUES 		('LEADER_GWG_CHIFFRE',	'AGENDA_GWG_CHIFFRE'		);

-----------------------------------------------
-- ExclusiveAgendas

-- A la hora de empezar el juego se asocia 1 agenda conocida y 1 agenda secreta a cada civ, aqui definimos que 2 agendas no pueden ir juntas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
			(AgendaOne,				AgendaTwo					)
VALUES 		('AGENDA_GWG_CHIFFRE',	'AGENDA_DARWINIST'		);
-- Con darwinista no porque gana mas al no tener a nadie en guerra
-----------------------------------------------
-- TraitModifiers

-- modificiaciones
----------------------------------------------

INSERT INTO TraitModifiers
			(TraitType,						ModifierId								)
VALUES		('TRAIT_AGENDA_GWG_CHIFFRE',		'AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY'	),
			('TRAIT_AGENDA_GWG_CHIFFRE',		'AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY'		);
		
-----------------------------------------------
-- Modifiers

-- Modificaciones
-----------------------------------------------

INSERT INTO Modifiers	
			(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES		('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_GWG_CHIFFRE_UNHAPPY'		),
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_GWG_CHIFFRE_HAPPY'		);

-----------------------------------------------	
-- ModifierStrings

-- Texto interno de modifier
-----------------------------------------------	
INSERT INTO ModifierStrings
			(ModifierId,								Context,	Text								)
VALUES		('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments

-- Como varia la relacion con otros lideres si hay mas o menos amistad entre ellos
-----------------------------------------------

INSERT INTO ModifierArguments
			(ModifierId,							Name,							Value												)
VALUES		('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',	'InitialValue',					0													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',	'IncrementValue',				-2													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',	'IncrementTurns',				-10													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',	'MaxValue',						-25													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_GWG_CHIFFRE_REASON_ANY'	),
			('AGENDA_MODIFIER_GWG_CHIFFRE_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_GWG_CHIFFRE_UNHAPPY'				),
	
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',	'InitialValue',					10													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',	'IncrementValue',				1													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',	'IncrementTurns',				10													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',	'MaxValue',						30													),
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_GWG_CHIFFRE_REASON_ANY'		),
			('AGENDA_MODIFIER_GWG_CHIFFRE_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_GWG_CHIFFRE_HAPPY'				);
			-- Aumento sus valores de amistad significativamente porque se basa en alianzas
-----------------------------------------------
-- RequirementSets

-- Condicionales
-----------------------------------------------

INSERT INTO RequirementSets
			(RequirementSetId,				RequirementSetType			)
VALUES		('REQSET_GWG_CHIFFRE_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_GWG_CHIFFRE_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements

-- Condicionales
-----------------------------------------------

INSERT INTO RequirementSetRequirements
			(RequirementSetId,				RequirementId						)
VALUES		('REQSET_GWG_CHIFFRE_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_GWG_CHIFFRE_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_GWG_CHIFFRE_UNHAPPY',	'REQUIRES_HAS_LOW_INCOME'			),
			('REQSET_GWG_CHIFFRE_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
			('REQSET_GWG_CHIFFRE_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
			('REQSET_GWG_CHIFFRE_HAPPY',		'REQUIRES_HAS_HIGH_INCOME'			);
			-- la dependencia de amistad es cuanto dinero tienen
