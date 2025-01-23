/* RHAI inspiration

--------------------------------------------------------------------------------------------------------------------------
-- RH Operations 1 -- Special Thanks - Infixo
--------------------------------------------------------------------------------------------------------------------------

-- Simultanous OPS
UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'BaseOperationsLimits' AND Item = 'OP_DEFENSE'; 
UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'BaseOperationsLimits' AND Item = 'OP_SETTLE'; 
UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'BaseOperationsLimits' AND Item = 'CITY_ASSAULT'; -- testing 3 again (+2 with strength) (think 3 for more commitment)
UPDATE AiFavoredItems SET Value = 1 WHERE ListType = 'PerWarOperationsLimits' AND Item = 'CITY_ASSAULT'; -- testing 2
--UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'PerWarOperationsLimits' AND Item = 'NAVAL_SUPERIORITY'; 

INSERT OR IGNORE INTO AiFavoredItems(ListType, Item, Value) VALUES
('PerWarOperationsLimits', 'NAVAL_SUPERIORITY', 1); -- testing +1 for each war (base is 1)


/*
DELETE FROM Units WHERE UnitType = 'UNIT_ANTIAIR_GUN';

INSERT INTO Units (UnitType, Cost, Maintenance, BaseMoves, BaseSightRange, ZoneOfControl, Domain, Range, AntiAirCombat, FormationClass, PromotionClass, AdvisorType, Name, Description, PurchaseYield, PseudoYieldType, PrereqTech) VALUES

('UNIT_ANTIAIR_GUN', 455, 2, 2, 2, 'false', 'DOMAIN_LAND', 1, 90, 'FORMATION_CLASS_SUPPORT', 'PROMOTION_CLASS_SUPPORT', 'ADVISOR_CONQUEST', 'LOC_UNIT_ANTIAIR_GUN_NAME', 'LOC_UNIT_ANTIAIR_GUN_DESCRIPTION', 'YIELD_GOLD', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 'TECH_ADVANCED_BALLISTICS');
*/
--<Row UnitType="UNIT_ANTIAIR_GUN" Cost="455" Maintenance="2" BaseMoves="2" BaseSightRange="2" ZoneOfControl="false" Domain="DOMAIN_LAND" Range="1" AntiAirCombat="90" FormationClass="FORMATION_CLASS_SUPPORT" PromotionClass="PROMOTION_CLASS_SUPPORT" AdvisorType="ADVISOR_CONQUEST" Name="LOC_UNIT_ANTIAIR_GUN_NAME" Description="LOC_UNIT_ANTIAIR_GUN_DESCRIPTION" PurchaseYield="YIELD_GOLD" PrereqTech="TECH_ADVANCED_BALLISTICS"/>

--<Row UnitType="UNIT_ANTIAIR_GUN" AiType="UNITTYPE_SIEGE_ALL"/>



-- Note Single units only of course - not promotionclasses
UPDATE AiFavoredItems SET Value =  11 WHERE ListType = 'UnitPriorityBoosts' AND Item = 'UNIT_SETTLER'; -- def 1
INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES

--('UnitPriorityBoosts', 'UNIT_NATURALIST', 12), Builds too many 
('UnitPriorityBoosts', 'UNIT_CATAPULT', 4), -- pvs 7, 8, 10, 11 (11 too high), 5
('UnitPriorityBoosts', 'UNIT_GALLEY', -15),

--('UnitPriorityBoosts', 'UNIT_TREBUCHET', 1), -- pvs 10, 11, 5 (disabled as was way too high)

