/* RHAI inspiration

-- Diety ++ no starting units

DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_WARRIOR' and AiOnly = 1;

DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_SCOUT' and AiOnly = 1;

DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_SLINGER' and AiOnly = 1;

DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_TRADER' and AiOnly = 1;

DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_BUILDER' and AiOnly = 1;




/*

REPLACE INTO TraitModifiers (TraitType, ModifierId)  VALUES
	--	('TRAIT_LEADER_MAJOR_CIV', 'AI_FOOD_ERA_RENAISSANCE'),
	--	('TRAIT_LEADER_MAJOR_CIV', 'AI_FOOD_ERA_INDUSTRIAL'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_FOOD_ERA_MODERN');

REPLACE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId)  VALUES
	--	('AI_FOOD_ERA_RENAISSANCE', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER','REQUIRES_AI_POPULATION_4'),
	--	('AI_FOOD_ERA_RENAISSANCE_MODIFIER', 'MODIFIER_BUILDING_YIELD_CHANGE', 'AI_NEED_CIVIC_GUILDS'),

	--	('AI_FOOD_ERA_INDUSTRIAL', 				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',	'REQUIRES_AI_POPULATION_7'),
	--	('AI_FOOD_ERA_INDUSTRIAL_MODIFIER',		 'MODIFIER_BUILDING_YIELD_CHANGE', 			'AI_NEED_CIVIC_URBANIZATION'),

		('AI_FOOD_ERA_MODERN', 					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',	'REQUIRES_AI_POPULATION_10'),
		('AI_FOOD_ERA_MODERN_MODIFIER', 		'MODIFIER_BUILDING_YIELD_CHANGE', 			'AI_NEED_CIVIC_COLD_WAR');


REPLACE INTO ModifierArguments  (ModifierId, Name, Value) VALUES
	--	('AI_FOOD_ERA_RENAISSANCE' , 'ModifierId' , 'AI_FOOD_ERA_RENAISSANCE_MODIFIER'),
	--	('AI_FOOD_ERA_RENAISSANCE_MODIFIER' , 'BuildingType' , 'BUILDING_GRANARY'),
	--	('AI_FOOD_ERA_RENAISSANCE_MODIFIER' , 'YieldType'    , 'YIELD_FOOD'),
	--	('AI_FOOD_ERA_RENAISSANCE_MODIFIER' , 'Amount'       , 1),
		
	--	('AI_FOOD_ERA_INDUSTRIAL' , 'ModifierId' , 	 'AI_FOOD_ERA_INDUSTRIAL_MODIFIER'),
	--	('AI_FOOD_ERA_INDUSTRIAL_MODIFIER' , 'BuildingType' , 'BUILDING_GRANARY'),
	--	('AI_FOOD_ERA_INDUSTRIAL_MODIFIER' , 'YieldType'    , 'YIELD_FOOD'),
	--	('AI_FOOD_ERA_INDUSTRIAL_MODIFIER' , 'Amount'       , 2),
		
		('AI_FOOD_ERA_MODERN' , 'ModifierId' , 	 'AI_FOOD_ERA_MODERN_MODIFIER'),
		('AI_FOOD_ERA_MODERN_MODIFIER' , 'BuildingType' , 'BUILDING_GRANARY'),
		('AI_FOOD_ERA_MODERN_MODIFIER' , 'YieldType'    , 'YIELD_FOOD'),
		('AI_FOOD_ERA_MODERN_MODIFIER' , 'Amount'       , 2);
		

REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
	--	('REQUIRES_AI_POPULATION_4',	'REQUIREMENTSET_TEST_ALL'),
	--	('AI_NEED_CIVIC_GUILDS',		'REQUIREMENTSET_TEST_ALL'),
	--	('REQUIRES_AI_POPULATION_7', 	'REQUIREMENTSET_TEST_ALL'),
	--	('AI_NEED_CIVIC_URBANIZATION', 	'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_POPULATION_10', 	'REQUIREMENTSET_TEST_ALL'),
		('AI_NEED_CIVIC_COLD_WAR', 		'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)  VALUES
--		('REQUIRES_AI_POPULATION_4',	'REQUIRES_CITY_HAS_LESS_POPULATION_4'),
	--	('REQUIRES_AI_POPULATION_4',	'REQUIRES_PLAYER_IS_AI'),
	--	('REQUIRES_AI_POPULATION_4',	'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS'),
	--	('AI_NEED_CIVIC_GUILDS',		'RH_AI_HAS_CIVIC_HIGH_DIFF_GUILDS'),
	--	('AI_NEED_CIVIC_GUILDS',		'REQUIRES_PLAYER_IS_AI'),
	--	('AI_NEED_CIVIC_GUILDS',		'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS'),

	--	('REQUIRES_AI_POPULATION_7',	'REQUIRES_CITY_HAS_LESS_POPULATION_7'),
	--	('REQUIRES_AI_POPULATION_7', 	'REQUIRES_PLAYER_IS_AI'),
	--	('REQUIRES_AI_POPULATION_7', 	'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS'),
	--	('AI_NEED_CIVIC_URBANIZATION',	'RH_AI_HAS_CIVIC_HIGH_DIFF_URBANIZATION'),
	--	('AI_NEED_CIVIC_URBANIZATION',	'REQUIRES_PLAYER_IS_AI'),
	--	('AI_NEED_CIVIC_URBANIZATION',	'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS'),
		
		('REQUIRES_AI_POPULATION_10', 	'REQUIRES_CITY_HAS_LESS_POPULATION_10'),
		('REQUIRES_AI_POPULATION_10', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_POPULATION_10', 	'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS'),
		('AI_NEED_CIVIC_COLD_WAR',		'RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR'),
		('AI_NEED_CIVIC_COLD_WAR',		'REQUIRES_PLAYER_IS_AI'),
		('AI_NEED_CIVIC_COLD_WAR',		'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS');


REPLACE INTO Requirements  (RequirementId, RequirementType, Inverse) VALUES
	--	('REQUIRES_CITY_HAS_LESS_POPULATION_4',	'REQUIREMENT_CITY_HAS_X_POPULATION', 1),
	--	('REQUIRES_CITY_HAS_LESS_POPULATION_7',	'REQUIREMENT_CITY_HAS_X_POPULATION', 1),
		('REQUIRES_CITY_HAS_LESS_POPULATION_10','REQUIREMENT_CITY_HAS_X_POPULATION', 1);
		

REPLACE INTO Requirements (RequirementId, RequirementType)  VALUES
		--('RH_AI_HAS_CIVIC_HIGH_DIFF_GUILDS', 											'REQUIREMENT_PLAYER_HAS_CIVIC'),
		--('RH_AI_HAS_CIVIC_HIGH_DIFF_GUILDS',											'REQUIRES_PLAYER_DEITY_PLUSPLUS'),
	--	('RH_AI_HAS_CIVIC_HIGH_DIFF_URBANIZATION', 									'REQUIREMENT_PLAYER_HAS_CIVIC'),
	--	('RH_AI_HAS_CIVIC_HIGH_DIFF_URBANIZATION',										'REQUIRES_PLAYER_DEITY_PLUSPLUS'),
		('RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR',									'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR',									'REQUIRES_PLAYER_DEITY_PLUSPLUS');
		
REPLACE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
	--	('REQUIRES_CITY_HAS_LESS_POPULATION_4',	'Amount', 5),
	--	('REQUIRES_CITY_HAS_LESS_POPULATION_7',	'Amount', 8),
		('REQUIRES_CITY_HAS_LESS_POPULATION_10','Amount', 12),
		
		
		--('RH_AI_HAS_CIVIC_HIGH_DIFF_GUILDS',			'CivicType', 'CIVIC_GUILDS'),
		--('RH_AI_HAS_CIVIC_HIGH_DIFF_URBANIZATION',		'CivicType', 'CIVIC_URBANIZATION'),
		('RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR',	'CivicType', 'CIVIC_COLD_WAR');
*/