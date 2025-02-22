/* RHAI inspiration

-- noinspection SqlNoDataSourceInspectionForFile

--------------------------------------------------------------------------------------------------------------------------
-- Disables AI City State Special Improvements (ai often spams terrible city state improvements -- Sometimes even on top of strategic resources)
--------------------------------------------------------------------------------------------------------------------------


DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_COLOSSAL_HEAD'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_COLOSSAL_HEAD'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_COLOSSAL_HEAD'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_COLOSSAL_HEAD');

REPLACE INTO	Modifiers	
			(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_COLOSSAL_HEAD',		'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_COLOSSAL_HEAD',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_COLOSSAL_HEAD',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_COLOSSAL_HEAD',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,										Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_COLOSSAL_HEAD',		'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_COLOSSAL_HEAD',		'ImprovementType',	'IMPROVEMENT_COLOSSAL_HEAD'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_COLOSSAL_HEAD',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_COLOSSAL_HEAD',	'ImprovementType',	'IMPROVEMENT_COLOSSAL_HEAD'),
			('TERRAIN_GRASS_IMPROVEMENT_COLOSSAL_HEAD',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_COLOSSAL_HEAD',			'ImprovementType',	'IMPROVEMENT_COLOSSAL_HEAD'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_COLOSSAL_HEAD',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_COLOSSAL_HEAD',	'ImprovementType',	'IMPROVEMENT_COLOSSAL_HEAD');


DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MONASTERY' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MONASTERY' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MONASTERY' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MONASTERY' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_MONASTERY'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MONASTERY'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_MONASTERY'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_MONASTERY');

REPLACE INTO	Modifiers	
			(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MONASTERY',		'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MONASTERY',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_MONASTERY',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MONASTERY',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,										Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MONASTERY',		'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_MONASTERY',		'ImprovementType',	'IMPROVEMENT_MONASTERY'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MONASTERY',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MONASTERY',	'ImprovementType',	'IMPROVEMENT_MONASTERY'),
			('TERRAIN_GRASS_IMPROVEMENT_MONASTERY',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_MONASTERY',			'ImprovementType',	'IMPROVEMENT_MONASTERY'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MONASTERY',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MONASTERY',	'ImprovementType',	'IMPROVEMENT_MONASTERY');

/*
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_ALCAZAR' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_ALCAZAR' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_ALCAZAR' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_ALCAZAR' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_ALCAZAR'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_ALCAZAR'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_ALCAZAR'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_ALCAZAR');

REPLACE INTO	Modifiers	
			(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_ALCAZAR',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_ALCAZAR',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_ALCAZAR',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_ALCAZAR',		'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,										Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_ALCAZAR',			'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_ALCAZAR',			'ImprovementType',	'IMPROVEMENT_ALCAZAR'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_ALCAZAR',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_ALCAZAR',	'ImprovementType',	'IMPROVEMENT_ALCAZAR'),
			('TERRAIN_GRASS_IMPROVEMENT_ALCAZAR',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_ALCAZAR',			'ImprovementType',	'IMPROVEMENT_ALCAZAR'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_ALCAZAR',		'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_ALCAZAR',		'ImprovementType',	'IMPROVEMENT_ALCAZAR');
*/


DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOAI' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOAI' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOAI' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOAI' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_MOAI'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOAI'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_MOAI'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_MOAI');

REPLACE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MOAI',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOAI',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_MOAI',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MOAI',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,								Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MOAI',			'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_MOAI',			'ImprovementType',	'IMPROVEMENT_MOAI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOAI',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOAI',	'ImprovementType',	'IMPROVEMENT_MOAI'),
			('TERRAIN_GRASS_IMPROVEMENT_MOAI',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_MOAI',			'ImprovementType',	'IMPROVEMENT_MOAI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MOAI',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MOAI',	'ImprovementType',	'IMPROVEMENT_MOAI');


DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOUND' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOUND' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOUND' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MOUND' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_MOUND'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOUND'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_MOUND'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_MOUND');

REPLACE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MOUND',		'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOUND',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_MOUND',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MOUND',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,								Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MOUND',		'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_MOUND',		'ImprovementType',	'IMPROVEMENT_MOUND'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOUND',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MOUND',	'ImprovementType',	'IMPROVEMENT_MOUND'),
			('TERRAIN_GRASS_IMPROVEMENT_MOUND',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_MOUND',			'ImprovementType',	'IMPROVEMENT_MOUND'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MOUND',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MOUND',	'ImprovementType',	'IMPROVEMENT_MOUND');


DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_BATEY' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_BATEY' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_BATEY' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_BATEY' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_BATEY'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_BATEY'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_BATEY'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_BATEY');

REPLACE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_BATEY',		'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_BATEY',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_BATEY',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_BATEY',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,								Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_BATEY',		'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_BATEY',		'ImprovementType',	'IMPROVEMENT_BATEY'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_BATEY',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_BATEY',	'ImprovementType',	'IMPROVEMENT_BATEY'),
			('TERRAIN_GRASS_IMPROVEMENT_BATEY',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_BATEY',			'ImprovementType',	'IMPROVEMENT_BATEY'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_BATEY',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_BATEY',	'ImprovementType',	'IMPROVEMENT_BATEY');


DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MAHAVIHARA' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MAHAVIHARA' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MAHAVIHARA' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_MAHAVIHARA' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_MAHAVIHARA'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MAHAVIHARA'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_MAHAVIHARA'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_MAHAVIHARA');