('UnitPriorityBoosts', 'UNIT_ARCHER',	 30), -- pvs 2, 3, 5, 6, 15
('UnitPriorityBoosts', 'UNIT_CROSSBOWMAN', 30), -- useful -- pvs 3, 5, 10, 12, 16
('UnitPriorityBoosts', 'UNIT_BOMBARD', 16), -- 11 was too low -- pvs 12, 13, 15, 10, 13, 15 (needs to be higher as otherwise ai doesn't build them)
('UnitPriorityBoosts', 'UNIT_ARTILLERY', 7), -- pvs 11, 12, 13, 14, 17, 23, 12, 17, 4 (macadon built most artillery) (11 was too high with korea) (9 was still too high with inca)
('UnitPriorityBoosts', 'UNIT_ROCKET_ARTILLERY', 11), -- pvs 10 , 12, 13, 14, 9 (doesn't build any late game otherwise)
('UnitPriorityBoosts', 'UNIT_TANK', 2), -- pvs 4
('UnitPriorityBoosts', 'UNIT_INFANTRY', -5), -- requires oil somehow, pvs -4
('UnitPriorityBoosts', 'UNIT_MECHANIZED_INFANTRY', -5), -- oil also

('UnitPriorityBoosts', 'UNIT_SUBMARINE', -4), -- burns oil (however they don't build that many)
('UnitPriorityBoosts', 'UNIT_AT_CREW', -4),

('UnitPriorityBoosts', 'UNIT_FIGHTER', -65), -- pvs -70
('UnitPriorityBoosts', 'UNIT_JET_BOMBER', 85), -- pvs 90
('UnitPriorityBoosts', 'UNIT_JET_FIGHTER', -70), -- pvs -75

('UnitPriorityBoosts', 'UNIT_NATURALIST', 3),
('UnitPriorityBoosts',    'UNIT_GURU', 	  -20),
('UnitPriorityBoosts', 'UNIT_INQUISITOR', -16),
('UnitPriorityBoosts', 'UNIT_MILITARY_ENGINEER', -80); -- RST -15 pvs -40, -45, -55, -60

INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Favored, Value) VALUES
('UnitPriorityBoosts', 'UNIT_ANTIAIR_GUN', 1, 100), -- pvs 8, 16, 33, 65, 80
('UnitPriorityBoosts', 'UNIT_MOBILE_SAM', 1, 100); -- pvs 65, 80

INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Favored, Value) VALUES
('UnitPriorityBoosts', 'UNIT_BIPLANE', 0, -90),-- pvs 3, pvs 35
('UnitPriorityBoosts', 'UNIT_NUCLEAR_SUBMARINE', 0, -500), -- pvs 37, 28, 20, 0, 4, 2, -8, -25, -30, -37, -40, -48, -51, -100, -200
('UnitPriorityBoosts', 'UNIT_BOMBER', 1, 41); 

INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('UnitPriorityBoosts', 'UNIT_SPEC_OPS', -9), -- pvs -10
('UnitPriorityBoosts', 'UNIT_HELICOPTER', -16); -- pvs -10, 9

INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('UnitPriorityBoosts', 'UNIT_SIEGE_TOWER', 2), -- pvs 8 AI is terrible at using them
('UnitPriorityBoosts', 'UNIT_MEDIC', -75); -- pvs -6, -17, -65
--('UnitPriorityBoosts', 'UNIT_BATTERING_RAM', 2);


--------------------------------------------------------------------------------------------------------------------------
-- Improvements
--------------------------------------------------------------------------------------------------------------------------


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('DefaultImprovements');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('DefaultImprovements', 'TRAIT_LEADER_MAJOR_CIV', 'Improvements');
INSERT INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefaultImprovements', 'IMPROVEMENT_MINE', 1, 40), -- pvs 25 
('DefaultImprovements', 'IMPROVEMENT_PASTURE', 1,  9),
('DefaultImprovements', 'IMPROVEMENT_FORT', 0,  -75); -- pvs -25, -30, -50, -55

INSERT INTO AiFavoredItems (ListType, Item, Value) VALUES
('DefaultImprovements',	'IMPROVEMENT_QUARRY',	-8);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('DefaultImprovements', 'IMPROVEMENT_AIRSTRIP', 1, 10),
('DefaultImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('DefaultImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 0, -80), -- For national parks, ski resorts, culture victory
('DefaultImprovements', 'IMPROVEMENT_SKI_RESORT', 1, 90), -- +1 Amenity
('DefaultImprovements', 'IMPROVEMENT_MISSILE_SILO', 1, 20),
('DefaultImprovements', 'IMPROVEMENT_GEOTHERMAL_PLANT', 1, 90),
('DefaultImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 500),
('DefaultImprovements', 'IMPROVEMENT_OIL_WELL', 1, 500);


--------------------------------------------------------------------------------------------------------------------------
-- Unit Defs Improvements 
--------------------------------------------------------------------------------------------------------------------------

-- assuming scientist is set to leader because of the single healing scientist lol?
DELETE FROM UnitAiInfos WHERE UnitType = 'UNIT_GREAT_SCIENTIST' AND AiType = 'UNITAI_LEADER';

INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType)
SELECT UnitType, 'UNITTYPE_RANGED'
FROM Units
WHERE Domain = 'DOMAIN_AIR';

-- Basic Siege Additons

INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) VALUES
('UNIT_GIANT_DEATH_ROBOT', 'UNITTYPE_SIEGE'),
('UNIT_BATTERING_RAM', 'UNITTYPE_SIEGE'),
('UNIT_SIEGE_TOWER', 'UNITTYPE_SIEGE'),
('UNIT_BOMBER', 'UNITTYPE_SIEGE'), -- Can be used instead of UNIT_ARTILLERY
('UNIT_JET_BOMBER', 'UNITTYPE_SIEGE'); 

