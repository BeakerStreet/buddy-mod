/* RHAI inspiration

-- RH Various Important Tweaks and Bugfixes
-- AUTHOR: ROMANHOLIDAY


-- Random but important bugfixs, might as well include:

-- Plunder yields health (+50)
UPDATE Districts SET PlunderAmount = 50 WHERE DistrictType = 'DISTRICT_DAM';

-- IBN_KHALDUN Doesn't work correctly (gives half of what is listed)
UPDATE ModifierArguments SET Value = 8 WHERE Name = 'Amount' AND ModifierId LIKE 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN_EMPIRE_ECSTATIC_%';
UPDATE ModifierArguments SET Value = 4 WHERE Name = 'Amount' AND ModifierId LIKE 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN_EMPIRE_HAPPY_%';


/*
INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_IMMORTAL');
*/

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL'),
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_IMMORTAL',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',	'RH_AI_HAS_GUIDANCE_SYSTEMS_IMMORTAL');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'UnitType',					'UNIT_ANTIAIR_GUN'),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'AllowUniqueOverride',		0),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'RunOnce',					1), -- True
		
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_IMMORTAL',								'UnitType',					'UNIT_MOBILE_SAM'),
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_IMMORTAL',								'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_IMMORTAL',								'AllowUniqueOverride',		0);



INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_IMMORTAL',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'REQUIRES_PLAYER_IS_AI'),
--		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'REQUIRES_PLAYER_IMMORTAL_AI'),
		--
		('RH_AI_HAS_GUIDANCE_SYSTEMS_IMMORTAL',						'RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_IMMORTAL',						'REQUIRES_PLAYER_IS_AI');
--		('RH_AI_HAS_GUIDANCE_SYSTEMS_IMMORTAL',						'REQUIRES_PLAYER_IMMORTAL_AI');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

--INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
--('REQUIRES_PLAYER_IMMORTAL_AI', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0);


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
	--	('REQUIRES_PLAYER_IMMORTAL_AI', 									'Handicap', 				'DIFFICULTY_IMMORTAL'),
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',						'TechnologyType',			'TECH_LASERS'),
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'TechnologyType',			'TECH_GUIDANCE_SYSTEMS');
	
	
	
	
-- 2. RH Per Instance	

-- AA -- Advanced Ballistics	
-- SAM -- Guidance Systems

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_COAL_POWER_PLANT', 				'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'),
('BUILDING_FOSSIL_FUEL_POWER_PLANT', 		'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF');
--('BUILDING_POWER_PLANT', 					'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_BROADCAST_CENTER', 			'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'), -- Without culture victory very weak on defence
('BUILDING_FILM_STUDIO', 				'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'),

('BUILDING_ESTADIO_DO_MARACANA', 			'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'),
--('BUILDING_AIRPORT', 						'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF'),
('BUILDING_HANGAR', 						'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF');

--INSERT OR IGNORE INTO DistrictModifiers (DistrictType, ModifierId) VALUES
--('DISTRICT_CITY_CENTER', 				'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF');

--('DISTRICT_AERODROME', 				'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_MILITARY_ACADEMY', 				'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF');


INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_MANHATTAN_PROJECT',				'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'),  
		('PROJECT_OPERATION_IVY',					'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF'), 
		('PROJECT_LAUNCH_EARTH_SATELLITE',			'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'), 
		('PROJECT_LAUNCH_MOON_LANDING',				'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'), 
		('PROJECT_LAUNCH_MARS_BASE',				'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF'), 
		('PROJECT_LAUNCH_EXOPLANET_EXPEDITION',		'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF'); 



--INSERT OR IGNORE INTO TraitModifiers
--		(TraitType,						ModifierId) VALUES	
		--