REPLACE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MAHAVIHARA',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MAHAVIHARA',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_MAHAVIHARA',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MAHAVIHARA',		'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,								Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_MAHAVIHARA',			'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_MAHAVIHARA',			'ImprovementType',	'IMPROVEMENT_MAHAVIHARA'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MAHAVIHARA',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_MAHAVIHARA',	'ImprovementType',	'IMPROVEMENT_MAHAVIHARA'),
			('TERRAIN_GRASS_IMPROVEMENT_MAHAVIHARA',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_MAHAVIHARA',			'ImprovementType',	'IMPROVEMENT_MAHAVIHARA'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MAHAVIHARA',		'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_MAHAVIHARA',		'ImprovementType',	'IMPROVEMENT_MAHAVIHARA');
			
			
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_TRADING_DOME' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_TRADING_DOME' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_TRADING_DOME' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_TRADING_DOME' and TerrainType = 'TERRAIN_GRASS_HILLS');

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_TRADING_DOME'),
			('TRAIT_LEADER_MAJOR_CIV',	'TTERRAIN_PLAINS_HILLS_IMPROVEMENT_TRADING_DOME'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_TRADING_DOME'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_TRADING_DOME');

REPLACE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_TRADING_DOME',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_TRADING_DOME',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_TRADING_DOME',			'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_TRADING_DOME',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

REPLACE INTO	ModifierArguments
			(ModifierId,								Name,				Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_TRADING_DOME',			'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_TRADING_DOME',			'ImprovementType',	'IMPROVEMENT_TRADING_DOME'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_TRADING_DOME',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TTERRAIN_PLAINS_HILLS_IMPROVEMENT_TRADING_DOME',	'ImprovementType',	'IMPROVEMENT_TRADING_DOME'),
			('TERRAIN_GRASS_IMPROVEMENT_TRADING_DOME',			'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_TRADING_DOME',			'ImprovementType',	'IMPROVEMENT_TRADING_DOME'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_TRADING_DOME',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_TRADING_DOME',	'ImprovementType',	'IMPROVEMENT_TRADING_DOME');



--------------------------------------------------------------------------------------------------------------------------
-- Extra Loyalty if a captured city has no governer
--------------------------------------------------------------------------------------------------------------------------

REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'AI_CAPTURED_CITY_GET_LOYALTY');

REPLACE INTO	Modifiers	
			(ModifierId,						ModifierType,										SubjectRequirementSetId)
VALUES		('AI_CAPTURED_CITY_GET_LOYALTY',	'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN', 	'AI_CITY_NOT_FOUNDED_NOT_GOVERNOR');

REPLACE INTO	ModifierArguments	
			(ModifierId,						Name,			Value)
VALUES		('AI_CAPTURED_CITY_GET_LOYALTY',	'Amount',		10);

REPLACE INTO RequirementSets 
		(RequirementSetId,					 RequirementSetType)
