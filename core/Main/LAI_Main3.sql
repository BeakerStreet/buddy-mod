/* RHAI inspiration

-- AUTHOR: ROMANHOLIDAY	
--------------------------------------------------------------------------------------------------------------------------
-- AI Various Tweaks, Disabled Units / Small niche boosts to improve strategy where it cannot be changed
--------------------------------------------------------------------------------------------------------------------------

-- Disable late game military engineer at satellites

INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'RH_DIS_MILITARY_ENGINEER');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,						ModifierType,							SubjectRequirementSetId)
VALUES		('RH_DIS_MILITARY_ENGINEER',	'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'RH_HAS_TECH_SATELLITES_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,						Name,			Value)
VALUES		
			('RH_DIS_MILITARY_ENGINEER',	'UnitType',		'UNIT_MILITARY_ENGINEER');

INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('RH_HAS_TECH_SATELLITES_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('RH_HAS_TECH_SATELLITES_REQ_S', 'RH_HAS_TECH_SATELLITES_REQ'),
		('RH_HAS_TECH_SATELLITES_REQ_S', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('RH_HAS_TECH_SATELLITES_REQ', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('RH_HAS_TECH_SATELLITES_REQ','TechnologyType', 'TECH_SATELLITES');



-- Nuclear Subs

INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'RH_NO_SUBS_LATE');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,						ModifierType,							SubjectRequirementSetId)
VALUES		('RH_NO_SUBS_LATE',	'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'RH_HAS_TECH_SMART_MATERIALS_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,						Name,			Value)
VALUES		
			('RH_NO_SUBS_LATE',	'UnitType',		'UNIT_NUCLEAR_SUBMARINE');

INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('RH_HAS_TECH_SMART_MATERIALS_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('RH_HAS_TECH_SMART_MATERIALS_REQ_S', 'RH_SMART_MATERIALS_REQ'),
		('RH_HAS_TECH_SMART_MATERIALS_REQ_S', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('RH_SMART_MATERIALS_REQ', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('RH_SMART_MATERIALS_REQ','TechnologyType', 'TECH_SMART_MATERIALS'); -- pvs smart materials, nuclear fusion -- offworld mission unlocks booster projects


--------------------------------------------------------------------------------------------------------------------------
-- Disable Farms on Hills (for AI)

DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_FARM' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_FARM' and TerrainType = 'TERRAIN_GRASS_HILLS');

INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_HILLS_IMPROVEMENT_FARM'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_FARM');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_HILLS_IMPROVEMENT_FARM',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI_HAS_CIVIL_ENGINEERING'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_FARM',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI_HAS_CIVIL_ENGINEERING');

INSERT OR IGNORE INTO	ModifierArguments
			(ModifierId,								Name,				Value)
VALUES		('TERRAIN_PLAINS_HILLS_IMPROVEMENT_FARM',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TERRAIN_PLAINS_HILLS_IMPROVEMENT_FARM',	'ImprovementType',	'IMPROVEMENT_FARM'),
			
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_FARM',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_FARM',	'ImprovementType',	'IMPROVEMENT_FARM');


INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('PLAYER_IS_NOT_AI_HAS_CIVIL_ENGINEERING', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('PLAYER_IS_NOT_AI_HAS_CIVIL_ENGINEERING', 'NEED_CIVIL_ENGINEERING'),
		('PLAYER_IS_NOT_AI_HAS_CIVIL_ENGINEERING', 'REQUIRES_PLAYER_IS_NOT_AI');
		
INSERT OR IGNORE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('NEED_CIVIL_ENGINEERING',		'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_PLAYER_IS_NOT_AI', 	'REQUIREMENT_PLAYER_IS_HUMAN');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('NEED_CIVIL_ENGINEERING',	'CivicType', 'CIVIC_CIVIL_ENGINEERING');



--------------------------------------------------------------------------------------------------------------------------
-- AI Ignore Certain Improvements it spams
--------------------------------------------------------------------------------------------------------------------------

DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_SOLAR_FARM' and TerrainType = 'TERRAIN_PLAINS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_SOLAR_FARM' and TerrainType = 'TERRAIN_GRASS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_WIND_FARM' and TerrainType = 'TERRAIN_PLAINS_HILLS');
DELETE From Improvement_ValidTerrains
WHERE (ImprovementType = 'IMPROVEMENT_WIND_FARM' and TerrainType = 'TERRAIN_GRASS_HILLS');


INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_IMPROVEMENT_SOLAR_FARM'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_IMPROVEMENT_SOLAR_FARM'),
			
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_PLAINS_HILLS_IMPROVEMENT_WIND_FARM'),
			('TRAIT_LEADER_MAJOR_CIV',	'TERRAIN_GRASS_HILLS_IMPROVEMENT_WIND_FARM');


INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_SOLAR_FARM',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_IMPROVEMENT_SOLAR_FARM',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			
			('TERRAIN_PLAINS_HILLS_IMPROVEMENT_WIND_FARM',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_WIND_FARM',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_NOT_AI');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,								Name,			Value)
VALUES		('TERRAIN_PLAINS_IMPROVEMENT_SOLAR_FARM',	'TerrainType',		'TERRAIN_PLAINS'),
			('TERRAIN_PLAINS_IMPROVEMENT_SOLAR_FARM',	'ImprovementType',	'IMPROVEMENT_SOLAR_FARM'),
			('TERRAIN_GRASS_IMPROVEMENT_SOLAR_FARM',	'TerrainType',		'TERRAIN_GRASS'),
			('TERRAIN_GRASS_IMPROVEMENT_SOLAR_FARM',	'ImprovementType',	'IMPROVEMENT_SOLAR_FARM'),
			
			('TERRAIN_PLAINS_HILLS_IMPROVEMENT_WIND_FARM',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('TERRAIN_PLAINS_HILLS_IMPROVEMENT_WIND_FARM',	'ImprovementType',	'IMPROVEMENT_WIND_FARM'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_WIND_FARM',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('TERRAIN_GRASS_HILLS_IMPROVEMENT_WIND_FARM',	'ImprovementType',	'IMPROVEMENT_WIND_FARM');
			
			
INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('PLAYER_IS_NOT_AI', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('PLAYER_IS_NOT_AI', 'REQUIRES_PLAYER_IS_NOT_AI');
		

--------------------------------------------------------------------------------------------------------------------------
-- Ai luxury extra amenity (to temporaily compensate for the AI paying sometimes absurd amounts of gold for them/ them selling of their duplicates to the player for 70 gold)


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType, ModifierId)
VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'RH_AMENITIES_COMP_EARLY');

INSERT OR IGNORE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
		('RH_AMENITIES_COMP_EARLY', 'MODIFIER_PLAYER_OWNED_LUXURY_EXTRA_AMENITIES','RH_AMENITIES_COMP_EARLY_REQUIREMENT');

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('RH_AMENITIES_COMP_EARLY', 'Amount', 1);
		

INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('RH_AMENITIES_COMP_EARLY_REQUIREMENT', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('RH_AMENITIES_COMP_EARLY_REQUIREMENT', 'REQUIRES_PLAYER_IS_AI');


-- 2

INSERT OR IGNORE INTO TraitModifiers 
		(TraitType, ModifierId)
VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'RH_AMENITIES_COMP_LATE');

INSERT OR IGNORE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
		('RH_AMENITIES_COMP_LATE', 'MODIFIER_PLAYER_OWNED_LUXURY_EXTRA_AMENITIES','RH_AMENITIES_COMP_LATE_REQ_S');

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('RH_AMENITIES_COMP_LATE', 'Amount', 1);
		

INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('RH_AMENITIES_COMP_LATE_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('RH_AMENITIES_COMP_LATE_REQ_S', 'REQUIRES_PLAYER_IS_AI'),
		('RH_AMENITIES_COMP_LATE_REQ_S', 'REQUIRES_RH_IMMORTAL'),		
		('RH_AMENITIES_COMP_LATE_REQ_S', 'RH_HAS_TECH_ECONOMICS_REQ');

INSERT OR IGNORE INTO Requirements  (RequirementId, RequirementType)  VALUES
		('RH_HAS_TECH_ECONOMICS_REQ', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
		('REQUIRES_RH_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0);

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value)  VALUES
		('RH_HAS_TECH_ECONOMICS_REQ','TechnologyType', 'TECH_ECONOMICS');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_RH_IMMORTAL', 									'Handicap', 				'DIFFICULTY_IMMORTAL');


--------------------------------------------------------------------------------------------------------------------------
-- BARBARIANCOMBAT_AI
--------------------------------------------------------------------------------------------------------------------------

/*
REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'BARBARIANCOMBAT_AI');

REPLACE INTO	Modifiers	
			(ModifierId,				ModifierType,									 SubjectRequirementSetId)
VALUES		('BARBARIANCOMBAT_AI',	'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT', 'PLAYER_IS_AI');

REPLACE INTO	ModifierArguments	
			(ModifierId,				Name,			Value)
VALUES		
			('BARBARIANCOMBAT_AI',	'Amount',		3);
*/

