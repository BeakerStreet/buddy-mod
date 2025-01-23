
-- JOHN CURTIN / AUSTRALIA


/*
		<Row LeaderType="LEADER_JOHN_CURTIN" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		<Row LeaderType="LEADER_JOHN_CURTIN" TraitType="TRAIT_LEADER_LOW_CITY_STATE_PREFERENCE_WAR"/>
		<Row LeaderType="LEADER_JOHN_CURTIN" TraitType="TRAIT_LEADER_SCIENCE_MAJOR_CIV"/>
		
		<Row ListType="CurtinCivics" Item="CIVIC_DIPLOMATIC_SERVICE" Favored="true"/>
		<Row ListType="CurtinCivics" Item="CIVIC_GUILDS" Favored="true"/>
		<Row ListType="CurtinCivics" Item="CIVIC_RAPID_DEPLOYMENT" Favored="true"/>
		<Row ListType="CurtinDiplomacy" Item="DIPLOACTION_LIBERATE_CITY" Favored="true"/>
		<Row ListType="CurtinTechs" Item="TECH_ANIMAL_HUSBANDRY" Favored="true"/>
		<Row ListType="CurtinTechs" Item="TECH_STEAM_POWER" Favored="true"/>
		<Row ListType="CurtinTechs" Item="TECH_REPLACEABLE_PARTS" Favored="true"/>
		<Row ListType="CurtinWonders" Item="BUILDING_EIFFEL_TOWER" Favored="true"/>
*/


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
--('CurtinBuildings'),
('CurtinSettlement'),
('CurtinDistricts'),
('CurtinPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
--('CurtinBuildings',   'TRAIT_LEADER_CITADEL_CIVILIZATION', 'Buildings'),
('CurtinSettlement',   'TRAIT_LEADER_CITADEL_CIVILIZATION', 'PlotEvaluations'),
('CurtinDistricts',   'TRAIT_LEADER_CITADEL_CIVILIZATION', 'Districts'),
('CurtinPseudoYields', 'TRAIT_LEADER_CITADEL_CIVILIZATION', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('CurtinSettlement', 'Coastal', 0, 11), -- +3 housing

('CurtinWonders', 'BUILDING_TEMPLE_ARTEMIS', 		1, 15), -- tier 5 pastures start bias

('CurtinDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('CurtinDiplomacy', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 80),
('CurtinDiplomacy', 'DIPLOACTION_DECLARE_PROTECTORATE_WAR', 1, 0),
('CurtinDiplomacy', 'DIPLOACTION_DECLARE_RECONQUEST_WAR', 1, 0),

('CurtinDistricts', 'DISTRICT_CAMPUS', 1, 30), -- High adj from high appeal
('CurtinDistricts', 'DISTRICT_THEATER', 1, 30), -- High adj

--('CurtinDiplomacy', 'DIPLOACTION_LIBERATE_CITY', 1, 0), -- already exists now

('CurtinPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 		1, 35),
('CurtinPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, 8), -- Friendly

('CurtinPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 				1, 15), -- unique outback farm replacement   

('CurtinPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 			1, 20), 
('CurtinPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 				1, 5), -- small Harbour boost
('CurtinPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 				1, 5), -- potentially high adj commerical hubs 

('CurtinPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 5), -- small but effective army
('CurtinPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 		1, 20),

('CurtinPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 	1, 50),
('CurtinPseudoYields', 'PSEUDOYIELD_CITY_BASE', 				1, -35),
('CurtinPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES',				 1, 12),
('CurtinPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',		 1, 15),
('CurtinPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 				1, 20);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES

('CurtinSettlement', 'Specific Resource', 0, 3, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- base 1 (culture bomb on pastures and temple artemis)

('CurtinSettlement', 'Inner Ring Yield', 0, 1, 'YIELD_SCIENCE', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- base 1 (natural wonder)
('CurtinSettlement', 'Inner Ring Yield', 0, 1, 'YIELD_CULTURE', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- base 1 (natural wonder)
('CurtinSettlement', 'Inner Ring Yield', 0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- base 1 (natural wonder)

('CurtinSettlement', 'Total Yield', 0, 1, 'YIELD_CULTURE', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('CurtinSettlement', 'Total Yield', 0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1

('CurtinSettlement', 'Specific Terrain', 0, 8, 'TERRAIN_GRASS_MOUNTAIN', NULL),
('CurtinSettlement', 'Specific Terrain', 0, 8, 'TERRAIN_PLAINS_MOUNTAIN', NULL),

('CurtinSettlement', 'Specific Feature', 0, 6, 'FEATURE_VOLCANO', NULL);



INSERT OR IGNORE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'CurtinSettlement', 0, 2, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES' -- 5, 4 too high
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true"
