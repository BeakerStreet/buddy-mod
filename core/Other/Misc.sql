/* RHAI inspiration

-- RH Misc
-- AUTHOR: ROMANHOLIDAY		


/*
		<Row>
			<ModifierId>AUTO_THEME_AT_LEAST_3_SLOTS</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_AUTO_THEME_BUILDINGS_WITH_X_SLOTS</ModifierType>
		</Row>
		
		<Row>
			<ModifierId>AUTO_THEME_AT_LEAST_3_SLOTS</ModifierId>
			<Name>Amount</Name>
			<Value>3</Value>
		</Row>
		<Row>
			<ModifierId>AUTO_THEME_AT_LEAST_3_SLOTS</ModifierId>
			<Name>IsWonder</Name>
			<Value>false</Value>
		</Row>
		
		<Row>
			<ModifierId>THEMED_YIELD_MODIFIER</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_THEMED_ALL_YIELDS</ModifierType>
		</Row>
		<Row>
			<ModifierId>THEMED_TOURISM_MODIFIER</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_THEMED_TOURISM</ModifierType>
		</Row>
		
		<Row>
			<ModifierId>THEMED_YIELD_MODIFIER</ModifierId>
			<Name>Amount</Name>
			<Value>100</Value>
		</Row>
		<Row>
			<ModifierId>THEMED_TOURISM_MODIFIER</ModifierId>
			<Name>Amount</Name>
			<Value>100</Value>
		</Row>
*/

INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',					'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
	--	('REQUIRES_PLAYER_DEITY_AI', 									'Handicap', 				'DIFFICULTY_DEITY'),
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',						'CivicType',			'CIVIC_NATURAL_HISTORY');


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY'),
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_IS_AI');
	--	('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_DEITY_AI');

		


INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX',						'MODIFIER_PLAYER_ADJUST_AUTO_THEME_BUILDINGS_WITH_X_SLOTS',		'RH_AI_HAS_NATURAL_HISTORY_DEITY');
		
		--Arguments:Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,																		Name,						Value) 	VALUES	
		--
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX',								'Amount',					3),
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX',								'IsWonder',					false);
		
	--('AUTO_THEME_AT_LEAST_3_SLOTS',														'AllowUniqueOverride',		0),




INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2',						'MODIFIER_PLAYER_ADJUST_AUTO_THEME_BUILDINGS_WITH_X_SLOTS',		'RH_AI_HAS_NATURAL_HISTORY_DEITY');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,																		Name,						Value) 	VALUES	
		--
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2',								'Amount',					3),
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2',								'IsWonder',					true);
		
	--('AUTO_THEME_AT_LEAST_3_SLOTS',														'AllowUniqueOverride',		0),

/*
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY'),
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_IS_AI');
	--	('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_DEITY_AI');

		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',					'REQUIREMENT_PLAYER_HAS_CIVIC');


--INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
--('REQUIRES_PLAYER_DEITY_AI', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0);


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
	--	('REQUIRES_PLAYER_DEITY_AI', 									'Handicap', 				'DIFFICULTY_DEITY'),
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',						'CivicType',			'CIVIC_NATURAL_HISTORY');
	
*/


-- Testing 8% per difficulty (to compensate for default AI 8% higher culture per difficulty, not well themeing great works or targeting specific civs) (smoother difficulty uses 20% per difficulty + lots of extra era scaling)

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'HIGH_DIFFICULTY_SLIGHT_TOURISM');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('HIGH_DIFFICULTY_SLIGHT_TOURISM', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'PLAYER_IS_HIGH_DIFFICULTY_AI');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('HIGH_DIFFICULTY_SLIGHT_TOURISM', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 9);


