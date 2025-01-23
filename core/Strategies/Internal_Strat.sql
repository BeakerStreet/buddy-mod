
-- RH Internal Strat
-- AUTHOR: ROMANHOLIDAY		
	
-- Gov move on		
		
/*
INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
			('GOVERNMENT_CHIEFDOM', 					'RH_GOV_MODIFIER_DIS_CLASSICAL_REPUBLIC'),
			('GOVERNMENT_CLASSICAL_REPUBLIC', 			'RH_GOV_MODIFIER_DIS_CLASSICAL_REPUBLIC'),
			('GOVERNMENT_OLIGARCHY', 					'RH_GOV_MODIFIER_DIS_OLIGARCHY'),
			('GOVERNMENT_AUTOCRACY', 					'RH_GOV_MODIFIER_DIS_AUTOCRACY');
		
INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
			('RH_GOV_MODIFIER_DIS_CLASSICAL_REPUBLIC',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_TIER_1_GOV_MOVE'),
			('RH_GOV_MODIFIER_DIS_OLIGARCHY',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',			'RH_AI_TIER_1_GOV_MOVE'),
			('RH_GOV_MODIFIER_DIS_AUTOCRACY',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',		'RH_AI_TIER_1_GOV_MOVE');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_GOV_MODIFIER_DIS_CLASSICAL_REPUBLIC',			'YieldType', 'YIELD_CULTURE'),
		('RH_GOV_MODIFIER_DIS_CLASSICAL_REPUBLIC',			'Amount'   , -900),
		('RH_GOV_MODIFIER_DIS_OLIGARCHY',					'YieldType', 'YIELD_CULTURE'),
		('RH_GOV_MODIFIER_DIS_OLIGARCHY',					'Amount'   , -900),	
		('RH_GOV_MODIFIER_DIS_AUTOCRACY',					'YieldType', 'YIELD_CULTURE'),
		('RH_GOV_MODIFIER_DIS_AUTOCRACY',					'Amount'   , -900);

		

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES	
		('RH_AI_TIER_1_GOV_MOVE', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_AI_TIER_1_GOV_MOVE', 'AI_MID_CIVIC'),
		('RH_AI_TIER_1_GOV_MOVE', 'REQUIRES_PLAYER_IS_AI');
	
INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
	('AI_MID_CIVIC', 'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES	
('AI_MID_CIVIC', 'CivicType', 'CIVIC_NATIONALISM');

*/
		
		
		
INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
		--	('TRAIT_LEADER_MAJOR_CIV',	'RH_CIVIC_PRODUCTION_PENALTY_MERC'),
			('TRAIT_LEADER_MAJOR_CIV',	'AI_SHRINE_MOD'),
			('TRAIT_LEADER_MAJOR_CIV',	'AI_TEMPLE_MOD');
			
		--	('TRAIT_LEADER_MAJOR_CIV',	'RH_CIVIC_PRODUCTION_PENALTY_ENL');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_CIVIC_PRODUCTION_PENALTY_MERC',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_MERCANTILISM'),
			('RH_CIVIC_PRODUCTION_PENALTY_ENL',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_THE_ENLIGHTENMENT');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('RH_CIVIC_PRODUCTION_PENALTY_MERC',			'YieldType',			'YIELD_GOLD'),
			('RH_CIVIC_PRODUCTION_PENALTY_MERC',			'Amount',				-1),
	--		('RH_CIVIC_FAITH_PENALTY_MED',					'YieldType',			'YIELD_FAITH'),
		--	('RH_CIVIC_FAITH_PENALTY_MED',					'Amount',				-1),
			('RH_CIVIC_PRODUCTION_PENALTY_ENL',				'YieldType',		    'YIELD_GOLD'),
			('RH_CIVIC_PRODUCTION_PENALTY_ENL',				'Amount',			    -1);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('AI_GET_CIVIC_MERCANTILISM', 'REQUIREMENTSET_TEST_ALL'),
		('AI_GET_CIVIC_MED', 			'REQUIREMENTSET_TEST_ALL'),
		('AI_GET_CIVIC_THE_ENLIGHTENMENT', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('AI_GET_CIVIC_MERCANTILISM', 'REQUIRES_RH_HAS_CIVIC_MERCANTILISM'),
		('AI_GET_CIVIC_MERCANTILISM', 'REQUIRES_PLAYER_IS_AI'),
		
		('AI_GET_CIVIC_MED', 			'REQUIRES_RH_HAS_CIVIC_MED'),
		('AI_GET_CIVIC_MED', 			'REQUIRES_PLAYER_IS_AI'),
		
		('AI_GET_CIVIC_THE_ENLIGHTENMENT', 'REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT'),
		('AI_GET_CIVIC_THE_ENLIGHTENMENT', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_MERCANTILISM', 		'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_MED', 				'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT', 'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_MERCANTILISM',			'CivicType',	'CIVIC_MERCANTILISM'),
		('REQUIRES_RH_HAS_CIVIC_MED',					'CivicType',	'CIVIC_CIVIL_SERVICE'),
		('REQUIRES_RH_HAS_CIVIC_THE_ENLIGHTENMENT',		'CivicType',	'CIVIC_THE_ENLIGHTENMENT');
	
		
		
INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_CIVIC_PRODUCTION_PENALTY_CW'),
			('TRAIT_LEADER_MAJOR_CIV',	'RH_CIVIC_PRODUCTION_PENALTY_PS');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_CIVIC_PRODUCTION_PENALTY_CW',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'RH_GET_CIVIC_CW'),
			('RH_CIVIC_PRODUCTION_PENALTY_PS',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'RH_GET_CIVIC_PS');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('RH_CIVIC_PRODUCTION_PENALTY_CW',				'YieldType',				'YIELD_GOLD'),
			('RH_CIVIC_PRODUCTION_PENALTY_CW',				'Amount',					-3),
			('RH_CIVIC_PRODUCTION_PENALTY_PS',				'YieldType',		        'YIELD_GOLD'),
			('RH_CIVIC_PRODUCTION_PENALTY_PS',				'Amount',			        -1);






INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_GET_CIVIC_CW', 'REQUIREMENTSET_TEST_ALL'),
		('RH_GET_CIVIC_PS', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_GET_CIVIC_CW', 'REQUIRES_RH_HAS_CIVIC_CW'),
		('RH_GET_CIVIC_CW', 'REQUIRES_PLAYER_IS_AI'),
		('RH_GET_CIVIC_CW', 'RH_ENABLE'),

		('RH_GET_CIVIC_PS', 'REQUIRES_RH_HAS_CIVIC_PS'),
		('RH_GET_CIVIC_PS', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_CW', 		'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_PS', 		'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_CW',			'CivicType',	'CIVIC_FUTURE_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_PS',		'CivicType',	'CIVIC_PROFESSIONAL_SPORTS');	
		


			
INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('AI_GET_CIVIC_TT', 'REQUIREMENTSET_TEST_ALL'),
		('AI_GET_CIVIC_CS', 'REQUIREMENTSET_TEST_ALL'),
		('RH_GET_CIVIC_CL', 'REQUIREMENTSET_TEST_ALL'),
		('AI_GET_CIVIC_SF', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('AI_GET_CIVIC_TT', 'REQUIRES_RH_HAS_CIVIC_TT'),
		('AI_GET_CIVIC_TT', 'REQUIRES_PLAYER_IS_AI'),
		
		('AI_GET_CIVIC_CS', 'REQUIRES_RH_HAS_CIVIC_CS'),
		('AI_GET_CIVIC_CS', 'REQUIRES_PLAYER_IS_AI'),
		
		('RH_GET_CIVIC_CL', 'REQUIRES_RH_HAS_CIVIC_CL'),
		('RH_GET_CIVIC_CL', 'REQUIRES_PLAYER_IS_AI'),
		('RH_GET_CIVIC_CL', 'RH_ENABLE'),
		
		('AI_GET_CIVIC_SF', 'REQUIRES_RH_HAS_CIVIC_SF'),
		('AI_GET_CIVIC_SF', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_TT', 		'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_CS', 		'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_CL', 		'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_SF', 		'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_TT',			'CivicType',	'CIVIC_TOTALITARIANISM'),
		('REQUIRES_RH_HAS_CIVIC_CS',			'CivicType',	'CIVIC_CLASS_STRUGGLE'),
		('REQUIRES_RH_HAS_CIVIC_CL',			'CivicType',	'CIVIC_FUTURE_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_SF',			'CivicType',	'CIVIC_SUFFRAGE');	

INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_AGGRESSIVE_MILITARY',	'RH_CIVIC_ENC_TT'),
			('TRAIT_LEADER_SCIENCE_MAJOR_CIV',		'RH_CIVIC_ENC_CS'),
			('TRAIT_LEADER_SCIENCE_MAJOR_CIV',		'RH_CIVIC_ENC_CL'),
			('TRAIT_LEADER_CULTURAL_MAJOR_CIV',		'RH_CIVIC_ENC_SF');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_CIVIC_ENC_TT',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_TT'),
			
			('RH_CIVIC_ENC_CS',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_CS'),
			('RH_CIVIC_ENC_CL',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'RH_GET_CIVIC_CL'),
			('RH_CIVIC_ENC_SF',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_SF');


INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('RH_CIVIC_ENC_TT',				'YieldType',				'YIELD_GOLD'),
			('RH_CIVIC_ENC_TT',				'Amount',					3),
			('RH_CIVIC_ENC_CS',				'YieldType',		        'YIELD_GOLD'),
			('RH_CIVIC_ENC_CS',				'Amount',			        3),
			('RH_CIVIC_ENC_CL',				'YieldType',		        'YIELD_GOLD'),
			('RH_CIVIC_ENC_CL',				'Amount',			        -4),
			('RH_CIVIC_ENC_SF',				'YieldType',		        'YIELD_GOLD'),
			('RH_CIVIC_ENC_SF',				'Amount',			        3);
		
		
-- Requirements Continued

INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('RH_AI_HIGH_WONDERS', 'REQUIREMENT_PLAYER_BUILT_WONDER');


-- High Faith Adj

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_SACRED_PLACES_PUSH', 'REQUIREMENTSET_TEST_ALL'),
		('RH_WORK_ETHIC_PUSH_REQ_S_2', 'REQUIREMENTSET_TEST_ALL'),
		('RH_WORK_ETHIC_PUSH_REQ_S_5', 'REQUIREMENTSET_TEST_ALL'),
		('RH_WORK_ETHIC_PUSH_REQ_S_7', 'REQUIREMENTSET_TEST_ALL'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_2', 'REQUIREMENTSET_TEST_ALL'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_4', 'REQUIREMENTSET_TEST_ALL'),
		('RH_CRAFTSMEN_PUSH_REQ_S_3', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
	--	('RH_WORK_ETHIC_PUSH_REQ_S_2', 'AI_NO_CIVIL_SERVICE'),
		('RH_WORK_ETHIC_PUSH_REQ_S_2', 'RH_AT_ANCIENT_ERA'),
		('RH_WORK_ETHIC_PUSH_REQ_S_2', 'RH_NOT_MEDIEVAL_ERA'),
		('RH_WORK_ETHIC_PUSH_REQ_S_2', 'RH_AI_HIGH_FAITH_ADJ_2'),
		('RH_WORK_ETHIC_PUSH_REQ_S_2', 'REQUIRES_PLAYER_IS_AI');
	
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
	--	('RH_WORK_ETHIC_PUSH_REQ_S_5', 'AI_NO_CIVIL_SERVICE'),
		('RH_WORK_ETHIC_PUSH_REQ_S_5', 'RH_AT_ANCIENT_ERA'),
		('RH_WORK_ETHIC_PUSH_REQ_S_5', 'RH_NOT_MEDIEVAL_ERA'),
		('RH_WORK_ETHIC_PUSH_REQ_S_5', 'RH_AI_HIGH_FAITH_ADJ_5'),
		('RH_WORK_ETHIC_PUSH_REQ_S_5', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
	--	('RH_WORK_ETHIC_PUSH_REQ_S_7', 'AI_NO_CIVIL_SERVICE'),
		('RH_WORK_ETHIC_PUSH_REQ_S_7', 'RH_AT_ANCIENT_ERA'),
		('RH_WORK_ETHIC_PUSH_REQ_S_7', 'RH_NOT_MEDIEVAL_ERA'),
		('RH_WORK_ETHIC_PUSH_REQ_S_7', 'RH_AI_HIGH_FAITH_ADJ_7'),
		('RH_WORK_ETHIC_PUSH_REQ_S_7', 'REQUIRES_PLAYER_IS_AI');		
		
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_NATURAL_PHILO_PUSH_REQ_S_2', 'RH_AT_ANCIENT_ERA'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_2', 'RH_NOT_MEDIEVAL_ERA'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_2', 'RH_AI_HIGH_SCI_ADJ_2'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_2', 'REQUIRES_PLAYER_IS_AI');


INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_NATURAL_PHILO_PUSH_REQ_S_4', 'RH_AT_ANCIENT_ERA'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_4', 'RH_NOT_MEDIEVAL_ERA'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_4', 'RH_AI_HIGH_SCI_ADJ_4'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_4', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_CRAFTSMEN_PUSH_REQ_S_3', 'RH_AT_ANCIENT_ERA'),
		('RH_CRAFTSMEN_PUSH_REQ_S_3', 'RH_NOT_MEDIEVAL_ERA'),
		('RH_CRAFTSMEN_PUSH_REQ_S_3', 'RH_AI_HIGH_PRD_ADJ_3'),
		('RH_CRAFTSMEN_PUSH_REQ_S_3', 'REQUIRES_PLAYER_IS_AI');


INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_SACRED_PLACES_PUSH', 'RH_AT_ANCIENT_ERA'),
		('RH_SACRED_PLACES_PUSH', 'RH_NOT_MEDIEVAL_ERA'),
		('RH_SACRED_PLACES_PUSH', 'RH_AI_HIGH_WONDERS'),
		('RH_SACRED_PLACES_PUSH', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('RH_AI_HIGH_FAITH_ADJ_2', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_FAITH_ADJ_5', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_FAITH_ADJ_7', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_SCI_ADJ_2', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_SCI_ADJ_4', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_PRD_ADJ_3', 	'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');
		

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_FAITH_ADJ_2', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('RH_AI_HIGH_FAITH_ADJ_2', 'YieldType', 'YIELD_FAITH'),
('RH_AI_HIGH_FAITH_ADJ_2', 'Amount', '2');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_FAITH_ADJ_5', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('RH_AI_HIGH_FAITH_ADJ_5', 'YieldType', 'YIELD_FAITH'),
('RH_AI_HIGH_FAITH_ADJ_5', 'Amount', '5');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_FAITH_ADJ_7', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('RH_AI_HIGH_FAITH_ADJ_7', 'YieldType', 'YIELD_FAITH'),
('RH_AI_HIGH_FAITH_ADJ_7', 'Amount', '7');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_SCI_ADJ_2', 'DistrictType', 'DISTRICT_CAMPUS'),
('RH_AI_HIGH_SCI_ADJ_2', 'YieldType', 'YIELD_SCIENCE'),
('RH_AI_HIGH_SCI_ADJ_2', 'Amount', '2');


INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_SCI_ADJ_4', 'DistrictType', 'DISTRICT_CAMPUS'),
('RH_AI_HIGH_SCI_ADJ_4', 'YieldType', 'YIELD_SCIENCE'),
('RH_AI_HIGH_SCI_ADJ_4', 'Amount', '3');


INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_PRD_ADJ_3', 'DistrictType', 'DISTRICT_INDUSTRIAL_ZONE'),
('RH_AI_HIGH_PRD_ADJ_3', 'YieldType', 'YIELD_PRODUCTION'),
('RH_AI_HIGH_PRD_ADJ_3', 'Amount', '3');




-- Tier 2 Gov Test

INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
			('GOVERNMENT_OLIGARCHY', 			'RH_GOV_MODIFIER_OLIGARCHY'),
			('GOVERNMENT_MERCHANT_REPUBLIC', 	'RH_GOV_MODIFIER_MERCHANT'),
			('GOVERNMENT_THEOCRACY', 			'RH_GOV_MODIFIER_THEOCRACY'),
			('GOVERNMENT_DIGITAL_DEMOCRACY', 	'RH_GOV_MODIFIER_DIGITAL_DEMOCRACY'),
			('GOVERNMENT_DEMOCRACY', 			'RH_GOV_MODIFIER_DEMOCRACY'),
			('GOVERNMENT_COMMUNISM', 			'RH_GOV_MODIFIER_COMMUNISM'),
			('GOVERNMENT_SYNTHETIC_TECHNOCRACY', 	'RH_GOV_MODIFIER_SYNTHETIC_TECHNOCRACY'),
			('GOVERNMENT_CORPORATE_LIBERTARIANISM', 	'RH_GOV_MODIFIER_DIGITAL_DEMOCRACY'),
			('GOVERNMENT_FASCISM', 				'RH_GOV_MODIFIER_FASCISM');
		

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
			('RH_GOV_MODIFIER_MERCHANT',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL'),
			('RH_GOV_MODIFIER_THEOCRACY',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL'),
			('RH_GOV_MODIFIER_DEMOCRACY',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL'),
			('RH_GOV_MODIFIER_DIGITAL_DEMOCRACY',				'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_GET_CIVIC_CL'),
			('RH_GOV_MODIFIER_COMMUNISM',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_NATURAL_PHILO_PUSH_REQ_S_4'),
			('RH_GOV_MODIFIER_SYNTHETIC_TECHNOCRACY',				'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_NATURAL_PHILO_PUSH_REQ_S_2'),
			('RH_GOV_MODIFIER_FASCISM',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL'),
			('RH_GOV_MODIFIER_OLIGARCHY',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_GOV_MODIFIER_MERCHANT',					'YieldType', 'YIELD_GOLD'),
		('RH_GOV_MODIFIER_MERCHANT',					'Amount'   , 19),
		('RH_GOV_MODIFIER_THEOCRACY',					'YieldType', 'YIELD_FAITH'),
		('RH_GOV_MODIFIER_THEOCRACY',					'Amount'   , 15),	
	--	('RH_GOV_MODIFIER_DIGITAL_DEMOCRACY',			'YieldType', 'YIELD_GOLD'),
		('RH_GOV_MODIFIER_DIGITAL_DEMOCRACY',			'Amount'   , 3),
		('RH_GOV_MODIFIER_DEMOCRACY',					'YieldType', 'YIELD_CULTURE'),
		('RH_GOV_MODIFIER_DEMOCRACY',					'Amount'   , 9),
		('RH_GOV_MODIFIER_COMMUNISM',					'YieldType', 'YIELD_SCIENCE'),
		('RH_GOV_MODIFIER_COMMUNISM',					'Amount'   , 19),
	--	('RH_GOV_MODIFIER_SYNTHETIC_TECHNOCRACY',		'YieldType', 'YIELD_SCIENCE'),
		('RH_GOV_MODIFIER_SYNTHETIC_TECHNOCRACY',		'Amount'   , 7),
		('RH_GOV_MODIFIER_FASCISM',						'YieldType', 'YIELD_PRODUCTION'),
		('RH_GOV_MODIFIER_FASCISM',						'Amount'   , 10),	-- At 4 is not chosen, pvs 11	
		('RH_GOV_MODIFIER_OLIGARCHY',					'YieldType', 'YIELD_PRODUCTION'),
		('RH_GOV_MODIFIER_OLIGARCHY',					'Amount'   , 1);		
		

-- RH Pantheon Temp Bugfix		
INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
			('GOVERNMENT_CLASSICAL_REPUBLIC', 			'RH_GOV_F'),
			('GOVERNMENT_OLIGARCHY', 					'RH_GOV_F');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
			('RH_GOV_F',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'PLAYER_IS_AI');
			
INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_GOV_F',					'YieldType', 'YIELD_FAITH'),
		('RH_GOV_F',					'Amount'   , 1);			
			

-- Test

INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
			('BELIEF_DEFENDER_OF_FAITH',	'AI_BEL_BOOST'),
			('BELIEF_HOLY_ORDER',			'AI_BEL_BOOST_Small'),
			('BELIEF_JUST_WAR',				'AI_BEL_BOOST_2'),
			('BELIEF_JUST_WAR',				'AI_BEL_BOOST_3'),
		--	('BELIEF_SACRED_PLACES',		'AI_BEL_BOOST_Small_Wonders'),
			
			('BELIEF_STUPA',			'AI_BEL_BOOST_V_Small'),
			('BELIEF_PAGODA',			'AI_BEL_BOOST_V_Small'),
			('BELIEF_MOSQUE',			'AI_BEL_BOOST_V_Small'),
			
	--		('BELIEF_WORLD_CHURCH',							'AI_BEL_BOOST_C'),	
			
	--		('BELIEF_WARRIOR_MONKS',		'AI_BEL_DIS'),
			
			('BELIEF_WORK_ETHIC',			'AI_WORK_ETHIC_FAITH_MODIFIER');


INSERT OR IGNORE INTO BeliefModifiers (BeliefType,			ModifierId)
SELECT 'BELIEF_CROSS_CULTURAL_DIALOGUE', 'AI_BEL_BOOST_S'
WHERE EXISTS (SELECT * FROM Beliefs WHERE BeliefType = 'BELIEF_CROSS_CULTURAL_DIALOGUE');

INSERT OR IGNORE INTO BeliefModifiers (BeliefType,			ModifierId)
SELECT 'BELIEF_WORLD_CHURCH', 'AI_BEL_BOOST_C'
WHERE EXISTS (SELECT * FROM Beliefs WHERE BeliefType = 'BELIEF_WORLD_CHURCH');




INSERT OR IGNORE INTO Modifiers    (ModifierId,			ModifierType,							SubjectRequirementSetId) VALUES 		
	--		('AI_SHRINE_FAITH',	'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',	'CITY_FOLLOWS_RELIGION_HAS_SHRINE'),
	--		('AI_TEMPLE_FAITH',	'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',	'CITY_FOLLOWS_RELIGION_HAS_TEMPLE'),
	
			('AI_SHRINE_MOD',	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 	'PLAYER_IS_AI'),
			
			('AI_SHRINE_FAITH_PENALTY',	'MODIFIER_BUILDING_YIELD_CHANGE', 	'AI_GET_CIVIC_MED'),
			
			('AI_TEMPLE_MOD',	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 	'PLAYER_IS_AI'),
			('AI_TEMPLE_FAITH_PENALTY',	'MODIFIER_BUILDING_YIELD_CHANGE', 	'AI_GET_CIVIC_MED'),
			
			('AI_BEL_BOOST',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'PLAYER_IS_AI'),
			('AI_BEL_BOOST_Small',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'PLAYER_IS_AI'),
			('AI_BEL_BOOST_V_Small',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'PLAYER_IS_AI'),
			
			('AI_BEL_BOOST_Small_Wonders',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'RH_SACRED_PLACES_PUSH'),
			
			('AI_BEL_BOOST_2',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'PLAYER_IS_AI'),
			('AI_BEL_BOOST_3',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'RH_WORK_ETHIC_PUSH'),
			
			('AI_BEL_BOOST_S',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'PLAYER_IS_AI'),
			('AI_BEL_BOOST_C',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'PLAYER_IS_AI'),
			('AI_BEL_DIS',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'PLAYER_IS_AI'),
			('AI_WORK_ETHIC_FAITH_MODIFIER',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'RH_WORK_ETHIC_PUSH');
			
		--	('AI_WORK_ETHIC_SHRINE_PRODUCTION_MODIFIER',	'MODIFIER_BUILDING_YIELD_CHANGE', 	'HOLY_SITE_HAS_HIGH_ADJACENCY'),
		--	('AI_WORK_ETHIC_TEMPLE_PRODUCTION_MODIFIER',	'MODIFIER_BUILDING_YIELD_CHANGE', 	'HOLY_SITE_HAS_HIGH_ADJACENCY');
	
INSERT OR IGNORE INTO ModifierArguments      (ModifierId, 		Name, 					Value)  VALUES 		
		
		('AI_SHRINE_MOD', 	'ModifierId' , 'AI_SHRINE_FAITH_PENALTY'),
		('AI_SHRINE_FAITH_PENALTY', 'BuildingType' , 'BUILDING_SHRINE'),
		('AI_SHRINE_FAITH_PENALTY', 'YieldType'    , 'YIELD_FAITH'),
		('AI_SHRINE_FAITH_PENALTY', 'Amount'       , -1),
			
		('AI_TEMPLE_MOD', 	'ModifierId' , 'AI_TEMPLE_FAITH_PENALTY'),
		('AI_TEMPLE_FAITH_PENALTY', 'BuildingType' , 'BUILDING_TEMPLE'),
		('AI_TEMPLE_FAITH_PENALTY', 'YieldType'    , 'YIELD_FAITH'),
		('AI_TEMPLE_FAITH_PENALTY', 'Amount'       , -1);

INSERT OR IGNORE INTO ModifierArguments      (ModifierId, 		Name, 					Value)  VALUES 	

		('AI_BEL_BOOST',					'YieldType', 'YIELD_FAITH'),
		('AI_BEL_BOOST',					'Amount'   , 3),
	
		('AI_BEL_BOOST_Small',				'YieldType', 'YIELD_FAITH'),
		('AI_BEL_BOOST_Small',				'Amount'   , 3),
		
		('AI_BEL_BOOST_V_Small',			'YieldType', 'YIELD_FAITH'), -- 1,2 too low
		('AI_BEL_BOOST_V_Small',			'Amount'   , 4),
	
		('AI_BEL_BOOST_Small_Wonders',		'YieldType', 'YIELD_GOLD'),
		('AI_BEL_BOOST_Small_Wonders',		'Amount'   , 1),
	
		('AI_BEL_BOOST_2',					'YieldType', 'YIELD_FAITH'),
		('AI_BEL_BOOST_2',					'Amount'   , 7),
		
		('AI_BEL_BOOST_3',					'YieldType', 'YIELD_GOLD'),
		('AI_BEL_BOOST_3',					'Amount'   , 10), -- pvs 6, 11
	
		('AI_BEL_BOOST_C',					'YieldType', 'YIELD_CULTURE'),
		('AI_BEL_BOOST_C',					'Amount'   , 1),
	
		('AI_BEL_BOOST_S',					'YieldType', 'YIELD_SCIENCE'),
		('AI_BEL_BOOST_S',					'Amount'   , 1),
	
		('AI_BEL_DIS',						'YieldType', 'YIELD_FAITH'),
		('AI_BEL_DIS',						'Amount'   , -900),
	
		('AI_WORK_ETHIC_FAITH_MODIFIER',	'YieldType', 'YIELD_FAITH'),
		('AI_WORK_ETHIC_FAITH_MODIFIER',	'Amount'   , 6);


--INSERT OR IGNORE INTO ModifierArguments      (ModifierId, 		Name, 					Value)  VALUES 
	--		('AI_WORK_ETHIC_TEMPLE_PRODUCTION', 		'ModifierId'   , 'AI_WORK_ETHIC_TEMPLE_PRODUCTION_MODIFIER'),
	
	--		('AI_WORK_ETHIC_TEMPLE_PRODUCTION_MODIFIER' , 'BuildingType' , 'BUILDING_TEMPLE'),
	--		('AI_WORK_ETHIC_TEMPLE_PRODUCTION_MODIFIER' , 'YieldType'    , 'YIELD_PRODUCTION'),
	--		('AI_WORK_ETHIC_TEMPLE_PRODUCTION_MODIFIER' , 'Amount'       , 10);
			
			
	--		('AI_WORK_ETHIC_TEMPLE_PRODUCTION_MODIFIER' , 'YieldType'    , 'YIELD_PRODUCTION'),
	--		('AI_WORK_ETHIC_TEMPLE_PRODUCTION_MODIFIER' , 'Amount'       , 2);
			
	
/*

		
		<Row>
			<ModifierId>TRAIT_CAPTURED_LOYALTY</ModifierId>
			<ModifierType>MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN</ModifierType>
			<SubjectRequirementSetId>CITY_NOT_FOUNDED</SubjectRequirementSetId>
		</Row>
		<Row>
			<ModifierId>TRAIT_CAPTURED_AMENITY</ModifierId>
			<ModifierType>MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY</ModifierType>
			<SubjectRequirementSetId>CITY_NOT_FOUNDED</SubjectRequirementSetId>
		</Row>
		<Row>
		
*/


/*
		<Row>
			<RequirementSetId>PLAYER_LEADS_WONDERS</RequirementSetId>
			<RequirementId>REQUIRES_MAJOR_CIV_OPPONENT</RequirementId>
		</Row>
		<Row>
			<RequirementSetId>PLAYER_LEADS_WONDERS</RequirementSetId>
			<RequirementId>REQUIRES_MET_10_TURNS_AGO</RequirementId>
		</Row>
		<Row>
			<RequirementSetId>PLAYER_LEADS_WONDERS</RequirementSetId>
			<RequirementId>REQUIRES_LEADS_WONDERS</RequirementId>
		</Row>
*/


-- Sacred Places

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_SACRED_PLACES_PUSH', 'REQUIREMENTSET_TEST_ALL'),
		('RH_WORK_ETHIC_PUSH', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
	--	('RH_WORK_ETHIC_PUSH', 'AI_NO_CIVIL_SERVICE'),
		('RH_WORK_ETHIC_PUSH', 'RH_AI_HIGH_FAITH_ADJ'),
		('RH_WORK_ETHIC_PUSH', 'REQUIRES_PLAYER_IS_AI');
	
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_SACRED_PLACES_PUSH', 'RH_AI_HIGH_WONDERS'),
		('RH_SACRED_PLACES_PUSH', 'REQUIRES_PLAYER_IS_AI');


--INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType, Inverse)  VALUES	
	--	('AI_NO_CIVIL_SERVICE', 'REQUIREMENT_PLAYER_HAS_CIVIC', 1);

INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('RH_AI_HIGH_FAITH_ADJ', 'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');

INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('RH_AI_HIGH_WONDERS', 'REQUIREMENT_PLAYER_BUILT_WONDER');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	

('RH_AI_HIGH_FAITH_ADJ', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('RH_AI_HIGH_FAITH_ADJ', 'YieldType', 'YIELD_FAITH'),
('RH_AI_HIGH_FAITH_ADJ', 'Amount', '2');

--('AI_NO_CIVIL_SERVICE', 'CivicType', 'CIVIC_CIVIL_SERVICE');


INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_TERRESTRIAL_LASER',	'RH_SNCV_FINISH'),
		('PROJECT_ORBITAL_LASER',		'RH_SNCV_FINISH');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_SNCV_FINISH',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN', 'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_SNCV_FINISH',				'Amount',					18);


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AncientPseudoYields', 		'PSEUDOYIELD_RESOURCE_LUXURY',   0, -85),
('ClassicalPseudoYields', 		'PSEUDOYIELD_RESOURCE_LUXURY',   1, -70),
('MedievalPseudoYields', 		'PSEUDOYIELD_RESOURCE_LUXURY',   1, -60),
('RenaissancePseudoYields', 	'PSEUDOYIELD_RESOURCE_LUXURY',   1, -45),
('IndustrialPseudoYields', 		'PSEUDOYIELD_RESOURCE_LUXURY',   1, -25),

('ModernPseudoYields', 			'PSEUDOYIELD_RESOURCE_LUXURY',   1, 5),
('AtomicPseudoYields', 			'PSEUDOYIELD_RESOURCE_LUXURY',   1, 10),
('InformationPseudoYields', 	'PSEUDOYIELD_RESOURCE_LUXURY',   1, 15);



INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_EARLY_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_EARLY_RH',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_EARLY_RH',	'Amount'       , 2);

/*
		<Row>
			<ModifierId>SIMULTANEUM_BUILDING_YIELDS_HIGH_ADJACENCY</ModifierId>
			<ModifierType>MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT</ModifierType>
			<SubjectRequirementSetId>HOLY_SITE_HAS_HIGH_ADJACENCY</SubjectRequirementSetId>
		</Row>
		
		<Row>
			<RequirementSetId>HOLY_SITE_HAS_HIGH_ADJACENCY</RequirementSetId>
			<RequirementSetType>REQUIREMENTSET_TEST_ALL</RequirementSetType>
		</Row>
		
		<Row>
			<RequirementSetId>HOLY_SITE_HAS_HIGH_ADJACENCY</RequirementSetId>
			<RequirementId>REQUIRES_HOLY_SITE_HAS_HIGH_ADJACENCY</RequirementId>
		</Row>
		
		<Row>
			<RequirementId>REQUIRES_HOLY_SITE_HAS_HIGH_ADJACENCY</RequirementId>
			<RequirementType>REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT</RequirementType>
		</Row>
		
		<Row>
			<RequirementId>REQUIRES_HOLY_SITE_HAS_HIGH_ADJACENCY</RequirementId>
			<Name>DistrictType</Name>
			<Value>DISTRICT_HOLY_SITE</Value>
		</Row>
		<Row>
			<RequirementId>REQUIRES_HOLY_SITE_HAS_HIGH_ADJACENCY</RequirementId>
			<Name>YieldType</Name>
			<Value>YIELD_FAITH</Value>
		</Row>
		<Row>
			<RequirementId>REQUIRES_HOLY_SITE_HAS_HIGH_ADJACENCY</RequirementId>
			<Name>Amount</Name>
			<Value>4</Value>
		</Row>
		
*/


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_COLONIZATION',      		  				'ENC_POLICY_EARLY_RH'); -- 50% production towards settlers

--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_TWILIGHT_VALOR',      		  		 		'ENC_POLICY_EARLY_RH'); -- 5 Strength but can't heal outside territory (dark age)


INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_EARLY_RH_2',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_EARLY_RH_2',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_EARLY_RH_2',	'Amount'       , 2);

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_LIMES',      		  						'ENC_POLICY_EARLY_RH_2'), -- 100% walls
		('POLICY_AGOGE',      		  					    'ENC_POLICY_EARLY_RH_2'), --50% production towards ranged and melee
		('POLICY_FEUDAL_CONTRACT',      		  		 	'ENC_POLICY_EARLY_RH_2'), --50% production towards ranged and melee (medieval / renaissance)
		('POLICY_GRANDE_ARMEE',      		  		 		'ENC_POLICY_EARLY_RH_2'); -- 50% production towards ranged and melee (industrial)

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_VETERANCY',      		  							'ENC_POLICY_EARLY_RH'), --30% production harbors and encampment (+buildings )
		('POLICY_MARITIME_INDUSTRIES',      		  				'ENC_POLICY_EARLY_SMALL_RH'); -- 100% production towards ancient / classical boats

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_EARLY_SMALL_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_EARLY_SMALL_RH',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_EARLY_SMALL_RH',	'Amount'       , 1);


/*
INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_SACRED_PLACES_PUSH', 'REQUIREMENTSET_TEST_ALL'),
		('RH_WORK_ETHIC_PUSH_REQ_S_2', 'REQUIREMENTSET_TEST_ALL'),
		('RH_WORK_ETHIC_PUSH_REQ_S_5', 'REQUIREMENTSET_TEST_ALL'),
		('RH_WORK_ETHIC_PUSH_REQ_S_7', 'REQUIREMENTSET_TEST_ALL'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_2', 'REQUIREMENTSET_TEST_ALL'),
		('RH_NATURAL_PHILO_PUSH_REQ_S_4', 'REQUIREMENTSET_TEST_ALL'),
		('RH_CRAFTSMEN_PUSH_REQ_S_3', 'REQUIREMENTSET_TEST_ALL');
*/


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_NATURAL_PHILOSOPHY',      		  			'ENC_POLICY_EARLY_S_RH'); -- 100% campus adj

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_EARLY_S_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_NATURAL_PHILO_PUSH_REQ_S_2');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_EARLY_S_RH',	'YieldType'    , 'YIELD_SCIENCE'),
		('ENC_POLICY_EARLY_S_RH',	'Amount'       , 1);


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_NATURAL_PHILOSOPHY',      		  			'ENC_POLICY_ENC_HIGH_SCIENCE_ADJ'); -- 100% campus adj

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_ENC_HIGH_SCIENCE_ADJ',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_NATURAL_PHILO_PUSH_REQ_S_4');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_ENC_HIGH_SCIENCE_ADJ',	'YieldType'    , 'YIELD_SCIENCE'),
		('ENC_POLICY_ENC_HIGH_SCIENCE_ADJ',	'Amount'       , 4); -- pvs 2


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_CRAFTSMEN',      		  			'ENC_POLICY_ENC_HIGH_PRODUCTION_ADJ'); -- 100% ind adj

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_ENC_HIGH_PRODUCTION_ADJ',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_CRAFTSMEN_PUSH_REQ_S_3');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_ENC_HIGH_PRODUCTION_ADJ',	'YieldType'    , 'YIELD_PRODUCTION'),
		('ENC_POLICY_ENC_HIGH_PRODUCTION_ADJ',	'Amount'       , 8); -- pvs 2, 5,  7




INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_FUTURE_COUNTER_CULTURE', 	 			 'ENC_POLICY_LATE_S_RH'); -- Music Censorship

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_LATE_S_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_LATE_S_RH',	'YieldType'    , 'YIELD_SCIENCE'),
		('ENC_POLICY_LATE_S_RH',	'Amount'       , 2);




INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_SCRIPTURE',      		  					'ENC_POLICY_EARLY_R_RH'); -- 100% Holy Site adj

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_EARLY_R_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_WORK_ETHIC_PUSH');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_EARLY_R_RH',	'YieldType'    , 'YIELD_FAITH'),
		('ENC_POLICY_EARLY_R_RH',	'Amount'       , 4);

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_SCRIPTURE',      		  					'ENC_POLICY_R_HIGH_ADJ_RH_5'); -- 100% Holy Site adj 5

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_R_HIGH_ADJ_RH_5',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_WORK_ETHIC_PUSH_REQ_S_5');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_R_HIGH_ADJ_RH_5',	'YieldType'    , 'YIELD_FAITH'),
		('ENC_POLICY_R_HIGH_ADJ_RH_5',	'Amount'       , 12);  


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_SCRIPTURE',      		  					'ENC_POLICY_R_HIGH_ADJ_RH_7'); -- 100% Holy Site adj 7

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_R_HIGH_ADJ_RH_7',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_WORK_ETHIC_PUSH_REQ_S_7');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_R_HIGH_ADJ_RH_7',	'YieldType'    , 'YIELD_FAITH'),
		('ENC_POLICY_R_HIGH_ADJ_RH_7',	'Amount'       , 15);  




/*
('POLICY_GOV_AUTOCRACY', 'POLICY_GOV_THEOCRACY', 'POLICY_GOV_DEMOCRACY');

 ('POLICY_GOV_OLIGARCHY', 'POLICY_GOV_MONARCHY', 'POLICY_GOV_FASCISM');

('POLICY_GOV_CLASSICAL_REPUBLIC', 'POLICY_GOV_MERCHANT_REPUBLIC', 'POLICY_GOV_COMMUNISM');

*/

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_RH',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
	--	('ENC_POLICY_RH',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_RH',	'Amount'       , 1);


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_INTERNATIONAL_WATERS',       'ENC_POLICY_RH'), -- 100% production towards all naval units
		('POLICY_SERFDOM',      		  	  'ENC_POLICY_RH'), -- +2 Builder charges
		('POLICY_PUBLIC_WORKS',      		  'ENC_POLICY_RH'), -- Serfdom replacement, 2 builders charges and 30% production
		('POLICY_FIVE_YEAR_PLAN', 			  'ENC_POLICY_RH'),
	--	('POLICY_RATIONALISM', 			      'ENC_POLICY_RH'),
		('POLICY_GOV_CLASSICAL_REPUBLIC', 	  'ENC_POLICY_RH'),
		('POLICY_GOV_COMMUNISM', 			  'ENC_POLICY_RH'),
		('POLICY_INTERNATIONAL_SPACE_AGENCY', 'ENC_POLICY_RH'); -- 5% Science per city state



INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_M_RH',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
--		('ENC_POLICY_M_RH',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_M_RH',	'Amount'       , 1);


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_GOV_MONARCHY', 			  'ENC_POLICY_M_RH'),
		('POLICY_CRYPTOGRAPHY',      		  'ENC_POLICY_M_RH'), -- -2 Spy level, +1 for offensive ops
		('POLICY_WARS_OF_RELIGION', 		  'ENC_POLICY_M_RH'), -- +4 Strength against civs that follow other relgions
		('POLICY_ELITE_FORCES',      		  'ENC_POLICY_M_RH'), -- 100% unit experience, but 2 Maintenance for every unit (dark age)
		('POLICY_CYBER_WARFARE', 			  'ENC_POLICY_M_RH'); -- +10 against units from info and future eras



INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_HIGH_RH',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
	--	('ENC_POLICY_HIGH_RH',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_HIGH_RH',	'Amount'       , 1);

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_FINEST_HOUR', 			 	  'ENC_POLICY_HIGH_RH'),  -- +5 adj to home territory
		('POLICY_FUTURE_COUNTER_DOMINATION',  'ENC_POLICY_HIGH_RH'); -- +7 Defensive Strength





INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_GOV_OLIGARCHY', 			  'ENC_POLICY_V_HIGH_RH');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_V_HIGH_RH',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
	--	('ENC_POLICY_V_HIGH_RH',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_V_HIGH_RH',	'Amount'       , 1);


/*
INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_GOV_FASCISM', 			      'ENC_POLICY_VV_HIGH_RH');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_VV_HIGH_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_VV_HIGH_RH',	'YieldType'    , 'YIELD_GOLD'),
		('ENC_POLICY_VV_HIGH_RH',	'Amount'       , 12);
*/


INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_VV_HIGH_RH2',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
	--	('ENC_POLICY_VV_HIGH_RH2',	'YieldType'    , 'YIELD_PRODUCTION'),
		('ENC_POLICY_VV_HIGH_RH2',	'Amount'       , 1);

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES
		('POLICY_GOV_FASCISM', 			      'ENC_POLICY_VV_HIGH_RH2');


INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_VV_HIGH_RH3',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
	--	('ENC_POLICY_VV_HIGH_RH3',	'YieldType'    , 'YIELD_PRODUCTION'),
		('ENC_POLICY_VV_HIGH_RH3',	'Amount'       , 1);
		
INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES
		('POLICY_GOV_OLIGARCHY', 			  'ENC_POLICY_VV_HIGH_RH3');


INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_POLICY_VV_HIGH_RH4',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_POLICY_VV_HIGH_RH4',	'YieldType'    , 'YIELD_FAITH'),
		('ENC_POLICY_VV_HIGH_RH4',	'Amount'       , 2);		
		

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CW');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF',		'YieldType'    , 'YIELD_GOLD'),
		('RH_DEF',						'Amount'   , 40); -- pvs 35, 50

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CW');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_L',		'YieldType'    , 'YIELD_CULTURE'),
		('RH_DEF_L',						'Amount'   , 3);

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_F',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CW');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_F',		'YieldType'    , 'YIELD_GOLD'),
		('RH_DEF_F',						'Amount'   , 20);


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_WALLS', 'RH_DEF'),

('BUILDING_ARENA', 'RH_DEF_L'),

('BUILDING_FLOOD_BARRIER', 'RH_DEF_F'),
('BUILDING_STAR_FORT', 'RH_DEF_L'),
('BUILDING_CASTLE',	   'RH_DEF_L');


INSERT OR IGNORE INTO PolicyModifiers (PolicyType,			ModifierId)
SELECT 'POLICY_ONLINE_COMMUNITIES', 'ENC_C_POLICY_RH'
WHERE EXISTS (SELECT * FROM Policies WHERE PolicyType = 'POLICY_ONLINE_COMMUNITIES'); --50% Tourism with trade route, EPS mod COMPATIBILITY


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

		('POLICY_SYMPHONIES', 		  		  'ENC_C_POLICY_RH'), -- +4 Great Musician points per turn. +4 additional Great Musician points for every Broadcast Center.
		('POLICY_FRESCOES', 		  		  'ENC_C_POLICY_RH'), -- +2 Great Artist points per turn. +2 additional Great Artist points for every Art Museum.
		('POLICY_CONTAINMENT', 			      'ENC_C_POLICY_RH'), -- Double envoys if different gov
		('POLICY_COLLECTIVE_ACTIVISM', 		  'ENC_C_POLICY_RH'); -- 5% Culture per city state

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_C_POLICY_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_C_POLICY_RH',	'YieldType'    , 'YIELD_CULTURE'),
		('ENC_C_POLICY_RH',	'Amount'       , 2);



INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_INVENTION',      		    'ENC_S_POLICY_RH'), -- +4 Great Engineer points per turn. +2 additional Great Engineer points for every Workshop.
		('POLICY_NOBEL_PRIZE',      		'ENC_S_POLICY_RH'), -- Science Foundations -- Engineer and Scientist Points
		('POLICY_NUCLEAR_ESPIONAGE',      	'ENC_S_POLICY_RH'), -- Double tech boost if undetected
		('POLICY_NEW_DEAL', 				'ENC_S_POLICY_RH'); -- Amentiies and Housing

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('ENC_S_POLICY_RH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('ENC_S_POLICY_RH',	'YieldType'    , 'YIELD_SCIENCE'),
		('ENC_S_POLICY_RH',	'Amount'       , 2);


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId)  VALUES	
('RH_POL_DIS',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_GET_CIVIC_CL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value)  VALUES	
	--	('RH_POL_DIS',	'YieldType'    , 'YIELD_GOLD'),
		('RH_POL_DIS',	'Amount'       , -1);


/*
		<Row>
			<ModifierId>DIPLOMATICLEAGUE_DUPLICATEFIRSTINFLUENCETOKEN</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN</ModifierType>
		</Row>
		
		<Row>
			<ModifierId>DIPLOMATICLEAGUE_DUPLICATEFIRSTINFLUENCETOKEN</ModifierId>
			<Name>Amount</Name>
			<Value>1</Value>
		</Row>
		
		<Row>
			<PolicyType>POLICY_DIPLOMATIC_LEAGUE</PolicyType>
			<ModifierId>DIPLOMATICLEAGUE_DUPLICATEFIRSTINFLUENCETOKEN</ModifierId>
		</Row>
*/

INSERT OR IGNORE INTO PolicyModifiers (PolicyType, ModifierId)  VALUES	

		('POLICY_LIMITANEI', 'RH_POL_DIS'), -- +2 Loyalty with Garrisoned Unit
		('POLICY_CONSCRIPTION', 'RH_POL_DIS'), -- -1 Maintenance
		('POLICY_CARAVANSARIES', 'RH_POL_DIS'), -- +2 gold from trade routes
		('POLICY_LAND_SURVEYORS', 'RH_POL_DIS'), -- 20% lower tile cost
		('POLICY_DIPLOMATIC_LEAGUE', 'RH_POL_DIS'), -- too much
		('POLICY_RAID', 'RH_POL_DIS'),
		('POLICY_CIVIL_PRESTIGE', 'RH_POL_DIS'), -- too much, governers +1 amenity, 2 housing
		('POLICY_TOTAL_WAR', 'RH_POL_DIS'), -- 50% pillage / plunder (could be bugged)
		('POLICY_MERCHANT_CONFEDERATION', 'RH_POL_DIS'), -- Gold from envoys
		('POLICY_COLONIAL_TAXES', 'RH_POL_DIS'), -- Diplo, 25% gold 10% production on foreign continents
--		('POLICY_LEVEE_EN_MASSE', 'RH_POL_DIS'), -- 2 unit Maintenance, testing may not be needed (could be bugged)
		('POLICY_ISOLATIONISM', 'RH_POL_DIS'), -- Can't settle new cities / produce settlers
		('POLICY_COLONIAL_OFFICES', 'RH_POL_DIS'), -- 15% growth and 3 loyalty for foreign continents - diplomatic
		
		('POLICY_RAJ', 'RH_POL_DIS'), -- +2 Science, Culture, Faith and Gold from each city-state you are Suzerain of. +2 Gold for Trade Routes to city-states.

		('POLICY_TRADE_CONFEDERATION', 'RH_POL_DIS'), -- +1 Culture and +1 Science from international Trade Routes.

		('POLICY_FREE_MARKET', 'RH_POL_DIS'), -- Extra Gold from buildings in Commercial Hubs: +50% if city Citizen population is 15 or higher, +50% if district has at least +4 adjacency bonus.
	
		('POLICY_TOWN_CHARTERS', 'RH_POL_DIS'), -- +100% Commercial Hub district adjacency bonuses.

		('POLICY_EXPROPRIATION', 'RH_POL_DIS'), --50% settler discount, 20% lower plot cost
		
		('POLICY_PRAETORIUM', 'RH_POL_DIS'), -- Governors provide +2 Loyalty per turn to their city.
		
		('POLICY_REVELATION', 'RH_POL_DIS'); -- +2 GP Prophet


INSERT OR IGNORE INTO PolicyModifiers (PolicyType,			ModifierId)
SELECT 'POLICY_NATIVE_CONQUEST', 'RH_POL_DIS'
WHERE EXISTS (SELECT * FROM Policies WHERE PolicyType = 'POLICY_NATIVE_CONQUEST'); -- Combat victories over units from earlier eras provide Gold equal to 50% of the Strength Combat Strength of the defeated unit. EPS mod COMPATIBILITY



/*
INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId)  VALUES	
('RH_POL_DIS_F',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value)  VALUES	
		('RH_POL_DIS_F',	'YieldType'    , 'YIELD_GOLD'),
		('RH_POL_DIS_F',	'Amount'       , -2);


INSERT OR IGNORE INTO PolicyModifiers (PolicyType, ModifierId)  VALUES	

		('POLICY_LIMITANEI', 'RH_POL_DIS_F'), -- +2 Loyalty with Garrisoned Unit
		('POLICY_CONSCRIPTION', 'RH_POL_DIS_F'), -- -1 Maintenance
		('POLICY_CARAVANSARIES', 'RH_POL_DIS_F'), -- +2 gold from trade routes
		('POLICY_LAND_SURVEYORS', 'RH_POL_DIS_F'), -- 20% lower tile cost
		('POLICY_DIPLOMATIC_LEAGUE', 'RH_POL_DIS_F'), -- too much
		('POLICY_RAID', 'RH_POL_DIS_F'),
		('POLICY_CIVIL_PRESTIGE', 'RH_POL_DIS_F'), -- too much, governers +1 amenity, 2 housing
--		('POLICY_TOTAL_WAR', 'RH_POL_DIS_F'), -- 50% pillage / plunder (could be bugged)
		('POLICY_MERCHANT_CONFEDERATION', 'RH_POL_DIS_F'), -- Gold from envoys
--		('POLICY_COLONIAL_TAXES', 'RH_POL_DIS_F'), -- Diplo, 25% gold 10% production on foreign continents
--		('POLICY_LEVEE_EN_MASSE', 'RH_POL_DIS_F'), -- 2 unit Maintenance, testing may not be needed (could be bugged)
		('POLICY_ISOLATIONISM', 'RH_POL_DIS_F'), -- Can't settle new cities / produce settlers
		('POLICY_COLONIAL_OFFICES', 'RH_POL_DIS_F'), -- 15% growth and 3 loyalty for foreign continents - diplomatic
		
		('POLICY_RAJ', 'RH_POL_DIS_F'), -- +2 Science, Culture, Faith and Gold from each city-state you are Suzerain of. +2 Gold for Trade Routes to city-states.

		('POLICY_TRADE_CONFEDERATION', 'RH_POL_DIS_F'), -- +1 Culture and +1 Science from international Trade Routes.

		('POLICY_FREE_MARKET', 'RH_POL_DIS_F'), -- Extra Gold from buildings in Commercial Hubs: +50% if city Citizen population is 15 or higher, +50% if district has at least +4 adjacency bonus.

		('POLICY_NATIVE_CONQUEST', 'RH_POL_DIS_F'), -- Combat victories over units from earlier eras provide Gold equal to 50% of the Strength Combat Strength of the defeated unit.
		
		('POLICY_TOWN_CHARTERS', 'RH_POL_DIS_F'), -- +100% Commercial Hub district adjacency bonuses.

		('POLICY_EXPROPRIATION', 'RH_POL_DIS_F'), --50% settler discount, 20% lower plot cost
		
		('POLICY_PRAETORIUM', 'RH_POL_DIS_F'), -- Governors provide +2 Loyalty per turn to their city.
		
		('POLICY_REVELATION', 'RH_POL_DIS_F'); -- +2 GP Prophet
			
	

	
INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_SATYAGRAHA',				'RH_CIVIC_ENC_TT'),
			('TRAIT_LEADER_SATYAGRAHA',				'RH_CIVIC_ENC_CS'),
			('TRAIT_LEADER_SATYAGRAHA',				'RH_CIVIC_ENC_SF');
				
*/