--		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF'),
--		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF',							'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',		'RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF'),
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',	'RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF',								'UnitType',					'UNIT_ANTIAIR_GUN'),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF',								'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF',								'AllowUniqueOverride',		0),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_HIGH_DIFF',								'RunOnce',					1), -- True
		
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF',									'UnitType',					'UNIT_MOBILE_SAM'),
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF',									'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_GUIDANCE_SYSTEMS_HIGH_DIFF',									'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'REQUIRES_PLAYER_EMPEROR_RH'),
		--
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'REQUIRES_PLAYER_EMPEROR_RH');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_PLAYER_DEITY_RH', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_PLAYER_EMPEROR_RH', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0);


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_DEITY_RH', 										'Handicap', 				'DIFFICULTY_DEITY'),		
		('REQUIRES_PLAYER_EMPEROR_RH', 										'Handicap', 				'DIFFICULTY_EMPEROR'),
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',						'TechnologyType',			'TECH_ADVANCED_BALLISTICS'),  -- pvs PLASTICS
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'TechnologyType',			'TECH_GUIDANCE_SYSTEMS');
	








-- 3

/*
INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_ROBOTICS_HIGH_DIFF'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_NUCLEAR_FUSION_HIGH_DIFF');
*/

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_FREE_AI_AIR_DEFENCE_ROBOTICS_HIGH_DIFF',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',		'RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF'),
		('RH_FREE_AI_AIR_DEFENCE_NUCLEAR_FUSION_HIGH_DIFF',							'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',	'RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_FREE_AI_AIR_DEFENCE_ROBOTICS_HIGH_DIFF',										'UnitType',					'UNIT_MOBILE_SAM'),
		('RH_FREE_AI_AIR_DEFENCE_ROBOTICS_HIGH_DIFF',										'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_ROBOTICS_HIGH_DIFF',										'AllowUniqueOverride',		0),
		('RH_FREE_AI_AIR_DEFENCE_NUCLEAR_FUSION_HIGH_DIFF',									'UnitType',					'UNIT_MOBILE_SAM'),
		('RH_FREE_AI_AIR_DEFENCE_NUCLEAR_FUSION_HIGH_DIFF',									'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_NUCLEAR_FUSION_HIGH_DIFF',									'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'RH_REQUIRES_HAS_TECH_ROBOTICS'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_HIGH_DIFF',							'REQUIRES_PLAYER_DEITY_RH'),
		--
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'RH_REQUIRES_HAS_TECH_NUCLEAR_FUSION'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_HIGH_DIFF',						'REQUIRES_PLAYER_DEITY_RH');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_ROBOTICS',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_NUCLEAR_FUSION',							'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('RH_REQUIRES_HAS_TECH_ROBOTICS',								'TechnologyType',			'TECH_ROBOTICS'),
		('RH_REQUIRES_HAS_TECH_NUCLEAR_FUSION',							'TechnologyType',			'TECH_NUCLEAR_FUSION');
	

INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_SATYAGRAHA',	'G_MERC'),
			('TRAIT_LEADER_SATYAGRAHA',	'G_ENLIGHTENMENT2'),
			('TRAIT_LEADER_SATYAGRAHA',	'G_ENLIGHTENMENT');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('G_MERC',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_MERCANTILISM_G'),
			('G_ENLIGHTENMENT2',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_THE_ENLIGHTENMENT_G2'),
			('G_ENLIGHTENMENT',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_THE_ENLIGHTENMENT_G');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('G_MERC',						'YieldType',							'YIELD_FAITH'),
			('G_MERC',						'Amount',									4),
			('G_ENLIGHTENMENT2',			'YieldType',		   					 'YIELD_PRODUCTION'),
			('G_ENLIGHTENMENT2',			'Amount',			  						  1),
			('G_ENLIGHTENMENT',				'YieldType',		    				'YIELD_PRODUCTION'),
			('G_ENLIGHTENMENT',				'LinearScaleFromDefaultHandicap',			    15);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('AI_GET_CIVIC_MERCANTILISM_G', 'REQUIREMENTSET_TEST_ALL'),
		('AI_GET_CIVIC_THE_ENLIGHTENMENT_G2', 'REQUIREMENTSET_TEST_ALL'),
		('AI_GET_CIVIC_THE_ENLIGHTENMENT_G', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('AI_GET_CIVIC_MERCANTILISM_G', 'REQUIRES_RH_HAS_CIVIC_MERCANTILISM_G'),
		('AI_GET_CIVIC_MERCANTILISM_G', 'REQUIRES_PLAYER_IS_AI'),
		
		('AI_GET_CIVIC_THE_ENLIGHTENMENT_G2', 'REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT_G2'),
		('AI_GET_CIVIC_THE_ENLIGHTENMENT_G2', 'REQUIRES_PLAYER_IS_AI'),
		
		('AI_GET_CIVIC_THE_ENLIGHTENMENT_G', 'REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT_G'),
		('AI_GET_CIVIC_THE_ENLIGHTENMENT_G', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_MERCANTILISM_G', 		'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT_G2', 'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT_G', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_MERCANTILISM_G',			'CivicType',	'CIVIC_DIVINE_RIGHT'),
		('REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT_G2',		'CivicType',	'CIVIC_EARLY_EMPIRE'),
		('REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT_G',		'TechnologyType',	'TECH_SCIENTIFIC_THEORY');

	
-- 4 
/*
INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_TECH_NANOTECHNOLOGY'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_AIR_DEFENCE_OFFWORLD_MISSION');
*/

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_FREE_AI_AIR_DEFENCE_TECH_NANOTECHNOLOGY',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'RH_AI_HAS_NANOTECHNOLOGY'),
		('RH_AI_AIR_DEFENCE_OFFWORLD_MISSION',							'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',	'RH_AI_HAS_OFFWORLD_MISSION');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_FREE_AI_AIR_DEFENCE_TECH_NANOTECHNOLOGY',										'UnitType',					'UNIT_MOBILE_SAM'),
		('RH_FREE_AI_AIR_DEFENCE_TECH_NANOTECHNOLOGY',										'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_TECH_NANOTECHNOLOGY',										'AllowUniqueOverride',		0),
		('RH_AI_AIR_DEFENCE_OFFWORLD_MISSION',									'UnitType',					'UNIT_MOBILE_SAM'),
		('RH_AI_AIR_DEFENCE_OFFWORLD_MISSION',									'Amount',					1),
		('RH_AI_AIR_DEFENCE_OFFWORLD_MISSION',									'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_NANOTECHNOLOGY',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_OFFWORLD_MISSION',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_NANOTECHNOLOGY',							'RH_REQUIRES_HAS_TECH_NANOTECHNOLOGY'),
		('RH_AI_HAS_NANOTECHNOLOGY',							'REQUIRES_PLAYER_IS_AI'),
		--
		('RH_AI_HAS_OFFWORLD_MISSION',						'RH_REQUIRES_HAS_TECH_OFFWORLD_MISSION'),
		('RH_AI_HAS_OFFWORLD_MISSION',						'REQUIRES_PLAYER_IS_AI');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_NANOTECHNOLOGY',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_OFFWORLD_MISSION',							'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('RH_REQUIRES_HAS_TECH_NANOTECHNOLOGY',								'TechnologyType',			'TECH_NANOTECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_OFFWORLD_MISSION',							'TechnologyType',			'TECH_OFFWORLD_MISSION');



-- RomanHoliday's Temp (but effective) until I can get the AI to actually build more than the occassional anti-air

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_PRINCE', 0.5);


INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_KING', 0.5);


-- Temp until I can get the AI to actually build more than the occassional anti-air
INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 4, 0, 1,  'DIFFICULTY_EMPEROR', 1);






-- Temp until I can get the AI to actually build more than the occassional anti-air
-- Deity

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 7, 0, 1,  'DIFFICULTY_DEITY', 1);


/*
INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ATOMIC', 1, 'DISTRICT_AERODROME', 4, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INFORMATION', 1, 'DISTRICT_AERODROME', 4, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ATOMIC', 1, 'DISTRICT_ENCAMPMENT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INFORMATION', 1, 'DISTRICT_ENCAMPMENT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);
*/


--INSERT INTO Building_YieldChanges (BuildingType, YieldType, YieldChange) VALUES
--('BUILDING_WALLS', 'YIELD_PRODUCTION', 1),
--('BUILDING_CASTLE', 'YIELD_PRODUCTION', 1),
--('BUILDING_STAR_FORT', 'YIELD_PRODUCTION', 1);


--UPDATE Buildings SET Production = 1 WHERE BuildingType = 'BUILDING_WALLS';
--UPDATE Buildings SET Production = 1 WHERE BuildingType = 'BUILDING_CASTLE';
--UPDATE Buildings SET Production = 1 WHERE BuildingType = 'BUILDING_STAR_FORT';

-- Support Units


/*
INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);



INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);
*/



-- 3 Very Delayed Builders on Deity at Military Engineering (Niter)/ Apprenticeship to make up for Deleted Warriors / Builders not Recieving Charges from Public Works Bug

INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT1_DEITY'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT3_DEITY'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT2_DEITY');
		

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_AI_IMPROVEMENT1_DEITY',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',		'RH_AI_HAS_APPRENTICESHIP_REQ_S_DEITY'),
		('RH_AI_IMPROVEMENT3_DEITY',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',		'RH_AI_HAS_INDUST_REQ_S_DEITY'),
		('RH_AI_IMPROVEMENT2_DEITY',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',			'RH_AI_HAS_MILT_ENGINEERING_REQ_S_DEITY');
		

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_AI_IMPROVEMENT1_DEITY',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT1_DEITY',								'Amount',					1),
		('RH_AI_IMPROVEMENT1_DEITY',								'AllowUniqueOverride',		0),
		
		('RH_AI_IMPROVEMENT3_DEITY',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT3_DEITY',								'Amount',					1),
		('RH_AI_IMPROVEMENT3_DEITY',								'AllowUniqueOverride',		0),
		
		('RH_AI_IMPROVEMENT2_DEITY',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT2_DEITY',								'Amount',					1),
		('RH_AI_IMPROVEMENT2_DEITY',								'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_APPRENTICESHIP_REQ_S_DEITY',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_INDUST_REQ_S_DEITY',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S_DEITY',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_APPRENTICESHIP_REQ_S_DEITY',							'RH_REQUIRES_HAS_TECH_APPRENTICESHIP'),
		('RH_AI_HAS_APPRENTICESHIP_REQ_S_DEITY',							'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_APPRENTICESHIP_REQ_S_DEITY',							'REQUIRES_PLAYER_DEITY_RH'),
		--
		
		('RH_AI_HAS_INDUST_REQ_S_DEITY',								'RH_REQUIRES_HAS_TECH_INDUST'),
		('RH_AI_HAS_INDUST_REQ_S_DEITY',								'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_INDUST_REQ_S_DEITY',								'REQUIRES_PLAYER_IMMORTAL_RH'),
		
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S_DEITY',						'RH_REQUIRES_HAS_TECH_MILT_ENGINEERING'),
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S_DEITY',						'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S_DEITY',						'REQUIRES_PLAYER_IMMORTAL_RH');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_APPRENTICESHIP',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_INDUST',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_MILT_ENGINEERING',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
('REQUIRES_PLAYER_IMMORTAL_RH', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_IMMORTAL_RH', 									'Handicap', 		'DIFFICULTY_IMMORTAL'),
		('RH_REQUIRES_HAS_TECH_APPRENTICESHIP',						'TechnologyType',			'TECH_APPRENTICESHIP'),
		('RH_REQUIRES_HAS_TECH_INDUST',								'TechnologyType',			'TECH_INDUSTRIALIZATION'),
		('RH_REQUIRES_HAS_TECH_MILT_ENGINEERING',					'TechnologyType',			'TECH_MILITARY_ENGINEERING');
	






UPDATE ModifierArguments SET Value =-9 WHERE ModifierId='AGENDA_DIFFERENT_GOVERNMENT' AND Name='InitialValue'; -- def -6

UPDATE ModifierArguments SET Value =-9 WHERE ModifierId='AGENDA_LOW_NUKE_LOVE' AND Name='InitialValue'; -- def -6

--UPDATE ModifierArguments SET Value = 6 WHERE ModifierId='AGENDA_MODIFIER_NOT_WARMONGER' AND Name='InitialValue'; -- def 5

UPDATE ModifierArguments SET Value =-18 WHERE ModifierId='AGENDA_MODIFIER_WARMONGER' AND Name='InitialValue'; -- def -8

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