--------------------------------------------------------------------------------------------------------------------------
-- AI extra district slot for having both commerical hub and habour (stupid ai lol) (this is already now disabled for naval strategy as AI only builds harbour)
--------------------------------------------------------------------------------------------------------------------------

/*
INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'AI_COMMERCIAL_HUB_HARBOR_EXTRA_DISTRICT_EACH_CITY');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,											ModifierType,								SubjectRequirementSetId)
VALUES		('AI_COMMERCIAL_HUB_HARBOR_EXTRA_DISTRICT_EACH_CITY',	'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT',	'AI_HAS_COMMERCIAL_HUB_HARBOR');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,				Name,			Value)
VALUES		
			('AI_COMMERCIAL_HUB_HARBOR_EXTRA_DISTRICT_EACH_CITY',	'Amount',		1);


INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('AI_HAS_COMMERCIAL_HUB_HARBOR', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('AI_HAS_COMMERCIAL_HUB_HARBOR', 'REQUIRES_PLAYER_IS_AI'),
		('AI_HAS_COMMERCIAL_HUB_HARBOR', 'REQUIRES_CITY_HAS_HARBOR'),
		('AI_HAS_COMMERCIAL_HUB_HARBOR', 'REQUIRES_CITY_HAS_COMMERCIAL_HUB');
*/