VALUES
		('AI_CITY_NOT_FOUNDED_NOT_GOVERNOR', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('AI_CITY_NOT_FOUNDED_NOT_GOVERNOR', 'REQUIRES_CITY_WAS_NOT_FOUNDED'),
		('AI_CITY_NOT_FOUNDED_NOT_GOVERNOR', 'REQUIRES_NOT_CITY_HAS_GOV'),
		('AI_CITY_NOT_FOUNDED_NOT_GOVERNOR', 'REQUIRES_PLAYER_IS_AI');



--------------------------------------------------------------------------------------------------------------------------
-- Diplomacy Improvements 2
--------------------------------------------------------------------------------------------------------------------------

--UPDATE DiplomaticStateActions SET Cost = -4 WHERE StateType = 'DIPLO_STATE_FRIENDLY' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';
--UPDATE DiplomaticStateActions SET Worth = -2 WHERE StateType = 'DIPLO_STATE_FRIENDLY' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';

--UPDATE DiplomaticStateActions SET Worth = 1000 WHERE StateType = 'DIPLO_STATE_NEUTRAL' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';
--UPDATE DiplomaticStateActions SET Cost = -400 WHERE StateType = 'DIPLO_STATE_NEUTRAL' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';

--UPDATE DiplomaticStateActions SET Worth = 1000 WHERE StateType = 'DIPLO_STATE_UNFRIENDLY' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';
--UPDATE DiplomaticStateActions SET Cost = -500 WHERE StateType = 'DIPLO_STATE_UNFRIENDLY' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';

UPDATE DiplomaticStateActions SET Worth = 15000 WHERE StateType = 'DIPLO_STATE_DENOUNCED' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';
UPDATE DiplomaticStateActions SET Cost = -10000 WHERE StateType = 'DIPLO_STATE_DENOUNCED' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';

UPDATE DiplomaticStateActions SET Worth = 15000 WHERE StateType = 'DIPLO_STATE_WAR' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';
UPDATE DiplomaticStateActions SET Cost = -10000 WHERE StateType = 'DIPLO_STATE_WAR' and DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';

UPDATE DiplomaticStateActions SET Worth = 15000 WHERE DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';
UPDATE DiplomaticStateActions SET Cost = -10000 WHERE DiplomaticActionType = 'DIPLOACTION_USE_NUCLEAR_WEAPON';

--UPDATE DiplomaticStateActions SET Worth = 0 WHERE (StateType = 'DIPLO_STATE_ALLIED' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE');
--UPDATE DiplomaticStateActions SET Cost = 56 WHERE (StateType = 'DIPLO_STATE_ALLIED' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE');

--UPDATE DiplomaticStateActions SET Worth = 0 WHERE (StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE');
--UPDATE DiplomaticStateActions SET Cost = 43 WHERE (StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE');

--UPDATE DiplomaticStateActions SET Worth = 0 WHERE (StateType = 'DIPLO_STATE_FRIENDLY' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE');
UPDATE DiplomaticStateActions SET Cost = 6 WHERE (StateType = 'DIPLO_STATE_FRIENDLY' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE');

/*
Notes:
DIPLO_STATE_WAR_WITH_MAJOR

*/

--UPDATE DiplomaticStateActions SET Worth = -2 WHERE StateType = 'DIPLO_STATE_NEUTRAL' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE';
UPDATE DiplomaticStateActions SET Cost = 12 WHERE StateType = 'DIPLO_STATE_NEUTRAL' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE';

--UPDATE DiplomaticStateActions SET Worth = -5 WHERE StateType = 'DIPLO_STATE_UNFRIENDLY' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE';
UPDATE DiplomaticStateActions SET Cost = 16 WHERE StateType = 'DIPLO_STATE_UNFRIENDLY' and DiplomaticActionType = 'DIPLOACTION_PROPOSE_TRADE'; -- pvs 25

-- Military

UPDATE DiplomaticStateActions SET Worth = -55 WHERE DiplomaticActionType = 'DIPLOACTION_MAKE_PEACE'; -- pvs -55, 53
UPDATE DiplomaticStateActions SET Cost = 25 WHERE DiplomaticActionType = 'DIPLOACTION_MAKE_PEACE';

UPDATE DiplomaticStateActions SET Worth = -42 WHERE DiplomaticActionType = 'DIPLOACTION_PROPOSE_PEACE_DEAL'; -- pvs -40, 39
UPDATE DiplomaticStateActions SET Cost = 25 WHERE DiplomaticActionType = 'DIPLOACTION_PROPOSE_PEACE_DEAL';

UPDATE DiplomaticStateActions SET Cost = 4 WHERE StateType = 'DIPLO_STATE_FRIENDLY' and DiplomaticActionType = 'DIPLOACTION_DECLARE_SURPRISE_WAR';
-- pvs 4

UPDATE DiplomaticActions SET WarmongerPercent=40 WHERE DiplomaticActionType='DIPLOACTION_DECLARE_IDEOLOGICAL_WAR'; -- late game wars
UPDATE DiplomaticActions SET CaptureWarmongerPercent=40 WHERE DiplomaticActionType='DIPLOACTION_DECLARE_IDEOLOGICAL_WAR';
UPDATE DiplomaticActions SET RazeWarmongerPercent=170 WHERE DiplomaticActionType='DIPLOACTION_DECLARE_IDEOLOGICAL_WAR';

--------------------------------------------------------------------------------------------------------------------------
-- More AI resources


REPLACE INTO	TraitModifiers	
			(TraitType,						ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',		'AI_GET_ALUMINUM_RESOURCE_FUTURE');

REPLACE INTO Modifiers	
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('AI_GET_ALUMINUM_RESOURCE_FUTURE',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_AI_AND_GET_FUTURE_TECH');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_GET_ALUMINUM_RESOURCE_FUTURE',	'ResourceType',	'RESOURCE_ALUMINUM'),
		('AI_GET_ALUMINUM_RESOURCE_FUTURE',	'Amount',		12);

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('PLAYER_IS_AI_AND_GET_FUTURE_TECH', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('PLAYER_IS_AI_AND_GET_FUTURE_TECH', 'REQUIRES_AI_GET_TECH_FUTURE_TECH'),
		('PLAYER_IS_AI_AND_GET_FUTURE_TECH', 'REQUIRES_PLAYER_IS_AI');
		
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('REQUIRES_AI_GET_TECH_FUTURE_TECH', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('REQUIRES_AI_GET_TECH_FUTURE_TECH','TechnologyType', 'TECH_FUTURE_TECH');


-- Uranium

REPLACE INTO	TraitModifiers	
			(TraitType,						ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',		'AI_GET_URANIUM_RESOURCE_FUTURE');

REPLACE INTO Modifiers	
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('AI_GET_URANIUM_RESOURCE_FUTURE',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_AI_AND_GET_FUTURE_TECH');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_GET_URANIUM_RESOURCE_FUTURE',	'ResourceType',	'RESOURCE_URANIUM'),
		('AI_GET_URANIUM_RESOURCE_FUTURE',	'Amount',		4); -- pvs 3

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('PLAYER_IS_AI_AND_GET_FUTURE_TECH', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('PLAYER_IS_AI_AND_GET_FUTURE_TECH', 'REQUIRES_AI_GET_TECH_FUTURE_TECH'),
		('PLAYER_IS_AI_AND_GET_FUTURE_TECH', 'REQUIRES_PLAYER_IS_AI');
		
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('REQUIRES_AI_GET_TECH_FUTURE_TECH', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('REQUIRES_AI_GET_TECH_FUTURE_TECH','TechnologyType', 'TECH_FUTURE_TECH');


-- CITYSTATE PROTECTION -- SPECIAL THANKS -- INFIXO

-- districts
DELETE FROM AiFavoredItems WHERE ListType = 'MinorCivDistricts' AND Item IN ('DISTRICT_AQUEDUCT', 'DISTRICT_ENTERTAINMENT_COMPLEX');
UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'MinorCivDistricts' AND Item IN ('DISTRICT_AERODROME'); -- pvs 'DISTRICT_ENCAMPMENT


REPLACE INTO AiListTypes (ListType) VALUES
('MinorUnits'),
('MinorBuildings');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MinorUnits', 'MINOR_CIV_DEFAULT_TRAIT', 'Units'),
('MinorBuildings', 'MINOR_CIV_DEFAULT_TRAIT', 'Buildings');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MinorBuildings', 'BUILDING_WALLS', 1, 900), 
('MinorBuildings', 'BUILDING_CASTLE', 1, 900),
('MinorBuildings', 'BUILDING_STAR_FORT', 1, 500),
('MinorBuildings', 'BUILDING_GRANARY', 1, 90),

('MinorCivUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', 1, 50), -- pvs 12
('MinorCivUnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 1, 25),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 10),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 5),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, -9),

('MinorCivUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE', 0, -10),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_NAVAL_RANGED', 1, 10),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 25), -- pvs 16, 17
--('MinorCivUnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 2),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, -34), -- pvs -40, -35, -32
('MinorCivUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1, -62), -- pvs -50, -75
('MinorCivPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',		 1, 11),
('MinorCivPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 8),
('MinorCivPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 10),
('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 100), -- pvs 35
('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 		0, -65),
('MinorCivPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON',   0, -95),

('MinorCivPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',   1, 30),

('MinorCivPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',   1, 20),
('MinorCivPseudoYields', 'PSEUDOYIELD_DISTRICT',   	 0, -28),

--('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -5), -- pvs 1
('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 80); -- pvs 17, 19


INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Favored, Value) VALUES
('MinorUnits', 'UNIT_ARCHER', 1, 40),
('MinorUnits', 'UNIT_CROSSBOWMAN', 1, 40),

('MinorUnits', 'UNIT_ANTIAIR_GUN', 1, 90), -- pvs 8, 16, 33, 65, 80
('MinorUnits', 'UNIT_MOBILE_SAM', 1, 90); -- pvs 65, 80

REPLACE INTO AiFavoredItems (ListType, Item, Favored) VALUES
('Minor Civ Homeland', 'Attack Civilians', 					 1),
('Minor Civ Tactical', 'Pillage District', 				   	 1),
('Minor Civ Tactical', 'Pillage Improvement',				 1),
('Minor Civ Tactical', 'Coastal Raid',						 1),
('Minor Civ Tactical', 'Plunder Trader', 					 1);

-- defs

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MajorFavorBuildings');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('MajorFavorBuildings', 'MAJOR_CIV_DEFAULT_TRAIT', 'Buildings');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_WALLS', 				1, 900),
('MajorFavorBuildings', 'BUILDING_CASTLE', 				1, 100), -- pvs 30

('MajorFavorBuildings', 'BUILDING_POWER_PLANT',			 0, -50), -- Don't Waste Uranium
('MajorFavorBuildings', 'BUILDING_ARENA',   			1, 900), -- important: +2 amenities / unlocks BUILDING_COLOSSEUM 

('MajorFavorBuildings', 'BUILDING_MARKET',   			1, 90),
('MajorFavorBuildings', 'BUILDING_LIGHTHOUSE',   		1, 90),

('MajorFavorBuildings',	'BUILDING_GREAT_BATH',			0, -10),
--('MajorFavorBuildings',	'BUILDING_PETRA',				0, 0),
('MajorFavorBuildings', 'BUILDING_VENETIAN_ARSENAL', 	1, 900), -- pvs 0
('MajorFavorBuildings', 'BUILDING_COLOSSEUM', 			1, 900), 
('MajorFavorBuildings', 'BUILDING_PYRAMIDS', 			1, 0), 
('MajorFavorBuildings', 'BUILDING_ESTADIO_DO_MARACANA', 	1, 900), -- Just good


('MajorFavorBuildings',	'BUILDING_MEENAKSHI_TEMPLE',	0, 0); -- 2 Gurus -- 30% Discount



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MajorFavorBuildings', 'BUILDING_TEMPLE_ARTEMIS', 1, 90 -- situational but good anyway
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('MajorFavorBuildings', 'BUILDING_GOV_CONQUEST',		 30),

('MajorFavorBuildings', 'BUILDING_STAR_FORT', 			30),

('MajorFavorBuildings', 'BUILDING_GOV_SPIES', 			 5000),
('MajorFavorBuildings', 'BUILDING_GOV_MILITARY', 		 5000),
('MajorFavorBuildings', 'BUILDING_GOV_TALL', 			 5000), 
('MajorFavorBuildings', 'BUILDING_GOV_WIDE', 			 5000), 
('MajorFavorBuildings', 'BUILDING_GOV_FAITH',			 200),
('MajorFavorBuildings', 'BUILDING_GOV_CITYSTATES', 		 200),

('MajorFavorBuildings', 'BUILDING_GOV_CULTURE', 		900),
('MajorFavorBuildings', 'BUILDING_GOV_SCIENCE', 		400); -- Ai probably will not use workers on projects


--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Rise and fall -- only 2 science city states needed for +15% science
--SELECT 'MajorFavorBuildings', 'BUILDING_KILWA_KISIWANI', 1, 200
--FROM Types WHERE Type = 'BUILDING_KILWA_KISIWANI';

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) 
--SELECT 'MajorFavorBuildings', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 9000
--FROM Types WHERE Type = 'BUILDING_HALICARNASSUS_MAUSOLEUM';

--UPDATE Buildings SET Cost = CAST( ROUND( Cost * 1.1 ) AS INTEGER ) WHERE BuildingType = "BUILDING_HALICARNASSUS_MAUSOLEUM";

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MajorFavorPseudos');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('MajorFavorPseudos', 'MAJOR_CIV_DEFAULT_TRAIT', 'PseudoYields');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorPseudos', 'PSEUDOYIELD_UNIT_COMBAT', 		1, -40);

-- mayble unfavour BUILDING_KOTOKU_IN?

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MajorFavorTechs');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('MajorFavorTechs', 'MAJOR_CIV_DEFAULT_TRAIT', 'Technologies');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('MajorFavorTechs', 'TECH_ANIMAL_HUSBANDRY', 		1, 0), 
('MajorFavorTechs', 'TECH_ARCHERY', 				1, 0), 
('MajorFavorTechs', 'TECH_IRRIGATION', 				1, 0), 
('MajorFavorTechs', 'TECH_WRITING', 				1, 0), 

('MajorFavorTechs', 'TECH_MASONRY', 		1, 0), -- Walls
('MajorFavorTechs', 'TECH_MACHINERY', 		1, 0),
('MajorFavorTechs', 'TECH_STEEL', 			1, 0), -- Urban Defenses

('MajorFavorTechs', 'TECH_METAL_CASTING', 	1, 0), -- Bombards
('MajorFavorTechs', 'TECH_REFINING', 		1, 0), -- Oil
('MajorFavorTechs', 'TECH_COMBINED_ARMS', 	1, 0),
('MajorFavorTechs', 'TECH_TELECOMMUNICATIONS', 	0, 0),

('MajorFavorTechs', 'TECH_ADVANCED_FLIGHT', 	1, 0),

('MajorFavorTechs', 'TECH_ADVANCED_BALLISTICS', 	1, 0),

('MajorFavorTechs', 'TECH_SATELLITES', 		1, 0), -- vital for space race 
('MajorFavorTechs', 'TECH_OFFWORLD_MISSION', 1, 0), -- vital for space race 
('MajorFavorTechs', 'TECH_FUTURE_TECH', 	0, 0), -- Researchs before other techs
('MajorFavorTechs', 'TECH_SMART_MATERIALS', 1, 0); -- Launch Exoplanet Expedition

--('MajorFavorTechs', 'TECH_NANOTECHNOLOGY', 1, 0); -- launch mars colony

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MajorFavorCivics');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('MajorFavorCivics', 'MAJOR_CIV_DEFAULT_TRAIT', 'Civics');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorCivics', 'CIVIC_FEUDALISM', 1, 0), -- farm adj
('MajorFavorCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0), 
('MajorFavorCivics', 'CIVIC_DIVINE_RIGHT', 1, 100), 
('MajorFavorCivics', 'CIVIC_THEOLOGY', 1, 0), 
('MajorFavorCivics', 'CIVIC_MYSTICISM', 1, 0),

('MajorFavorCivics', 'CIVIC_CIVIL_SERVICE', 1, 0),
('MajorFavorCivics', 'CIVIC_MERCENARIES', 1, 0),
('MajorFavorCivics', 'CIVIC_EXPLORATION', 1, 0),
('MajorFavorCivics', 'CIVIC_REFORMED_CHURCH', 1, 100),

('MajorFavorCivics', 'CIVIC_COLD_WAR', 0, 0),
('MajorFavorCivics', 'CIVIC_PROFESSIONAL_SPORTS', 0, 0), -- test
('MajorFavorCivics', 'CIVIC_MERCANTILISM', 0, 0),
('MajorFavorCivics', 'CIVIC_THE_ENLIGHTENMENT', 0, 0),
('MajorFavorCivics', 'CIVIC_CIVIL_ENGINEERING', 0, 0),

('MajorFavorCivics', 'CIVIC_DIPLOMATIC_SERVICE', 0, 0),
('MajorFavorCivics', 'CIVIC_HUMANISM', 0, 0),

('MajorFavorCivics', 'CIVIC_SUFFRAGE', 1, 100), 
('MajorFavorCivics', 'CIVIC_TOTALITARIANISM', 1, 100), 
('MajorFavorCivics', 'CIVIC_CLASS_STRUGGLE', 1, 100),

('MajorFavorCivics', 'CIVIC_FUTURE_CIVIC', 0, 0), 
('MajorFavorCivics', 'CIVIC_NATIONALISM', 1, 0), 
('MajorFavorCivics', 'CIVIC_IDEOLOGY', 1, 0);

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MajorProjects');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('MajorProjects', 'MAJOR_CIV_DEFAULT_TRAIT', 'Projects');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorProjects', 'PROJECT_CONVERT_REACTOR_TO_URANIUM', 0, -50);  -- Don't Waste Uranium

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorProjects', 'PROJECT_CARBON_RECAPTURE', 0, -90), 
('MajorProjects', 'PROJECT_MANHATTAN_PROJECT', 			1, 90),
('MajorProjects', 'PROJECT_ORBITAL_LASER',    			 1, 90000), -- Build if you can -- testing 5000 instead of 900
('MajorProjects', 'PROJECT_TERRESTRIAL_LASER',			 1, 90000); 

-- ('ScienceVictoryProjects', 'PROJECT_CARBON_RECAPTURE', 0, 0), 

-- Canals and Gov plaza 
INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MajorFavorCanal_and_Gov');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('MajorFavorCanal_and_Gov', 'MAJOR_CIV_DEFAULT_TRAIT', 'Districts');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorCanal_and_Gov', 'DISTRICT_GOVERNMENT', 				1, 900), -- pvs 0, 40
--('MajorFavorCanal_and_Gov', 'DISTRICT_DIPLOMATIC_QUARTER',		1, 150), -- Already in New Frontier Pass
('MajorFavorCanal_and_Gov', 'DISTRICT_CANAL', 					1, 0); 


---------------------------------------------------------------------
-- Emergencies / AID request preferences

REPLACE INTO	AiListTypes	(ListType) VALUES		
			('RH_AI_Unfavour_Aid'),
			('RH_AI_Unfavour_Military_Aid'),
			('RH_AI_Prefer_City_State_Emergency'),
			('RH_AI_Prefer_Military_Emergency');

REPLACE INTO	AiFavoredItems	(ListType,	Item,	Favored)	 VALUES		
			('RH_AI_Prefer_City_State_Emergency',	'WC_EMERGENCY_CITY_STATE',				1),
			('RH_AI_Prefer_Military_Emergency',		'WC_EMERGENCY_MILITARY',				1),
			('RH_AI_Unfavour_Aid',				'WC_EMERGENCY_REQUEST_AID',				0),
			('RH_AI_Unfavour_Military_Aid',		'WC_EMERGENCY_MILITARY_AID_REQUEST',	0);

REPLACE INTO	AiLists	(ListType,	AgendaType,	System) VALUES	


			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_PREFER_SAME_GOVERNMENT',		'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_PARANOID',					'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_CITY_STATE_ALLY',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_PREFER_CITY_STATE_PROTECTOR',	'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_PREFER_AIRPOWER',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_IGNORE_WARMONGERING',			'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_PREFER_STANDING_ARMY',		'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_ENJOYS_WAR',					'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_BACKSTAB_AVERSE',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_BIG_STICK_POLICY',			'Discussions'),
			
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_WITH_SHIELD',					'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_HORSE_LORD',					'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_SPIRIT_OF_TUCAPEL',			'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_LAWGIVER',					'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_RAVEN_BANNER',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_SULTAN',						'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_CITY_PLANNER',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_TRIEU_DEFENDER',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_SIMON_BOLIVAR',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_BASIL_ZEALOT',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_AMBIORIX_ARMY',				'Discussions'),
			('RH_AI_Prefer_City_State_Emergency','TRAIT_AGENDA_HAMMURABI_DISTRICTS',			'Discussions'),
			
-- Military Emergency
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_ENJOYS_WAR',					'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_BACKSTAB_AVERSE',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_BIG_STICK_POLICY',			'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_WITH_SHIELD',					'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_HORSE_LORD',					'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_SPIRIT_OF_TUCAPEL',			'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_LAWGIVER',					'Discussions'),
			
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_PREFER_SAME_GOVERNMENT',		'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_PARANOID',					'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_CITY_STATE_ALLY',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_PREFER_CITY_STATE_PROTECTOR',	'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_PREFER_AIRPOWER',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_IGNORE_WARMONGERING',			'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_PREFER_STANDING_ARMY',		'Discussions'),

			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_RAVEN_BANNER',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_SULTAN',						'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_CITY_PLANNER',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_TRIEU_DEFENDER',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_SIMON_BOLIVAR',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_BASIL_ZEALOT',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_AMBIORIX_ARMY',				'Discussions'),
			('RH_AI_Prefer_Military_Emergency',	'TRAIT_AGENDA_HAMMURABI_DISTRICTS',			'Discussions'),

-- Don't all leaders blindly vote for Ai requests lol
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_PREFER_SAME_GOVERNMENT',		'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_PREFER_INCOME',				'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_PARANOID',					'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_PREFER_NUKES',				'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_PREFER_AIRPOWER',				'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_IGNORE_WARMONGERING',			'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_PREFER_STANDING_ARMY',		'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_ENJOYS_WAR',					'Discussions'),
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_BACKSTAB_AVERSE',				'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_BIG_STICK_POLICY',			'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_WITH_SHIELD',					'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_HORSE_LORD',					'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_SPIRIT_OF_TUCAPEL',			'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_LAWGIVER',					'Discussions'), 
			
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_RAVEN_BANNER',				'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_SULTAN',						'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_TRIEU_DEFENDER',				'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_SIMON_BOLIVAR',				'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_BASIL_ZEALOT',				'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_AMBIORIX_ARMY',				'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_HAMMURABI_DISTRICTS',			'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_BLACK_QUEEN',					'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_IRON_CROWN',					'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_LAST_VIKING_KING',			'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_TLATOANI',					'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_HORN_CHEST_LOINS',			'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_DECOLONIZATION',				'Discussions'), 
			('RH_AI_Unfavour_Aid',			'TRAIT_AGENDA_END_TO_SUFFERING',			'Discussions'), 
		
		
-- Same for Military Aid
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_PREFER_INCOME',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_PARANOID',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_PREFER_NUKES',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_IGNORE_WARMONGERING',			'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_ENJOYS_WAR',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_BACKSTAB_AVERSE',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_WITH_SHIELD',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_HORSE_LORD',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_SPIRIT_OF_TUCAPEL',			'Discussions'),
			
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_LAWGIVER',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_RAVEN_BANNER',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_SULTAN',						'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_TRIEU_DEFENDER',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_SIMON_BOLIVAR',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_BASIL_ZEALOT',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_AMBIORIX_ARMY',				'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_HAMMURABI_DISTRICTS',			'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_BLACK_QUEEN',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_IRON_CROWN',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_LAST_VIKING_KING',			'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_TLATOANI',					'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_HORN_CHEST_LOINS',			'Discussions'),
			('RH_AI_Unfavour_Military_Aid',	'TRAIT_AGENDA_END_TO_SUFFERING',			'Discussions');


INSERT OR REPLACE INTO	AiLists	 (ListType,					AgendaType,							System)  VALUES		

			('CityStateAllyNoWarPreference',		'TRAIT_AGENDA_BIG_STICK_POLICY',		'DiplomaticActions'), 
			('CityStateAllyNoWarPreference',		'AGENDA_DELIAN_LEAGUE',					'DiplomaticActions'), -- Pericles

			('CityStateAllyNoWarPreference',		'TRAIT_AGENDA_ENTHUSIASTIC_DISCIPLE',	'DiplomaticActions'), -- Mvemba
			('CityStateAllyNoWarPreference',		'TRAIT_AGENDA_IRON_CONFEDERACY',		'DiplomaticActions'), -- Cree
			('CityStateAllyNoWarPreference',		'TRAIT_AGENDA_SAKOKU',					'DiplomaticActions'), -- Tokugawa

			('CityStateAllyNoWarPreference',		'AGENDA_PRESERVER_OF_THE_UNION',		'DiplomaticActions'), -- Lincoln
			('CityStateAllyNoWarPreference',		'AGENDA_RAVEN_BANNER',					'DiplomaticActions'), -- Hungary
			('CityStateAllyNoWarPreference',		'AGENDA_PERPETUALLY_ON_GUARD',			'DiplomaticActions'), -- Australia
			('CityStateAllyNoWarPreference',		'AGENDA_YINDING',						'DiplomaticActions'), -- Yongle
			('CityStateAllyNoWarPreference',		'AGENDA_END_TO_SUFFERING',				'DiplomaticActions'), -- Khmer

			('CityStateAllyNoWarPreference',		'TRAIT_AGENDA_PREFER_HAPPINESS',			'DiplomaticActions'),
			('CityStateAllyNoWarPreference',		'TRAIT_AGENDA_PREFER_ENVIRONMENT',			'DiplomaticActions');
	

--------------------------------------------------------------------------------------------------------------------------
-- Not implemented Siege Bonus

/*
INSERT INTO TraitModifiers 
		(TraitType, ModifierId) VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'NOTAI_OUTER_DEFENSE_PLUS');

INSERT INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
		('NOTAI_OUTER_DEFENSE_PLUS',	 'MODIFIER_PLAYER_CITIES_ADJUST_OUTER_DEFENSE', 'PLAYER_IS_NOT_AI');

INSERT INTO ModifierArguments
		(ModifierId, Name, Value) VALUES
		('NOTAI_OUTER_DEFENSE_PLUS', 'Amount', 3);
*/

/*
INSERT INTO	Types   	(Type,					Kind)	VALUES	
			('ABILITY_RH_SIEGE_PLUS',		'KIND_ABILITY');

INSERT INTO TypeTags  (Type,					Tag)   VALUES		

			('ABILITY_RH_SIEGE_PLUS',	'CLASS_SIEGE'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_HEAVY_CAVALRY'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_LIGHT_CAVALRY'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_RECON'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_MELEE'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_RANGED'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_RANGED_CAVALRY'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_ANTI_CAVALRY'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_HEAVY_CHARIOT'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_LIGHT_CHARIOT'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_NAVAL_MELEE'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_NAVAL_RANGED'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_NAVAL_RAIDER'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_AIRCRAFT'),
			('ABILITY_RH_SIEGE_PLUS',	'CLASS_WARRIOR_MONK');
	--		('ABILITY_RH_SIEGE_PLUS',	'CLASS_ALL_COMBAT_UNITS'),

--INSERT INTO UnitAbilities
--			(UnitAbilityType,			 Inactive) VALUES		
--			('ABILITY_RH_SIEGE_PLUS',	1);

-- UnitAbilities Text

INSERT INTO UnitAbilities	
		(UnitAbilityType,		Name,		Description) VALUES	
		('ABILITY_RH_SIEGE_PLUS',	null,	null);	


-- Modifiers
INSERT INTO	Modifiers	
			(ModifierId,						ModifierType,						SubjectRequirementSetId) VALUES		
			('MODIFIER_RH_BOMBARD_PLUS',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',	'UNIT_ATTACKING_DISTRICT_REQUIREMENTS'),
			('MODIFIER_RH_BOMBARD_PLUS',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 	'PLAYER_IS_AI');	


-- UnitAbilityModifiers

INSERT INTO UnitAbilityModifiers
			(UnitAbilityType, 							ModifierId) VALUES		
			('ABILITY_RH_SIEGE_PLUS',		'MODIFIER_RH_BOMBARD_PLUS');

			
			
--INSERT INTO 	Modifiers	(ModifierId,				ModifierType, 		SubjectRequirementSetId) VALUES		
	--		('MODIFIER_RH_BOMBARD_PLUS',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 	'PLAYER_IS_AI');

-- Not in use / needed - ModifierStrings (locs)


-- ModifierArguments
INSERT INTO ModifierArguments
		(ModifierId,			Name,		Value) VALUES		
		('MODIFIER_RH_BOMBARD_PLUS',	'Amount',		5); 



-- Insert into def traits
INSERT INTO	TraitModifiers (TraitType,		ModifierId) VALUES		
			
			('TRAIT_LEADER_MAJOR_CIV',	'MODIFIER_RH_BOMBARD_PLUS'),
			('MINOR_CIV_DEFAULT_TRAIT', 'MODIFIER_RH_BOMBARD_PLUS');


-- Probably not needed as the requirement set UNIT_ATTACKING_DISTRICT_REQUIREMENTS already exists

/*
-- RequirementSets

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('JFD_PANZER_PLAYER_IS_ATTACKER_REQ_SET',	'REQUIREMENTSET_TEST_ALL');

-- RequirementSetRequirements

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('JFD_PANZER_PLAYER_IS_ATTACKER_REQ_SET',	'PLAYER_IS_ATTACKER_REQUIREMENTS');

*/



-- Various Small Fixes

UPDATE AiLists SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_BACKSTABBER'      WHERE LeaderType = 'TRAIT_AGENDA_BACKSTABBER';
UPDATE AiLists SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_LAST_VIKING_KING' WHERE LeaderType = 'TRAIT_AGENDA_LAST_VIKING_KING';
UPDATE AiLists SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_WITH_SHIELD'      WHERE LeaderType = 'TRAIT_AGENDA_WITH_SHIELD';

UPDATE AiFavoredItems SET Item = 'CIVIC_NAVAL_TRADITION' WHERE Item = 'CIVIC_NAVAL_TRADITIION';
UPDATE Victories SET CriticalPercentage=65 WHERE VictoryType='VICTORY_CULTURE'; 

-- Agenda Thresehold adjustments

UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_IRON_CONFEDERACY_FEW_ALLIANCES' AND Name='IncrementValue';

UPDATE ModifierArguments SET Value=-21 WHERE ModifierId='AGENDA_EXPLOITATION' AND Name='LowScoreThreshold';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_ARCHIPELAGIC_STATE' AND Name='MaxNegativeModifier';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_END_TO_SUFFERING' AND Name='MaxNegativeModifier';

UPDATE ModifierArguments SET Value=-14 WHERE ModifierId='AGENDA_FLOWER_OF_SCOTLAND_WAR_NEIGHBORS' AND Name='MaxValue';

UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_IRON_CONFEDERACY_FEW_ALLIANCES' AND Name='MaxValue';

UPDATE ModifierArguments SET Value=-32 WHERE ModifierId='AGENDA_MAURYA_EMPIRE_NEIGHBORS' AND Name='MaxValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_BACKSTABBER' AND Name='NeverSurpriseWarPenalty';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_SHORT_LIFE_GLORY' AND Name='NotAtWarPenalty';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_MODIFIER_WITH_SHIELD_OR_ON_IT' AND Name='PaidForPeacePenalty';

UPDATE ModifierArguments SET Value=-4 WHERE ModifierId='AGENDA_PERPETUALLY_ON_GUARD_OCCUPATION' AND Name='PenaltyPerOccupiedCity';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_ADJUST_GOVERNMENT_INTOLERANCE' AND Name='SameEraIntoleranceFlatBonus';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HORSE_LORD' AND Name='TopRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_PATRON_OF_ARTS' AND Name='TopRankingDiploMod';



UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_HIGH_TOURISM' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_PILLAGE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_SAPA_INCA_HIGH_MOUNTAIN_CITIES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-11 WHERE ModifierId='AGENDA_SICILIAN_WARS_HIGH_COASTAL_CITIES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_MODIFIER_LADY_SIX_SKY_NEIGHBORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_WITH_SHIELD_OR_ON_IT' AND Name='AvoidedWarPenalty';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_HORN_CHEST_LOINS' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_ENVIRONMENT' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MONEY_GRUBBER' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_TURTLER' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_ZEALOT' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_ANGEVIN_EMPIRE' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-11 WHERE ModifierId='AGENDA_CANADIAN_EXPEDITIONARY' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_KAITIAKITANGA' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_LAWGIVER' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_LORD_OF_MINES' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_RAVEN_BANNER' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='AGENDA_HORN_CHEST_LOINS' AND Name='CantBuildDiploMod';

UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='AGENDA_SPIRIT_OF_TUCAPEL_LOSING_CITIES' AND Name='CityGainLowerBound';

UPDATE ModifierArguments SET Value=-5 WHERE ModifierId='AGENDA_FLAT_EARTHER' AND Name='DiploModForCircumnavigation';




UPDATE ModifierArguments SET Value=-18 WHERE ModifierId='AGENDA_ALLY_OF_ENKIDU_DENOUNCED_FRIEND' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-15 WHERE ModifierId='AGENDA_BACKSTAB_AVERSE_SURPRISE_WAR' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-17 WHERE ModifierId='AGENDA_CONTINENT_ATTACKED' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HAS_DESIRED_LUXURY' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-14 WHERE ModifierId='AGENDA_MODIFIER_LEADS_GREAT_PEOPLE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-11 WHERE ModifierId='AGENDA_MODIFIER_LAGS_PROGRESS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-16 WHERE ModifierId='AGENDA_MODIFIER_LEADS_WONDERS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_NEVER_AT_WAR' AND Name='InitialValue';


UPDATE ModifierArguments SET Value=-18 WHERE ModifierId='AGENDA_MODIFIER_ENCROACHING_RELIGION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_DELIAN_COMPETING_MINORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_COMPETING_MINORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_RELIGION_NOT_RECEIVED' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_CONQUERING_ALLYING_MINORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-7 WHERE ModifierId='AGENDA_SUN_SETS_NEW_CONTINENT' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_CULTURE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='AGENDA_MED_ATTACK_CITY_STATES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HIGH_ATTACK_CITY_STATES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_FAITH' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-7 WHERE ModifierId='AGENDA_IGNORES_BARBARIAN_CAMPS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_HIGH_EXPLORATION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_HAPPINESS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_INDUSTRY' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_POPULATION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_SCIENCE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_LOW_STANDING_ARMY' AND Name='InitialValue'; -- def -6

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_AIRPOWER' AND Name='InitialValue';




UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_GREAT_PERSON_ADVOCATE_LEAD' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_WONDER_ADVOCATE_LEAD' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_DIFFERENT_GOVERNMENT' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_SAINT_LOW_FAITH' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_LOW_DISTRICTS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_CHEOMSEONGDAE_LOW_SCIENCE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-4 WHERE ModifierId='AGENDA_FLOWER_OF_SCOTLAND_WAR_NEIGHBORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_IRON_CONFEDERACY_FEW_ALLIANCES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MAURYA_EMPIRE_NEIGHBORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_NARIKALA_FORTRESS_LOW_WALLS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_GOSSIP_NEGATIVE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_SYCOPHANT_DARK_AGE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_SYMPATHIZER_GOLDEN_AGE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_INTOLERANT_ENCROACHING_RELIGION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HIGH_DIPLOVP' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HIGH_FAVOR' AND Name='InitialValue';