-- Deity Future Era Tourism Finisher (8% cultural hegemony)

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', '5_PERCENT_TOURISM_HEGEMONY_CIVIC_DEITY');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('5_PERCENT_TOURISM_HEGEMONY_CIVIC_DEITY', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'D_AI_HEGEMONY_CIVIC');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('5_PERCENT_TOURISM_HEGEMONY_CIVIC_DEITY', 'Amount', 'LinearScaleFromDefaultHandicap', 50, 0);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('D_AI_HEGEMONY_CIVIC', 			'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES	
		('D_AI_HEGEMONY_CIVIC', 			'REQUIRES_RH_HAS_CIVIC_HEGEMONY'),
		('D_AI_HEGEMONY_CIVIC', 			'REQUIRES_PLAYER_IS_AI'),
		('D_AI_HEGEMONY_CIVIC', 			'REQUIRES_PLAYER_IMMORTAL');
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_HEGEMONY', 				'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_HEGEMONY',					'CivicType',	'CIVIC_CULTURAL_HEGEMONY');


INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_PLAYER_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0);

INSERT OR IGNORE INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_PLAYER_IMMORTAL', 'Handicap', 'DIFFICULTY_IMMORTAL');



INSERT OR IGNORE INTO	TraitModifiers	(TraitType,		ModifierId) VALUES	
	('TRAIT_LEADER_SATYAGRAHA',		'RH_Resource_Tweak'),
	('TRAIT_LEADER_SATYAGRAHA',		'RH_Resource_Tweak2');