--------------------------------------------------------------------------------------------------------------------------
-- AI extra builder movement (+1) to help fix builder priority bug
--------------------------------------------------------------------------------------------------------------------------

INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'AI_BUILDER_MOVEMENT');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,			ModifierType,														SubjectRequirementSetId)
VALUES		('AI_BUILDER_MOVEMENT',	'MODIFIER_PLAYER_UNITS_ADJUST_FRIENDLY_TERRITORY_START_MOVEMENT',	'UNIT_IS_AI_BUILDER');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,				Name,			Value)
VALUES		
			('AI_BUILDER_MOVEMENT',		'Amount',		1);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId, RequirementSetType)
VALUES
		('UNIT_IS_AI_BUILDER', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('UNIT_IS_AI_BUILDER', 'REQUIRES_PLAYER_IS_AI'),
		('UNIT_IS_AI_BUILDER', 'REQUIREMENT_UNIT_IS_BUILDER');
		
		

-------------------------------------------------------------------------------------------------------------------------
-- AI Rationalism policy card simulation at IDEOLOGY 
--------------------------------------------------------------------------------------------------------------------------


REPLACE INTO TraitModifiers 
		(TraitType, ModifierId)
VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'RATIONALISM_HIGH_POP_FOR_AI'),
		('TRAIT_LEADER_MAJOR_CIV', 'RATIONALISM_HIGH_ADJACENCY_FOR_AI');

REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
		('RATIONALISM_HIGH_POP_FOR_AI', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT','AI_CITY_HAS_HIGH_POPULATION'),
		('RATIONALISM_HIGH_ADJACENCY_FOR_AI', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT', 'AI_CAMPUS_HAS_HIGH_ADJACENCY');


REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('RATIONALISM_HIGH_POP_FOR_AI' , 'DistrictType' , 	'DISTRICT_CAMPUS'),
		('RATIONALISM_HIGH_POP_FOR_AI' , 'YieldType' , 		'YIELD_SCIENCE'),
		('RATIONALISM_HIGH_POP_FOR_AI' , 'Amount'    ,		 50),

		('RATIONALISM_HIGH_ADJACENCY_FOR_AI' , 'DistrictType' , 'DISTRICT_CAMPUS'),
		('RATIONALISM_HIGH_ADJACENCY_FOR_AI' , 'YieldType'    , 'YIELD_SCIENCE'),
		('RATIONALISM_HIGH_ADJACENCY_FOR_AI' , 'Amount'       , 50);


REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('AI_CITY_HAS_HIGH_POPULATION', 'REQUIREMENTSET_TEST_ALL'),
		('AI_CAMPUS_HAS_HIGH_ADJACENCY', 'REQUIREMENTSET_TEST_ALL');
		
REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('AI_CITY_HAS_HIGH_POPULATION', 'REQUIRES_CITY_HAS_HIGH_POPULATION_15'),
		('AI_CITY_HAS_HIGH_POPULATION', 'REQUIRES_PLAYER_IS_AI'),
		('AI_CITY_HAS_HIGH_POPULATION', 'AI_NEED_CIVIC_IDEOLOGY'),
		
		('AI_CAMPUS_HAS_HIGH_ADJACENCY', 'REQUIRES_CAMPUS_HAS_ADJACENCY_4'),
		('AI_CAMPUS_HAS_HIGH_ADJACENCY', 'REQUIRES_PLAYER_IS_AI'),
		('AI_CAMPUS_HAS_HIGH_ADJACENCY', 'AI_NEED_CIVIC_IDEOLOGY');
		
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('AI_NEED_CIVIC_IDEOLOGY',					'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_CITY_HAS_HIGH_POPULATION_15',	'REQUIREMENT_CITY_HAS_X_POPULATION'),
		('REQUIRES_CAMPUS_HAS_ADJACENCY_4',			'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');

REPLACE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('AI_NEED_CIVIC_IDEOLOGY',	'CivicType', 'CIVIC_IDEOLOGY'),

		('REQUIRES_CAMPUS_HAS_ADJACENCY_4',	'DistrictType', 'DISTRICT_CAMPUS'),
		('REQUIRES_CAMPUS_HAS_ADJACENCY_4',	'YieldType', 'YIELD_SCIENCE'),
		('REQUIRES_CAMPUS_HAS_ADJACENCY_4',	'Amount', 4),

		('REQUIRES_CITY_HAS_HIGH_POPULATION_15', 'Amount', 15);		


--------------------------------------------------------------------------------------------------------------------------
-- AI Default Funds Priorities 
--------------------------------------------------------------------------------------------------------------------------

UPDATE AiFavoredItems SET Value = 1 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_GREAT_PEOPLE';
UPDATE AiFavoredItems SET Value = 3 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_PLOTS';
UPDATE AiFavoredItems SET Value = 3 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_UNITS';
UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_SLUSH_FUND';

-- testing 1, 3, 3, 4
-- todo units Priority for military units??


--------------------------------------------------------------------------------------------------------------------------
-- 2 (obvious) bugfixes

UPDATE AiFavoredItems SET Item = 'BUILDING_VENETIAN_ARSENAL' WHERE Item = 'BUILDING_VENTIAN_ARSENAL';

INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType) VALUES ('UNIT_NATURALIST', 'UNITAI_BUILD'); -- national parks


--------------------------------------------------------------------------------------------------------------------------
-- AI slight unit maintenance discount at guilds/ cold war (to make up for deleted starting units / for less late game unit deletion)


REPLACE INTO Requirements (RequirementId, RequirementType)  VALUES
		('RH_AI_HAS_CIVIC_GUILDS', 											'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('RH_AI_HAS_CIVIC_URBANIZATION', 									'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('RH_AI_HAS_CIVIC_COLD_WAR',										'REQUIREMENT_PLAYER_HAS_CIVIC');

REPLACE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
	
		('RH_AI_HAS_CIVIC_GUILDS',				'CivicType', 'CIVIC_FEUDALISM'),
		('RH_AI_HAS_CIVIC_URBANIZATION',		'CivicType', 'CIVIC_URBANIZATION'),
		('RH_AI_HAS_CIVIC_COLD_WAR',			'CivicType', 'CIVIC_COLD_WAR');


REPLACE INTO TraitModifiers (TraitType, ModifierId) VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'RH_MAINTENANCE_DIS'),
		('TRAIT_LEADER_MAJOR_CIV', 'RH_MAINTENANCE_DIS_2'),
		('TRAIT_LEADER_MAJOR_CIV', 'RH_MAINTENANCE_DIS_3');

REPLACE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
		('RH_MAINTENANCE_DIS',	 'MODIFIER_PLAYER_ADJUST_UNIT_MAINTENANCE_DISCOUNT','PLAYER_IS_AI'),
		('RH_MAINTENANCE_DIS_2', 'MODIFIER_PLAYER_ADJUST_UNIT_MAINTENANCE_DISCOUNT','AI_CIVIC_GUILDS_FOR_DISCOUNT'),
		('RH_MAINTENANCE_DIS_3', 'MODIFIER_PLAYER_ADJUST_UNIT_MAINTENANCE_DISCOUNT','AI_CIVIC_COLD_WAR_FOR_DISCOUNT');

REPLACE INTO ModifierArguments  (ModifierId, Name, Value)  VALUES
		('RH_MAINTENANCE_DIS',   'Amount', 1),
		('RH_MAINTENANCE_DIS_2', 'Amount', 1),
		('RH_MAINTENANCE_DIS_3', 'Amount', 2);

REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('AI_CIVIC_GUILDS_FOR_DISCOUNT',		'REQUIREMENTSET_TEST_ALL'),
		('AI_CIVIC_COLD_WAR_FOR_DISCOUNT', 	'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements  (RequirementSetId, RequirementId)  VALUES
		('AI_CIVIC_GUILDS_FOR_DISCOUNT',		'RH_AI_HAS_CIVIC_GUILDS'),
		('AI_CIVIC_GUILDS_FOR_DISCOUNT',		'REQUIRES_PLAYER_IS_AI'),
		('AI_CIVIC_COLD_WAR_FOR_DISCOUNT',		'RH_AI_HAS_CIVIC_COLD_WAR'),
		('AI_CIVIC_COLD_WAR_FOR_DISCOUNT',		'REQUIRES_PLAYER_IS_AI');



--------------------------------------------------------------------------------------------------------------------------
-- 30% production towards Spaceport (builds perhaps twice as many as needed), Canals and Aqeuducts, (builds too many Aqueducts) (I've added a preference for more canals as is fun for navies)

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'AI_AQUEDUCT_PRODUCTION'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_CANAL_PRODUCTION'),
	--	('TRAIT_LEADER_MAJOR_CIV', 'AI_REN_WALLS_PRODUCTION'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_SPACEPORT_PRODUCTION');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)  VALUES
		('AI_AQUEDUCT_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION','PLAYER_IS_AI'),
		('AI_CANAL_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION','PLAYER_IS_AI'),
		('AI_SPACEPORT_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION','PLAYER_IS_AI');
	--	('AI_REN_WALLS_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION','PLAYER_IS_AI');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value)  VALUES
		('AI_CANAL_PRODUCTION', 'DistrictType', 'DISTRICT_CANAL'),
		('AI_CANAL_PRODUCTION', 'Amount', 40),
		
		('AI_AQUEDUCT_PRODUCTION', 'DistrictType', 'DISTRICT_AQUEDUCT'),
		('AI_AQUEDUCT_PRODUCTION', 'Amount', 30),
		
		('AI_SPACEPORT_PRODUCTION', 'DistrictType', 'DISTRICT_SPACEPORT'),
		('AI_SPACEPORT_PRODUCTION', 'Amount', 30);

	--	('AI_REN_WALLS_PRODUCTION', 'BuildingType', 'BUILDING_STAR_FORT'),
	--	('AI_REN_WALLS_PRODUCTION', 'Amount', 30);


--------------------------------------------------------------------------------------------------------------------------
-- Worlds fair Artist and Musician set to 0

UPDATE CongressAiChanges SET Value = 90 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ARTIST';
UPDATE CongressAiChanges SET Value = 200 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MUSICIAN';

UPDATE CongressAiChanges SET Value = 210 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_SCIENTIST';
UPDATE CongressAiChanges SET Value = 240 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ENGINEER';


-- Natural Wonder Fixes
INSERT OR IGNORE INTO TypeTags (Type, Tag) VALUES ('ABILITY_ALPINE_TRAINING', 'CLASS_WARRIOR_MONK'); 
INSERT OR IGNORE INTO TypeTags (Type, Tag) VALUES ('ABILITY_ALPINE_TRAINING', 'CLASS_HEAVY_CHARIOT'); 

--------------------------------------------------------------------------------------------------------------------------
-- AI Army upgrade resource discount


REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'AI_ARMY_UPGRADE_RESOURCE_DISCOUNT');

REPLACE INTO	Modifiers	
			(ModifierId,							ModifierType,													SubjectRequirementSetId)
VALUES		('AI_ARMY_UPGRADE_RESOURCE_DISCOUNT',	'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_RESOURCE_COST_MODIFIER',	'PLAYER_IS_AI');

REPLACE INTO ModifierArguments
			(ModifierId, Name, Value)
VALUES		('AI_ARMY_UPGRADE_RESOURCE_DISCOUNT', 'Amount', 35);


REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_ARMY_UPGRADE_ENCOURAGE');

REPLACE INTO	Modifiers	
			(ModifierId,							ModifierType,													SubjectRequirementSetId)
VALUES		('RH_AI_ARMY_UPGRADE_ENCOURAGE',	'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_DISCOUNT_PERCENT',	'PLAYER_IS_AI');

REPLACE INTO ModifierArguments
			(ModifierId, Name, Value)
VALUES		('RH_AI_ARMY_UPGRADE_ENCOURAGE', 'Amount', 35);


--------------------------------------------------------------------------------------------------------------------------
-- Ai slight unit purchase resource discount 

REPLACE INTO	TraitModifiers	(TraitType,	ModifierId) VALUES	
	
			('TRAIT_LEADER_MAJOR_CIV',	'AI_ARMY_STRATEGIC_RESOURCE_COST_DISCOUNT');

REPLACE INTO	Modifiers  (ModifierId,		ModifierType,		SubjectRequirementSetId) VALUES	
	
			('AI_ARMY_STRATEGIC_RESOURCE_COST_DISCOUNT',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_AI'),
			('AI_ARMY_STRATEGIC_RESOURCE_COST_DISCOUNT_MODIFIER',	'MODIFIER_CITY_ADJUST_STRATEGIC_RESOURCE_REQUIREMENT_MODIFIER',		null);

REPLACE INTO ModifierArguments (ModifierId, Name, Value) VALUES		
			('AI_ARMY_STRATEGIC_RESOURCE_COST_DISCOUNT', 'ModifierId', 'AI_ARMY_STRATEGIC_RESOURCE_COST_DISCOUNT_MODIFIER'),
			('AI_ARMY_STRATEGIC_RESOURCE_COST_DISCOUNT_MODIFIER', 'Amount', 20);

