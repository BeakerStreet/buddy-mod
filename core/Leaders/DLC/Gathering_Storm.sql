
-- Gathering Storm Leader Improvements and Adjustments


-- ELEANOR_ENGLAND and FRANCE


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('EleanorYields'),
('EleanorPseudoYields'),
('EleanorProjects');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('EleanorYields',       'TRAIT_LEADER_ELEANOR_LOYALTY', 'Yields'),
('EleanorPseudoYields', 'TRAIT_LEADER_ELEANOR_LOYALTY', 'PseudoYields'),
('EleanorProjects', 'TRAIT_LEADER_ELEANOR_LOYALTY', 'Projects');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EleanorYields', 'YIELD_FOOD', 1, 16),
('EleanorYields', 'YIELD_CULTURE', 1, 20),
('EleanorYields', 'YIELD_SCIENCE', 1, -1),
('EleanorYields', 'YIELD_PRODUCTION', 1, -2),
('EleanorYields', 'YIELD_GOLD', 1, 3), -- To buy great works / tourism
('EleanorYields', 'YIELD_FAITH', 1, 10), -- pvs 8

('EleanorPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 100),
('EleanorPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 45),
('EleanorPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 5),
('EleanorPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 52),
('EleanorPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 25), -- Food
('EleanorPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',    1, 26), -- Loyalty
('EleanorPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE',    1, 32), -- Loyalty
('EleanorPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS',    1, 32), -- def 0.73 -- Rock bands loyalty promotion also
--('EleanorPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL',    0, -5),
('EleanorPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',    0, -15),
('EleanorPseudoYields', 'PSEUDOYIELD_GPP_WRITER',    1, 50), -- 0.6
('EleanorPseudoYields', 'PSEUDOYIELD_GPP_ARTIST',    1, 40), -- Loyalty -- def 0.6
('EleanorPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN',  1, 40), -- def 0.5 (lower base value)
('EleanorPseudoYields', 'PSEUDOYIELD_WONDER', 1, 20), -- Golden Ages
('EleanorPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 30),
('EleanorPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 19), -- Golden Ages
('EleanorPseudoYields', 'PSEUDOYIELD_GOLDENAGE_POINT', 1, 55);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EleanorProjects', 'PROJECT_BREAD_AND_CIRCUSES', 1, 800),
('EleanorProjects', 'PROJECT_WATER_BREAD_AND_CIRCUSES', 1, 0); -- Loyalty

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_ELEANOR_ENGLAND',				'AGENDA_GREAT_PERSON_ADVOCATE',				27);

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	--	('LEADER_ELEANOR_FRANCE',				'AGENDA_WONDER_ADVOCATE',				15),
	--	('LEADER_ELEANOR_FRANCE',				'AGENDA_GREAT_PERSON_ADVOCATE',				33);

/*
		<Row ListType="EleanorCivics" Item="CIVIC_DRAMA_POETRY" Favored="true"/>
		<Row ListType="EleanorCivics" Item="CIVIC_HUMANISM" Favored="true"/>
		<Row ListType="EleanorDistricts" Item="DISTRICT_THEATER" Favored="true"/>
		<Row ListType="EleanorWonders" Item="BUILDING_ESTADIO_DO_MARACANA" Favored="true"/>
		<Row ListType="EleanorWonders" Item="BUILDING_COLOSSEUM" Favored="true"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_SCULPTURE" Value="50"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_PORTRAIT" Value="50"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_LANDSCAPE" Value="50"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_RELIGIOUS" Value="50"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_ARTIFACT" Value="50"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_WRITING" Value="50"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_MUSIC" Value="50"/>
		<Row ListType="EleanorGreatWorks" Item="PSEUDOYIELD_GREATWORK_RELIC" Value="50"/>
		<Row ListType="EleanorAlliances" Item="ALLIANCE_CULTURAL" Favored="false"/>
*/

-- Could be Useful for Eleanor
/*
	<AgendaPreferredLeaders>
		<Row AgendaType="AGENDA_GREAT_PERSON_ADVOCATE" LeaderType="LEADER_KRISTINA" PercentageChance="20"/>
	</AgendaPreferredLeaders>
*/


-- MANSA_MUSA / MALI -- Mali Civ Trait -- TRAIT_CIVILIZATION_MALI_GOLD_DESERT

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('MansaMusaDiplomacy'),
('MansaMusaYields'),
('MansaMusaSavings'),
('MansaMusaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MansaMusaDiplomacy',    'TRAIT_LEADER_SAHEL_MERCHANTS', 'DiplomaticActions'),
('MansaMusaYields',       'TRAIT_LEADER_SAHEL_MERCHANTS', 'Yields'), -- bringing back as was breaking COMPATIBILITY with it disabled
('MansaMusaPseudoYields', 'TRAIT_LEADER_SAHEL_MERCHANTS', 'PseudoYields'),
('MansaMusaSavings',  			 'TRAIT_LEADER_SAHEL_MERCHANTS', 'SavingTypes');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('MansaMusaSavings', 'SAVING_GREAT_PEOPLE', 								 0), -- def 1
('MansaMusaSavings', 'SAVING_UNITS', 										 -1),
('MansaMusaSavings', 'SAVING_PLOTS', 										1); -- def 2
--('MansaMusaSavings', 'SAVING_SLUSH_FUND', 								 0); -- def 4


-- 1, 1, 3, 4

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MansaMusaCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('MansaMusaDiplomacy', 'DIPLOACTION_ALLIANCE_ECONOMIC', 1, 0),
('MansaMusaDiplomacy', 'DIPLOACTION_ALLIANCE_RELIGIOUS', 1, 0),

('MansaMusaYields', 'YIELD_FAITH', 1, 18), -- pvs 19
--('MansaMusaYields', 'YIELD_GOLD', 1, 10), -- 32 Already exists in Agenda and 20 in yields
('MansaMusaYields', 'YIELD_PRODUCTION', 1, -15),

('MansaMusaTechs', 'TECH_MATHEMATICS', 1, 0), -- Petra

('MansaMusaWonders', 'BUILDING_GOV_FAITH', 1, 900), -- To buy units

('MansaMusaPseudoYields', 'PSEUDOYIELD_GOLDENAGE_POINT', 1, 25),
('MansaMusaPseudoYields', 'PSEUDOYIELD_WONDER', 1, 15), -- Golden age and no production penalty (apart from lost prd from mines)
('MansaMusaPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 15), -- golden / trade
--('MansaMusaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 50), -- +1 gold for each flat desert tile - international
('MansaMusaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 15),
('MansaMusaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 65);


/*
		<Row ListType="LordOfMinesPseudoYields" Item="PSEUDOYIELD_UNIT_TRADE" Value="50"/>
		<Row ListType="LordOfMinesYields" Item="YIELD_GOLD" Value="25"/>
		<Row ListType="MansaMusaGold" Item="YIELD_GOLD" Value="20"/>
		<Row ListType="MansaMusaCivics" Item="CIVIC_GUILDS" Favored="true"/>
		<Row ListType="MansaMusaTechs" Item="TECH_CURRENCY" Favored="true"/>
		<Row ListType="MansaMusaTechs" Item="TECH_STIRRUPS" Favored="true"/>
		<Row ListType="MansaMusaWonders" Item="BUILDING_UNIVERSITY_SANKORE" Favored="true"/>
		<Row ListType="MansaMusaWonders" Item="BUILDING_PETRA" Favored="true"/>
		<Row ListType="MansaMusaWonders" Item="BUILDING_COLOSSUS" Favored="true"/>
		<Row ListType="MansaMusaWonders" Item="BUILDING_BIG_BEN" Favored="true"/>
		<Row ListType="MansaMusaWonders" Item="BUILDING_GREAT_ZIMBABWE" Favored="true"/>
		<Row ListType="MansaMusaGold" Item="YIELD_GOLD" Value="20"/>
*/
UPDATE AiFavoredItems SET Value = 35 WHERE ListType = 'LordOfMinesYields' AND Item = 'YIELD_GOLD'; -- has gold preference in agenda as well for some reason

-- Desert Settlement Preference??


-- MATTHIAS_CORVINUS / HUNGARY

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MATTHIAS_CORVINUS', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('MatthiasSettlement'),
('MatthiasBuildings'),
('MatthiasDistricts'),
('MatthiasDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MatthiasSettlement', 'TRAIT_LEADER_RAVEN_KING', 'PlotEvaluations'),
('MatthiasBuildings',  'TRAIT_LEADER_RAVEN_KING', 'Buildings'),
('MatthiasDistricts',  'TRAIT_LEADER_RAVEN_KING', 'Districts'),
('MatthiasDiplomacy',  'TRAIT_LEADER_RAVEN_KING', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MatthiasBuildings', 'BUILDING_GOV_CITYSTATES', 1, 500), -- CS levy discount / combat strength, important!
('MatthiasBuildings', 'BUILDING_GOV_SPIES', 0, -500),
('MatthiasBuildings', 'BUILDING_GOV_FAITH', 0, -500),

('MatthiasBuildings', 'BUILDING_GOV_WIDE', 1, 200),
('MatthiasBuildings', 'BUILDING_THERMAL_BATH', 1, 200),

('MatthiasDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0); -- huszar +3 CS per ally

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MatthiasDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 1, 0),
('MatthiasDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 0, -20);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MatthiasInflluence', 'PSEUDOYIELD_HAPPINESS', 1, 55), -- pvs 25
('MatthiasInflluence', 'PSEUDOYIELD_DISTRICT', 1, 15), -- 50% production across river
('MatthiasInflluence', 'PSEUDOYIELD_UNIT_SPY', 0, -25),

('MatthiasInflluence', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 7); -- To partly counter out -7 in agg milt trait, for alliances

UPDATE AiFavoredItems
SET Item = 'ALLIANCE_RESEARCH'
WHERE ListType = 'MatthiasAlliances' AND Item = 'ALLIANCE_SCIENTIFIC';

/*
<Row ListType="MatthiasInflluence" Item="PSEUDOYIELD_INFLUENCE" Value="25"/>
*/

-- settlement
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('MatthiasSettlement', 'Specific Feature', 0, 9, 'FEATURE_GEOTHERMAL_FISSURE'), -- For thermal bath
('MatthiasSettlement', 'Fresh Water',      0, 10, NULL); -- Rivers

-- SULEIMAN / OTTOMAN

UPDATE AiFavoredItems SET Item = 'TECH_GUNPOWDER' WHERE Item = 'TECH_GUNPOWER'; 
UPDATE AiFavoredItems SET ListType = 'SuliemanCivics' WHERE ListType = 'SuliemanTechs' AND Item = 'CIVIC_GAMES_RECREATION';

UPDATE AiLists SET System = 'PseudoYields' WHERE ListType = 'SuliemanGovernor' AND System = 'Buildings';

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SULEIMAN', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SULEIMAN', 'TRAIT_LEADER_EXPANSIONIST');

UPDATE AiFavoredItems SET Value = 6 WHERE ListType = 'SuliemanUnits' AND Item = 'PROMOTION_CLASS_SIEGE'; -- pvs 14, 11

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('SuliemanDiplomacy'),
('SuliemanDistricts'),
('SuliemanYields'),
('SuliemanUnitsIndividual'),
('OttomanUnitsIndividual'),
('OttomanSettlement'),
('OttomanBuildings'),
('SuliemanPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SuliemanDiplomacy',   		 'TRAIT_LEADER_SULEIMAN_GOVERNOR', 'DiplomaticActions'),
('SuliemanDistricts',      		 'TRAIT_LEADER_SULEIMAN_GOVERNOR', 'Districts'),
('SuliemanYields',     			  'TRAIT_LEADER_SULEIMAN_GOVERNOR', 'Yields'),
('SuliemanUnitsIndividual',      'TRAIT_LEADER_SULEIMAN_GOVERNOR', 'Units'),
('OttomanUnitsIndividual',      'TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD', 'Units'),
('OttomanSettlement',      'TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD', 'PlotEvaluations'),
('OttomanBuildings',      'TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD', 'Buildings'),
('SuliemanPseudoYields', 		'TRAIT_LEADER_SULEIMAN_GOVERNOR', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SuliemanDiplomacy', 'DIPLOACTION_DECLARE_TERRITORIAL_WAR', 1, 0),
('SuliemanDiplomacy', 'DIPLOACTION_DECLARE_FORMAL_WAR', 1, 0),
('SuliemanDiplomacy', 'DIPLOACTION_DECLARE_IDEOLOGICAL_WAR', 1, 0),
--('SuliemanDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 50),
('SuliemanYields', 'YIELD_FAITH', 0, -25), -- pvs -20
('SuliemanYields', 'YIELD_GOLD', 1, 20), -- Grand Bazar / Janissary Upgrade
('SuliemanDistricts', 'DISTRICT_COMMERCIAL_HUB', 1, 0),
('SuliemanUnits', 'PROMOTION_CLASS_MELEE', 1, 5),
('SuliemanUnits', 'PROMOTION_CLASS_NAVAL_RAIDER', 1, 10),

--('SuliemanUnits', 'PROMOTION_CLASS_NAVAL_MELEE', 1, -5),
('OttomanBuildings', 'BUILDING_GRAND_BAZAAR', 1, 90),

('SuliemanPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -30),
('SuliemanPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 30), -- Bonuses for improvements
('SuliemanPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 20),

('SuliemanPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -9),
('SuliemanPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 5),
('SuliemanPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 50), -- Grand Bazar
('SuliemanPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 30), -- siege cities, AggresivePseudoYields
('SuliemanPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -20), -- bombards
('SuliemanPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 50),
('SuliemanPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 10); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('SuliemanUnitsIndividual', 'UNIT_SULEIMAN_JANISSARY', -12);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('OttomanUnitsIndividual', 'UNIT_OTTOMAN_BARBARY_CORSAIR', 1, 10),
('OttomanUnitsIndividual', 'UNIT_SWORDSMAN', 1, 25),
('OttomanUnitsIndividual', 'UNIT_MAN_AT_ARMS', 1, 27); -- Upgrades to Janissary

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('OttomanSettlement', 'Resource Class', 			0, 5, 'RESOURCECLASS_LUXURY',    'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
('OttomanSettlement', 'Coastal', 					0, 2, 			NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_COAST');

-- DIDO / CARTHAGE

-- TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE
-- TRAIT_LEADER_EXPANSIONIST 

/*
		<Row ListType="DidoTechs" Item="TECH_CELESTIAL_NAVIGATION" Favored="true"/>
		<Row ListType="DidoTechs" Item="TECH_SAILING" Favored="true"/>
		<Row ListType="DidoTechs" Item="TECH_CONSTRUCTION" Favored="true"/>
		<Row ListType="DidoCivics" Item="CIVIC_POLITICAL_PHILOSOPHY" Favored="true"/>
		<Row ListType="DidoCoastalSettlements" Item="Coastal" Favored="false" Value="35"/>
		
*/
		
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_DIDO', 'TRAIT_LEADER_MAD_EXPANSIONIST');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('DidoPseudoYields'),
('DidoDistricts');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('DidoPseudoYields', 'TRAIT_LEADER_FOUNDER_CARTHAGE', 'PseudoYields'),
('DidoDistricts',    'TRAIT_LEADER_FOUNDER_CARTHAGE', 'Districts');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DidoPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20), -- pvs 15
('DidoPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 40), -- pvs 15, 20 cothon grants 50% production to naval units
('DidoPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 25), -- Bonus, pvs 15
--('DidoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, -5),

('DidoPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 35), -- Early game bireme aggression (strong melee unit)

('DidoPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 10), -- 50% production towards discricts in gov plaza city 

('DidoPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 60), -- gov plaza bonus

('DidoDistricts', 'DISTRICT_GOVERNMENT', 1, 90), -- Important
('DidoDistricts', 'DISTRICT_COTHON', 1, 100),
('DidoDistricts', 'DISTRICT_COMMERCIAL_HUB', 0, 0),

('DidoTechs', 'TECH_WRITING', 1, 0), -- starts with the boost for it

('DidoWonders', 'BUILDING_GOV_WIDE', 1, 200), -- +1 trade routes and settling

('DidoWonders', 'BUILDING_GOV_SPIES', 1, 0), -- +1 trade route
('DidoWonders', 'BUILDING_GOV_CITYSTATES', 1, 0),
('DidoWonders', 'BUILDING_GOV_FAITH', 1, 0),


('DidoWonders', 'BUILDING_COLOSSUS', 1, 0),
('DidoWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 75),
('DidoWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
('DidoWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 9000),
('DidoWonders', 'BUILDING_PANAMA_CANAL', 1, 0);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DidoCoastalSettlements', 'Foreign Continent', 0, -12), -- obvs
('DidoCoastalSettlements', 'Nearest Friendly City', 0, 3); -- Doesnt't have loyalty problems


/*
		<Row ListType="KupeCivics" Item="CIVIC_DRAMA_POETRY" Favored="true"/>
		<Row ListType="KupeCivics" Item="CIVIC_CONSERVATION" Favored="true"/>
		<Row ListType="KupeTechs" Item="TECH_PLASTICS" Favored="true"/>
		<Row ListType="KupeTechs" Item="TECH_CARTOGRAPHY" Favored="true"/>
		<Row ListType="KupeTechs" Item="TECH_FLIGHT" Favored="true"/>
*/


INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_KUPE', 'TRAIT_LEADER_DEFENSIVE');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_KUPE', 'TRAIT_LEADER_EXPANSIONIST');

-- KUPE / MAURI

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('KupeSettle'),
('KupeUnits'),
('KupeDistricts'),
('KupeBuildings'),
('KupePseudoYields'),
('KupeYields'),
('KupeImprovements'),
('KupeDiplomacy'),
('KupeScoutUses');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KupeSettle',   			'TRAIT_LEADER_KUPES_VOYAGE', 'PlotEvaluations'),
('KupeUnits',       		 'TRAIT_LEADER_KUPES_VOYAGE', 'Units'),

('KupeDistricts', 			'TRAIT_LEADER_KUPES_VOYAGE', 'Districts'),
('KupeBuildings', 			'TRAIT_LEADER_KUPES_VOYAGE', 'Buildings'),

('KupePseudoYields', 		'TRAIT_LEADER_KUPES_VOYAGE', 'PseudoYields'),
('KupeYields', 				'TRAIT_LEADER_KUPES_VOYAGE', 'Yields'),

('KupeImprovements',		'TRAIT_LEADER_KUPES_VOYAGE', 'Improvements'),
('KupeScoutUses',    		'TRAIT_LEADER_KUPES_VOYAGE', 'AiScoutUses');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KupeDiplomacy',    		'TRAIT_LEADER_KUPES_VOYAGE', 'DiplomaticActions'); -- Todo

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KupeYields', 'YIELD_CULTURE', 1, 		15), -- pvs 7, 10, 11 (less gpp writer)
('KupeYields', 'YIELD_PRODUCTION', 1, 	-8), -- pvs -3, -4
('KupeYields', 'YIELD_GOLD', 1, 		15),
('KupeYields', 'YIELD_FAITH', 1, 		7), -- pvs 4

('KupeDistricts', 'DISTRICT_GOVERNMENT', 1, 80), 
('KupeDistricts', 'DISTRICT_THEATER', 1, 0), 
('KupeDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 0), 
('KupeDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 0, 0), 
('KupeDistricts', 'DISTRICT_PRESERVE', 1, 0), 

('KupeBuildings', 'BUILDING_MARAE', 1, 90), 
('KupeBuildings', 'BUILDING_GROVE', 1, 90), 
('KupeBuildings', 'BUILDING_SANCTUARY', 1, 90), 
('KupeBuildings', 'BUILDING_LIGHTHOUSE', 1, 90), 

('KupeBuildings', 'BUILDING_GOV_TALL', 1, 30), 
('KupeBuildings', 'BUILDING_GOV_WIDE', 1, 90), 
('KupeBuildings', 'BUILDING_GOV_CONQUEST', 0, 0),

('KupeBuildings', 'BUILDING_GOV_FAITH', 1, 0),
('KupeBuildings', 'BUILDING_GOV_SPIES', 1, 0),
('KupeBuildings', 'BUILDING_GOV_CITYSTATES', 1, 0),

('KupeBuildings', 'BUILDING_GOV_MILITARY', 1, 0),
('KupeBuildings', 'BUILDING_GOV_CULTURE', 1, 40),
('KupeBuildings', 'BUILDING_GOV_SCIENCE', 1, 0);

-- todo other wonders/ buildings -- has no wonders list defined by default

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KupeUnits', 'UNIT_NATURALIST', 1, 70),
('KupeUnits', 'UNIT_TREBUCHET', 0, -7),
('KupeUnits', 'UNIT_GALLEY', 	0, -20), -- Can built quads from start
('KupeUnits', 'UNIT_QUADRIREME', 	1, 10),
('KupeUnits', 'UNIT_MAORI_TOA', 	1, 20),

('KupeTechs', 'TECH_CONSTRUCTION', 1, 90), -- Toa
('KupeTechs', 'TECH_ARCHERY', 1, 0), -- Defence / Toa
('KupeTechs', 'TECH_MASONRY', 1, 0), -- Defence / Toa
('KupeTechs', 'TECH_HORSEBACK_RIDING', 1, 0), -- Defence / Toa

('KupePseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 		1, 240), -- pvs 60, 80, 120
('KupePseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 		1, -75), -- Unimproved bonus, pvs -50
('KupePseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 	1, 50), -- pvs 24, 32
('KupePseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 		1, 30), -- pvs 24
('KupePseudoYields', 'PSEUDOYIELD_INFLUENCE', 			1, 15), -- friendly with city states

('KupePseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 		0, -25),
('KupePseudoYields', 'PSEUDOYIELD_CITY_BASE', 			1, -25),
('KupePseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 		1, 5);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('KupeImprovements', 'IMPROVEMENT_MINE', 1, 35), -- pvs 25 
('KupeImprovements', 'IMPROVEMENT_PASTURE', 1,  40),
('KupeImprovements',	'IMPROVEMENT_QUARRY',	1,	5),
--('KupeImprovements', 'IMPROVEMENT_FORT', 0,  -55), -- pvs -25, -30, -50

('KupeImprovements', 'IMPROVEMENT_BEACH_RESORT', 1,  20),

('KupeImprovements', 'IMPROVEMENT_LUMBER_MILL', 0,  -100),
('KupeImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 0,  -100), -- ski resorts / national parks instead

('KupeImprovements', 'IMPROVEMENT_MOAI', 1,  50),

('KupeImprovements', 'IMPROVEMENT_CAMP', 1,  10),
('KupeImprovements', 'IMPROVEMENT_FISHING_BOATS', 1,  90),
('KupeImprovements', 'IMPROVEMENT_FARM', 0,  -15),


--('KupeImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 200),
('KupeImprovements', 'IMPROVEMENT_AIRSTRIP', 0, -20),
('KupeImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('KupeImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 0, -100), -- For national parks, ski resorts, culture victory
('KupeImprovements', 'IMPROVEMENT_MISSILE_SILO', 0, -20);
--('KupeImprovements', 'IMPROVEMENT_OIL_WELL', 1, 200);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KupePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 7), -- pvs 8 Was building too many land units, pvs 2
('KupePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 7), -- Defence early game
('KupePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 7),
('KupePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -8), -- pvs +18
('KupePseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 14), -- Extra embarked movement, previously 20, ai builds too many recon units late game
('KupePseudoYields', 'PSEUDOYIELD_TOURISM', 1, 45),
('KupePseudoYields', 'PSEUDOYIELD_GPP_WRITER', 0, -15), -- Cannot be earned
('KupePseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 18), 
('KupePseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 32), 

('KupePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 20), -- Seems like he would care
('KupePseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, -10), -- Not a fan 
('KupePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 5), -- pvs 5
('KupeScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 150), -- pvs 100
('KupeScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 200); -- pvs 100


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('KupeSettle', 'Coastal', 			0, 9, 		 NULL, 	'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- coastal def +11 from base
('KupeSettle', 'Total Yield', 		0, 1, 		'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- pvs 2
('KupeSettle', 'Specific Feature',  0, 4, 		'FEATURE_FOREST', NULL),
('KupeSettle', 'Specific Feature',  0, 3, 		'FEATURE_JUNGLE', NULL);

/*
		<Row ListType="KupeCivics" Item="CIVIC_DRAMA_POETRY" Favored="true"/>
		<Row ListType="KupeCivics" Item="CIVIC_CONSERVATION" Favored="true"/>
		<Row ListType="KupeTechs" Item="TECH_PLASTICS" Favored="true"/>
		<Row ListType="KupeTechs" Item="TECH_CARTOGRAPHY" Favored="true"/>
		<Row ListType="KupeTechs" Item="TECH_FLIGHT" Favored="true"/>
		
		<Row ListType="MaoriSettlePreferences" Item="Nearest Friendly City" Favored="false" Value="8" /> Interesting
*/

-- Could benefit from preserve as preferred?

-- Todo add improvement preferences (fish, not lumber mills lol)

-- LAURIER / CANADA

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_LAURIER', 'TRAIT_LEADER_DEFENSIVE');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LaurierDiplomacy'),
('LaurierPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LaurierDiplomacy',    'TRAIT_LEADER_LAST_BEST_WEST', 'DiplomaticActions'),
('LaurierPseudoYields', 'TRAIT_LEADER_LAST_BEST_WEST', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LaurierDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
('LaurierDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0),
('LaurierDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0),
('LaurierPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -35),
('LaurierPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -15),
('LaurierPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  1, -6),
('LaurierPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 7),
('LaurierPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 7),
('LaurierPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15),  -- Improvement Bonuses and Ice rink
--('LaurierPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 50), -- Already Exists (20) -- +1 favour per 100 tourism
('LaurierPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, 30),
('LaurierPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3),
('LaurierPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 25),
('LaurierPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 12), -- historially lead construction of new transcontinental railways
('LaurierPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 50),
('LaurierPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 17);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'LaurierWonders', 'BUILDING_ST_BASILS_CATHEDRAL', 1, 0
FROM Types WHERE Type = 'BUILDING_ST_BASILS_CATHEDRAL';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'LaurierWonders', 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION', 1, 300
FROM Types WHERE Type = 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION';

UPDATE AiFavoredItems SET Value = 76 WHERE ListType = 'LaurierUnits' AND Item = 'UNIT_NATURALIST'; -- def. -1, pvs 90
UPDATE AiFavoredItems SET Value = 55 WHERE ListType = 'LaurierTourism' AND Item = 'PSEUDOYIELD_TOURISM'; -- base 0.82

DELETE FROM AiFavoredItems WHERE ListType = 'LaurierDiplomacy' AND Item IN ('DIPLOACTION_DENOUNCE'); -- Late game AI COMPATIBILITY
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LaurierDiplomacy', 'DIPLOACTION_DENOUNCE', 1, 0); -- Improves ability to actually start wars

/*
		<Row ListType="LaurierCivics" Item="CIVIC_CONSERVATION" Favored="true"/>
		<Row ListType="LaurierCivics" Item="CIVIC_COLONIALISM" Favored="true"/>
		<Row ListType="LaurierCivics" Item="CIVIC_PROFESSIONAL_SPORTS" Favored="true"/>
		<Row ListType="LaurierWonders" Item="BUILDING_EIFFEL_TOWER" Favored="true"/>
		<Row ListType="LaurierTourism" Item="PSEUDOYIELD_TOURISM" Value="20"/>
		<Row ListType="LaurierUnits" Item="UNIT_NATURALIST" Value="-1"/>
*/

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_PACHACUTI', 'TRAIT_LEADER_EXPANSIONIST');

-- PACHACUTI / INCA / TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('PachacutiSettle'),
('PachacutiUnits'),
('PachacutiPseudoYields'),
('PachacutiYields'),
('PachacutiDiplomacy'),
('PachacutiDistricts'),
('PachacutiImprovements'),
('PachacutiScoutUses');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PachacutiSettle',   'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'PlotEvaluations'),
('PachacutiUnits',        'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'Units'),
('PachacutiPseudoYields', 'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'PseudoYields'),
('PachacutiYields', 'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'Yields'),
('PachacutiDistricts', 'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'Districts'),
('PachacutiImprovements', 'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'Improvements'),
('PachacutiScoutUses',    'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'AiScoutUses');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PachacutiDiplomacy',    'TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN', 'DiplomaticActions'); -- Todo

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('PachacutiYields', 'YIELD_CULTURE', 1, 1),
('PachacutiYields', 'YIELD_FAITH', 1, 3), -- ADJ
('PachacutiYields', 'YIELD_SCIENCE', 1, 3), -- ADJ
('PachacutiYields', 'YIELD_FOOD', 1, 15),
('PachacutiYields', 'YIELD_GOLD', 1, 25), 

('PachacutiWonders', 'BUILDING_GOV_TALL', 1, 900),
('PachacutiWonders', 'BUILDING_GOV_CONQUEST', 0, 0),

('PachacutiTechs', 'TECH_THE_WHEEL', 1, 0),

('PachacutiUnits', 'UNIT_NATURALIST', 1, 25),
('PachacutiUnits', 'UNIT_QHAPAQ_NAN', 1, 10),
('PachacutiPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 25),
('PachacutiPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 60), 
('PachacutiPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 0, -10),
--('PachacutiPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 0, -10),
('PachacutiPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20),
('PachacutiPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 5),
('PachacutiPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 10),
('PachacutiPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 80),
--('PachacutiPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -5),
('PachacutiPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 3),
('PachacutiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('PachacutiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 3),
('PachacutiPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 5);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PachacutiDistricts', 'DISTRICT_AQUEDUCT', 1, 0),
('PachacutiDistricts', 'DISTRICT_DAM', 1, 0); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PachacutiImprovements', 'IMPROVEMENT_TERRACE_FARM', 1, 50);
--('PachacutiImprovements', 'DISTRICT_DAM', 1, 0); 



--('PachacutiScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 100); -- TODO

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('PachacutiSettle', 'Coastal', 0, -4, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('PachacutiSettle', 'Total Yield', 0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('PachacutiSettle', 'Inner Ring Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), 
('PachacutiSettle', 'Specific Terrain', 0, 6, 'TERRAIN_GRASS_MOUNTAIN', NULL),
('PachacutiSettle', 'Specific Terrain', 0, 6, 'TERRAIN_PLAINS_MOUNTAIN', NULL),
('PachacutiSettle', 'Specific Terrain', 0, 4, 'TERRAIN_DESERT_MOUNTAIN', NULL),
('PachacutiSettle', 'Specific Terrain', 0, 4, 'TERRAIN_TUNDRA_MOUNTAIN', NULL),
('PachacutiSettle', 'Specific Terrain', 0, 3, 'TERRAIN_SNOW_MOUNTAIN', NULL),
('PachacutiSettle', 'Specific Terrain', 0, 11, 'TERRAIN_GRASS_HILLS', NULL),
('PachacutiSettle', 'Specific Terrain', 0, 11, 'TERRAIN_PLAINS_HILLS', NULL),
('PachacutiSettle', 'Specific Terrain', 0, 5, 'TERRAIN_TUNDRA_HILLS', NULL),

('PachacutiSettle', 'Specific Feature', 0, 8, 'FEATURE_VOLCANO', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES');

UPDATE AiFavoredItems SET Item = 'TECH_REPLACEABLE_PARTS' WHERE Item = 'TECH_REPLACABLE_PARTS';

-- Potentially Useful: <Row Type="TERRAIN_CLASS_MOUNTAIN" Kind="KIND_TERRAIN_CLASS"/>


/*
		<Row LeaderType="LEADER_PACHACUTI" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		<Row LeaderType="LEADER_PACHACUTI" TraitType="TRAIT_LEADER_SCIENCE_MAJOR_CIV"/>
		
		<Row ListType="PachacutiCivics" Item="CIVIC_FEUDALISM" Favored="true"/>
		<Row ListType="PachacutiCivics" Item="CIVIC_FOREIGN_TRADE" Favored="true"/>
		<Row ListType="PachacutiTechs" Item="TECH_ENGINEERING" Favored="true"/>
		<Row ListType="PachacutiTechs" Item="TECH_REPLACABLE_PARTS" Favored="true"/>
		<Row ListType="PachacutiTechs" Item="TECH_MACHINERY" Favored="true"/>
		<Row ListType="PachacutiWonders" Item="BUILDING_MACHU_PICCHU" Favored="true"/>
*/


-- KRISTINA / SWEDEN

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('KristinaDiplomacy'),
('KristinaImprovements'),
('KristinaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KristinaDiplomacy',    'TRAIT_LEADER_KRISTINA_AUTO_THEME', 'DiplomaticActions'),
('KristinaImprovements',    'TRAIT_LEADER_KRISTINA_AUTO_THEME', 'Improvements'),
('KristinaPseudoYields', 'TRAIT_LEADER_KRISTINA_AUTO_THEME', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KristinaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 		1, 4), -- pvs 10
('KristinaPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',  			1, 20), -- 50 dp on recruitment of all great people
('KristinaPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',			 1, 20),
('KristinaPseudoYields', 'PSEUDOYIELD_GPP_WRITER',   			 1, 18),
('KristinaPseudoYields', 'PSEUDOYIELD_GPP_ARTIST',   			 1, 35), -- Auto theming
('KristinaPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN',  			1, 21), 
('KristinaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',  			1, 10), -- Nobel Prize

('KristinaPseudoYields', 'PSEUDOYIELD_WONDER',  			    1, 25), -- Great work slots theming
('KristinaPseudoYields', 'PSEUDOYIELD_TOURISM',  				1, 32), -- Slight boost as def is lower
('KristinaPseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING', 		 0, -15), -- Can't theme / lower tourism

('KristinaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  			0, -8),

('KristinaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  	0, -10),
('KristinaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  	0, -5),

('KristinaDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 			1, 0),
('KristinaDiplomacy', 'DIPLOACTION_ALLIANCE', 					1, 0), -- favor
('KristinaDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 			1, 0),

('KristinaImprovements',	'IMPROVEMENT_OPEN_AIR_MUSEUM',	1,	60),

('KristinaPseudoYields', 'PSEUDOYIELD_CITY_BASE',  1, -35),
('KristinaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, 20), -- Lots of dp from great people
('KristinaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',  1, 14),
('KristinaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES',  1, 4),
('KristinaPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 35); -- BUILDING_APADANA

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'KristinaWonders', 'BUILDING_APADANA', 1, 200 -- great work slots are themed
FROM Types WHERE Type = 'BUILDING_APADANA';

-- todo different terrain settle

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'KristinaCivics', PrereqCivic, 1, 0
FROM Governments
WHERE GovernmentType = 'GOVERNMENT_MONARCHY';

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'KristinaPseudoYields', PseudoYieldType, 1, 26
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; -- Auto theming

DELETE FROM AiFavoredItems WHERE ListType = 'KristinaCivics' AND Item IN ('CIVIC_DIVINE_RIGHT', 'CIVIC_REFORMED_CHURCH');

-- Unit Build Tags

INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) VALUES
('UNIT_CANADA_MOUNTIE', 'UNITAI_BUILD'), -- national parks
('UNIT_MAORI_TOA', 'UNITAI_BUILD');