-- UNITTYPE_SIEGE_ALL - core + UNIT_BATTERING_RAM, UNIT_SIEGE_TOWER, UNIT_ANTIAIR_GUN, UNIT_MOBILE_SAM, UNIT_SUPPLY_CONVOY


-- New Unit Type AntiAir Support
--INSERT INTO UnitAiTypes (AiType, Priority) VALUES 
--('UNITTYPE_ANTIAIR_SUPPORT', 'true');

INSERT INTO UnitAiTypes(AiType) VALUES ('UNITTYPE_ANTIAIR_SUPPORT');

INSERT INTO UnitAiInfos (UnitType, AiType) VALUES
('UNIT_ANTIAIR_GUN', 'UNITTYPE_ANTIAIR_SUPPORT'),
('UNIT_MOBILE_SAM', 'UNITTYPE_ANTIAIR_SUPPORT');


-- test

UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_AIR_COMBAT' WHERE UnitType = 'UNIT_ANTIAIR_GUN'; 
UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_AIR_COMBAT' WHERE UnitType = 'UNIT_MOBILE_SAM'; 

/*
UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_NUCLEAR_WEAPON' WHERE UnitType = 'UNIT_ANTIAIR_GUN'; 
UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_NUCLEAR_WEAPON' WHERE UnitType = 'UNIT_MOBILE_SAM'; 
*/

--UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST' WHERE UnitType = 'UNIT_ROCK_BAND'; 


UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_COMBAT' WHERE UnitType = 'UNIT_NUCLEAR_SUBMARINE'; 


--UPDATE UnitAiTypes SET Priority = 'false' WHERE AiType = 'UNITTYPE_SIEGE_SUPPORT';

-- New Unit Type Bombard Support
INSERT INTO UnitAiTypes(AiType) VALUES ('UNITTYPE_BOMBARD_SUPPORT');

INSERT INTO UnitAiInfos (UnitType, AiType) VALUES
('UNIT_OBSERVATION_BALLOON', 'UNITTYPE_BOMBARD_SUPPORT'),
('UNIT_SUPPLY_CONVOY', 'UNITTYPE_BOMBARD_SUPPORT'), -- test possibly UNIT_SUPPLY_CONVOY
('UNIT_ANTIAIR_GUN', 'UNITTYPE_BOMBARD_SUPPORT'),
('UNIT_MOBILE_SAM', 'UNITTYPE_BOMBARD_SUPPORT'),
('UNIT_DRONE', 'UNITTYPE_BOMBARD_SUPPORT');

-- New Type Bombard

INSERT INTO UnitAiTypes(AiType) VALUES ('UNITTYPE_BOMBARD');

INSERT INTO UnitAiInfos (UnitType, AiType) VALUES

('UNIT_CATAPULT', 'UNITTYPE_BOMBARD'), -- testing for siege tree
('UNIT_TREBUCHET', 'UNITTYPE_BOMBARD'), -- testing for siege tree
('UNIT_BOMBARD', 'UNITTYPE_BOMBARD'),
('UNIT_ARTILLERY', 'UNITTYPE_BOMBARD'),
('UNIT_ROCKET_ARTILLERY', 'UNITTYPE_BOMBARD');


--INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType) VALUES
--('UNIT_BYZANTINE_TAGMA', 'UNITTYPE_SIEGE_ALL');


INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType)
SELECT 'UNIT_BOMBER', 'UNITTYPE_SIEGE_ALL'
FROM UnitAiTypes
WHERE AiType = 'UNITTYPE_SIEGE_ALL';

INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType)
SELECT 'UNIT_JET_BOMBER', 'UNITTYPE_SIEGE_ALL'
FROM UnitAiTypes
WHERE AiType = 'UNITTYPE_SIEGE_ALL';


-- 		<Row AiType="UNITTYPE_SIEGE_SUPPORT" Priority="true"/> ??


DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_SUPPORT' AND UnitType = 'UNIT_OBSERVATION_BALLOON'; -- temp to boost priority
DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_SUPPORT' AND UnitType = 'UNIT_DRONE';
DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_SUPPORT' AND UnitType = 'UNIT_MILITARY_ENGINEER';
DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_SUPPORT' AND UnitType = 'UNIT_SUPPLY_CONVOY'; -- AI is spaming them
--DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_SUPPORT' AND UnitType = 'UNIT_MEDIC';


DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_ALL' AND UnitType = 'UNIT_SUPPLY_CONVOY';
DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_ALL' AND UnitType = 'UNIT_ANTIAIR_GUN';
DELETE FROM UnitAiInfos WHERE AiType = 'UNITTYPE_SIEGE_ALL' AND UnitType = 'UNIT_MOBILE_SAM';




INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType) VALUES
('UNIT_WARRIOR_MONK', 'UNITAI_EXPLORE'), -- might as well use them for something lol
('UNIT_WARRIOR_MONK', 'UNITTYPE_LAND_COMBAT'),
('UNIT_WARRIOR_MONK', 'UNITAI_COMBAT'),
('UNIT_WARRIOR_MONK', 'UNITTYPE_MELEE');



-- Unit Type Antiair
INSERT OR IGNORE INTO UnitAiTypes(AiType) VALUES ('UNITTYPE_ANTIAIR');
REPLACE INTO UnitAiInfos (UnitType, AiType)
SELECT UnitType, 'UNITTYPE_ANTIAIR'
FROM Units
WHERE AntiAirCombat > 0; -- Includes GDRs

-- Naval Siege
INSERT OR IGNORE INTO UnitAiTypes(AiType) VALUES ('UNITTYPE_NAVAL_SIEGE');
REPLACE INTO UnitAiInfos (UnitType, AiType)
SELECT UnitType, 'UNITTYPE_NAVAL_SIEGE'
FROM Units
WHERE Domain = 'DOMAIN_SEA' AND PromotionClass = 'PROMOTION_CLASS_NAVAL_RANGED' AND Range >= 2;

-- Naval Ranged
INSERT OR IGNORE INTO UnitAiTypes(AiType) VALUES ('UNITTYPE_NAVAL_RANGED');
REPLACE INTO UnitAiInfos (UnitType, AiType)
SELECT UnitType, 'UNITTYPE_NAVAL_SIEGE'
FROM Units
WHERE Domain = 'DOMAIN_SEA' AND PromotionClass = 'PROMOTION_CLASS_NAVAL_RANGED' AND Range >= 1;



-- Naval Melee
REPLACE INTO UnitAiTypes(AiType) VALUES ('UNITTYPE_NAVAL_MELEE');
REPLACE INTO UnitAiInfos (UnitType, AiType)
SELECT UnitType, 'UNITTYPE_NAVAL_MELEE'
FROM Units
WHERE Domain = 'DOMAIN_SEA' AND PromotionClass = 'PROMOTION_CLASS_NAVAL_MELEE';