INSERT OR IGNORE INTO Modifiers	(ModifierId, ModifierType, SubjectRequirementSetId)  VALUES	
		('RH_Resource_Tweak',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_AI_LATE_TECH_REQ_S'),
		('RH_Resource_Tweak2',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_AI_SMART_MATERIALS_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value)  VALUES
		('RH_Resource_Tweak',	'ResourceType',	'RESOURCE_URANIUM'),
		('RH_Resource_Tweak',	'Amount',		2),

		('RH_Resource_Tweak2',	'ResourceType',	'RESOURCE_ALUMINUM'),
		('RH_Resource_Tweak2',	'Amount',		2);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('PLAYER_IS_AI_LATE_TECH_REQ_S', 'REQUIREMENTSET_TEST_ALL'),
		('PLAYER_IS_AI_SMART_MATERIALS_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES

		('PLAYER_IS_AI_LATE_TECH_REQ_S', 'PLAYER_IS_AI_LATE_TECH'),
		('PLAYER_IS_AI_LATE_TECH_REQ_S', 'REQUIRES_PLAYER_IS_AI'),

		('PLAYER_IS_AI_SMART_MATERIALS_REQ_S', 'PLAYER_IS_AI_SMART_MATERIALS'),
		('PLAYER_IS_AI_SMART_MATERIALS_REQ_S', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements  (RequirementId, RequirementType)  VALUES
		('PLAYER_IS_AI_LATE_TECH', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('PLAYER_IS_AI_SMART_MATERIALS', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value)  VALUES
		('PLAYER_IS_AI_LATE_TECH','TechnologyType', 'TECH_NUCLEAR_FUSION'),
		('PLAYER_IS_AI_SMART_MATERIALS','TechnologyType', 'TECH_SMART_MATERIALS');



INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
-- Era Requirement Creation
('PLAYER_AT_CLASSICAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_MEDIEVAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_RENAISSANCE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('NOT_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('PLAYER_AT_MODERN_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('NOT_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('PLAYER_AT_INFO_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_FUTURE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),

('REQUIRES_KING', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_EMPEROR', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_NOT_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 1);


INSERT OR IGNORE INTO RequirementArguments (RequirementId, Name, Value) VALUES
-- Eras
('PLAYER_AT_CLASSICAL_ERA', 'EraType', 'ERA_CLASSICAL'),
('PLAYER_AT_MEDIEVAL_ERA', 'EraType', 'ERA_MEDIEVAL'),
('PLAYER_AT_RENAISSANCE_ERA', 'EraType', 'ERA_RENAISSANCE'),
('PLAYER_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('NOT_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('PLAYER_AT_MODERN_ERA', 'EraType', 'ERA_MODERN'),
('PLAYER_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('NOT_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('PLAYER_AT_INFO_ERA', 'EraType', 'ERA_INFORMATION'),
('PLAYER_AT_FUTURE_ERA', 'EraType', 'ERA_FUTURE'),

('REQUIRES_KING', 'Handicap', 'DIFFICULTY_KING'),
('REQUIRES_EMPEROR', 'Handicap', 'DIFFICULTY_EMPEROR'),
('REQUIRES_IMMORTAL', 'Handicap', 'DIFFICULTY_IMMORTAL'),
('REQUIRES_DEITY', 'Handicap', 'DIFFICULTY_DEITY'),
('REQUIRES_NOT_DEITY', 'Handicap', 'DIFFICULTY_DEITY');


UPDATE ModifierArguments SET Value =-2 WHERE ModifierId='STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY' AND Name='IncrementValue'; 
UPDATE ModifierArguments SET Value =-5 WHERE ModifierId='STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY' AND Name='InitialValue'; 



UPDATE ModifierArguments SET Value =-9 WHERE ModifierId='AGENDA_DIFFERENT_GOVERNMENT' AND Name='InitialValue'; -- def -6

UPDATE ModifierArguments SET Value =-9 WHERE ModifierId='AGENDA_LOW_NUKE_LOVE' AND Name='InitialValue'; -- def -6

--UPDATE ModifierArguments SET Value = 6 WHERE ModifierId='AGENDA_MODIFIER_NOT_WARMONGER' AND Name='InitialValue'; -- def 5

UPDATE ModifierArguments SET Value =-16 WHERE ModifierId='AGENDA_MODIFIER_WARMONGER' AND Name='InitialValue'; -- def -8

-- AGENDA_MODIFIER_WARMONGER def -8
-- AGENDA_MODIFIER_NOT_WARMONGER def 5

-- Allying with enemy / War with friend modifiers


UPDATE ModifierArguments SET Value = 15 WHERE ModifierId='STANDARD_DIPLOMATIC_ALLY' AND Name='InitialValue'; -- def 18

--UPDATE ModifierArguments SET Value = 9 WHERE ModifierId='STANDARD_DIPLOMATIC_DECLARED_FRIEND' AND Name='InitialValue'; -- def 9

-- Def -8
UPDATE ModifierArguments SET Value=-13 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DECLARED_SURPRISE_WAR_ON_FRIEND' AND Name='AmountPerIncident';

-- Def -6
UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DENOUNCED_FRIEND' AND Name='AmountPerIncident';

-- Def 6
UPDATE ModifierArguments SET Value=6 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DECLARED_FRIENDSHIP_WITH_FRIEND' AND Name='AmountPerIncident';

-- Def -6, pvs -9
UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DECLARED_FRIENDSHIP_WITH_ENEMY' AND Name='AmountPerIncident';

-- Def -8, pvs -12
UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_ALLIED_WITH_ENEMY' AND Name='AmountPerIncident';

-- Def -5
UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='STANDARD_DIPLOMATIC_ARCHAEOLOGY' AND Name='ModifierPerTransgression';

-- Def -6
UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='STANDARD_DIPLOMATIC_BROKEN_PROMISE' AND Name='ModifierPerTransgression';

-- Def -5
UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='STANDARD_DIPLOMATIC_ESPIONAGE' AND Name='ModifierPerTransgression';

-- Def -3
UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='STANDARD_DIPLOMATIC_NO_PROMISE' AND Name='ModifierPerTransgression';

-- Def -6
UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='STANDARD_DIPLOMATIC_BROKEN_PLEDGE' AND Name='ModifierPerTransgression';

-- Def -3
UPDATE ModifierArguments SET Value=-5 WHERE ModifierId='STANDARD_DIPLOMATIC_NO_PLEDGE' AND Name='ModifierPerTransgression';

UPDATE ModifierArguments SET Value=8 WHERE ModifierId='STANDARD_DIPLOMATIC_KEPT_PROMISE' AND Name='ModifierPerKeptPromise'; -- def 4

UPDATE ModifierArguments SET Value=10 WHERE ModifierId='STANDARD_DIPLOMATIC_KEPT_PROMISE' AND Name='ReductionTurns'; -- def 15