-- Default Promotion Class Changes (reduced naval melee)

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('DefaultUnitBuilds');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('DefaultUnitBuilds', 'TRAIT_LEADER_MAJOR_CIV', 'UnitPromotionClasses');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefaultUnitBuilds', 'PROMOTION_CLASS_NAVAL_RANGED', 1, 12), -- prvs 8, 10
--('DefaultUnitBuilds', 'PROMOTION_CLASS_NAVAL_RAIDER', 1, 5),
('DefaultUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 14), -- New +1 -- testing +4 (will probs be too high) -reverting back to 2 (testing 5, now 7 as reducing military trait from 20 to 16)
('DefaultUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 4), -- pvs 3, 4 -- back to 4, now 3, 2 (back to 3, 2 is too low)
('DefaultUnitBuilds', 'PROMOTION_CLASS_GIANT_DEATH_ROBOT', 0, -95), -- pvs -8, -18, -38, -46, -65, -76, -70, -76

--('DefaultUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 0, -2), -- Affects late game anti air
('DefaultUnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 1, 35), -- pvs 10, 7, 9, 11, 16
('DefaultUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE', 0,  -10); -- pvs -8



UPDATE Leaders SET OperationList = 'Default_List' WHERE InheritFrom = 'LEADER_DEFAULT';

-- WAR Min Peace and Weariness Adjustments

UPDATE GlobalParameters SET Value = '15' WHERE Name = 'DIPLOMACY_WAR_MIN_TURNS';	 -- Def 10
UPDATE GlobalParameters SET Value = '15' WHERE Name = 'DIPLOMACY_PEACE_MIN_TURNS';	 -- Def 10
UPDATE GlobalParameters SET Value = '100' WHERE Name = 'WARMONGER_LIBERATE_POINTS';	 -- Def Value = 32
UPDATE GlobalParameters SET Value = '220' WHERE Name = 'WAR_WEARINESS_DECAY_TURN_AT_PEACE';	 -- Def Value = 200
UPDATE GlobalParameters SET Value = '2200' WHERE Name = 'WAR_WEARINESS_DECAY_PEACE_DECLARED';	 -- Def Value = 2000

--UPDATE GlobalParameters SET Value = '30' WHERE Name = 'DIPLOMACY_ALLIANCE_TIME_LIMIT';	 -- Value = 30
--UPDATE GlobalParameters SET Value = '28' WHERE Name = 'DIPLOMACY_DECLARED_FRIENDSHIP_TIME_LIMIT';	 -- Value = 30

-- def: 200
UPDATE GlobalParameters SET Value=280 WHERE Name='WARMONGER_RAZE_PENALTY_PERCENT';
-- def: 200
UPDATE GlobalParameters SET Value=230 WHERE Name='WARMONGER_FINAL_MAJOR_CITY_MULTIPLIER'; -- pvs 240
-- def: 100
UPDATE GlobalParameters SET Value=130 WHERE Name='WARMONGER_FINAL_MINOR_CITY_MULTIPLIER';

UPDATE GlobalParameters SET Value = '6' WHERE Name = 'AI_TURNS_BETWEEN_FRIENDSHIP_OFFERS';	 -- Value = 5
--UPDATE GlobalParameters SET Value = '5' WHERE Name = 'AI_TURNS_BETWEEN_PEACE_OFFERS';	 -- Value = 3
UPDATE GlobalParameters SET Value = '14' WHERE Name = 'AI_TURNS_BETWEEN_TRADES';	 -- Value = 10
UPDATE ModifierArguments SET Value = '420' WHERE ModifierId = 'MINOR_CIV_PRODUCTION_WALLS' AND NAME = 'Amount'; -- Def 200


--UPDATE Units SET Maintenance = '2' WHERE UnitType = 'UNIT_MILITARY_ENGINEER'; -- Def = 2

-- Less supply convoys and drones lol
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES -- testing adding unfavored
('UnitPriorityBoosts', 'UNIT_SUPPLY_CONVOY', 0, -70), -- pvs -75
('UnitPriorityBoosts', 'UNIT_OBSERVATION_BALLOON', 0, -75),
('UnitPriorityBoosts', 'UNIT_DRONE', 0, -75);


-- Default AiOperationTypes Values -- Higher value might actually be better?

-- Seems to break city assault operations

/*UPDATE AiOperationTypes SET Value = 0 WHERE OperationType = 'ATTACK_BARBARIANS'; -- Still works
UPDATE AiOperationTypes SET Value = 1 WHERE OperationType = 'CITY_ASSAULT'; (Military Victory Def 2)
UPDATE AiOperationTypes SET Value = 2 WHERE OperationType = 'OP_ESCORT';
UPDATE AiOperationTypes SET Value = 3 WHERE OperationType = 'OP_SETTLE'; -- Still works
UPDATE AiOperationTypes SET Value = 4 WHERE OperationType = 'OP_DEFENSE'; -- Still works */

--UPDATE AiOperationTypes SET Value = 6 WHERE OperationType = 'OP_NUCLEAR'; -- (def 5) -- Not worth changing
--UPDATE AiOperationTypes SET Value = 5 WHERE OperationType = 'NAVAL_SUPERIORITY'; -- pvs Still works

