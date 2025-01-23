
-- Leaders 3

-- MVEMBA / KONGO

REPLACE INTO AiListTypes (ListType) VALUES
('KongoDistricts'),
('KongoYields'),
('MvembaYields'),
('KongoSettlement'),
('KongoWonders'),
('MvembaPseudoYields'),
('KongoPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KongoDistricts',    'TRAIT_CIVILIZATION_MBANZA', 'Districts'),
('KongoYields',       'TRAIT_CIVILIZATION_NKISI', 'Yields'),
('MvembaYields',       'TRAIT_LEADER_RELIGIOUS_CONVERT', 'Yields'),
('KongoSettlement', 'TRAIT_CIVILIZATION_NKISI', 'PlotEvaluations'),
('KongoWonders', 'TRAIT_CIVILIZATION_NKISI', 	'Buildings'),
('MvembaPseudoYields',       'TRAIT_LEADER_RELIGIOUS_CONVERT', 'PseudoYields'),
('KongoPseudoYields', 'TRAIT_CIVILIZATION_NKISI', 'PseudoYields');

-- TRAIT_LEADER_RELIGIOUS_CONVERT

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KongoDistricts',       'DISTRICT_MBANZA', 1, 0),
('KongoYields',       'YIELD_CULTURE', 1, 11),
('KongoYields',       'YIELD_FOOD',    1, 25), -- MBANZA
('KongoYields',       'YIELD_GOLD',    1, 15), -- pvs 8
('KongoYields',       'YIELD_SCIENCE', 1,-9),

('MvembaYields',       'YIELD_FAITH', 0,-30), -- Can't build holy sites
('MvembaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0,-100), -- Can't build holy sites
('MvembaPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1,	20),

('KongoWonders',       'BUILDING_TERRACOTTA_ARMY', 1, 90), -- Relics from ARCHAEOLOGIST

('KongoPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 65), -- 50%, pvs 50
('KongoPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 0, -15),
('KongoPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 10), -- Districts
('KongoPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 25), -- 50%
('KongoPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 30), -- 50%
('KongoPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -10),
('KongoPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -25), 
('KongoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  0, -6),
('KongoPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  0, -5),
('KongoPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  0, -4),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT',  1, 40), -- Nkisi
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1,-10),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_MUSIC',     1, -10),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT',  1, -10), -- Has Loads
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC',     1, 90), -- Nkisi
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, -15),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 40), -- Nkisi
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING',   1,-15),
('KongoPseudoYields', 'PSEUDOYIELD_TOURISM',   1, 50),
('KongoPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 35), 
('KongoPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -35), 
('KongoPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 6), 
('KongoPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 5), 
('KongoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 12),
('KongoPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 100);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('KongoSettlement', 'Coastal', 			0, -3, 		 NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- very little coast in real life
('KongoSettlement', 'Specific Feature',  0, 3, 		'FEATURE_FOREST', 								NULL),
('KongoSettlement', 'Specific Feature',  0, 4, 		'FEATURE_JUNGLE', 								NULL); -- Mbanza 

-- PEDRO / BRAZIL

DELETE FROM AiFavoredItems WHERE ListType = 'GreatPersonObsessedGreatPeople' AND Item = 'PSEUDOYIELD_GPP_PROPHET'; -- Credit: Infixo: don't be obsessed with him - there is only one!
UPDATE AiFavoredItems SET Value = 38 WHERE ListType = 'GreatPersonObsessedGreatPeople'; -- def. 50

REPLACE INTO AiListTypes (ListType) VALUES
('PedroDistricts'),
('PedroProjects'),
('PedroSettlement'),
('PedroPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PedroDistricts', 'TRAIT_LEADER_MAGNANIMOUS', 'Districts'),
('PedroProjects', 'TRAIT_LEADER_MAGNANIMOUS', 'Projects'),
('PedroSettlement', 'TRAIT_LEADER_MAGNANIMOUS', 'PlotEvaluations'),
('PedroPseudoYields', 'TRAIT_LEADER_MAGNANIMOUS', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PedroDistricts', 'DISTRICT_STREET_CARNIVAL', 1, 0),
('PedroDistricts', 'DISTRICT_WATER_STREET_CARNIVAL', 1, 0),
('PedroDistricts', 'PROJECT_CARNIVAL', 1, 200),

('PedroCivics', 'CIVIC_NATURAL_HISTORY', 1, 0),
('PedroPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -35), -- Less aggressive
('PedroPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 5),
('PedroPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 5),
('PedroPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  0, -9),
('PedroPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -12),
('PedroPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 40), -- leave jungle
('PedroPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -25),
('PedroPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 20),
('PedroPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 700), -- pvs 30, 40, 100
('PedroPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 10),
('PedroPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 8), -- Bringing Back
('PedroPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, -12), -- GP
('PedroPseudoYields', 'PSEUDOYIELD_WONDER', 1, -28);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('PedroSettlement', 'Coastal', 			0, 2, 		 NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- unique battleship
--('PedroSettlement', 'Specific Feature',  0, 4, 		'FEATURE_FOREST', 								NULL),
('PedroSettlement', 'Specific Feature',  0, 3, 		'FEATURE_JUNGLE', 								NULL);



DELETE FROM AiFavoredItems WHERE ListType = 'PedroTechs'  AND Item = 'TECH_ASTROLOGY'; -- Was more of an Industry / science / great people focused guy

-- CATHERINE_DE_MEDICI / FRANCE -- BLACK QUEEN

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CATHERINE_DE_MEDICI', 'TRAIT_LEADER_EXPANSIONIST'); -- Extra vision

DELETE FROM AiFavoredItems WHERE ListType = 'CatherineCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('FranceUnits'),
('CatherineYields'),
('CatherinePseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('FranceUnits', 'TRAIT_CIVILIZATION_UNIT_FRENCH_GARDE_IMPERIALE', 'Units'),
('CatherineYields', 'FLYING_SQUADRON_TRAIT', 'Yields'),
('CatherinePseudoYields', 'FLYING_SQUADRON_TRAIT', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('FranceUnits', 'UNIT_FRENCH_GARDE_IMPERIALE', 1, 50), -- Very Strong, pvs 30

('CatherineCivics', 'CIVIC_DIPLOMATIC_SERVICE', 1, 0),
('CatherineYields', 'YIELD_CULTURE', 1, 15),
('CatherineYields', 'YIELD_PRODUCTION', 1, 5), -- Wonders
('CatherineYields', 'YIELD_FAITH', 1, -12),

('CatherineWonders', 'BUILDING_GOV_SPIES', 1, 9000), 
('CatherineWonders', 'BUILDING_GOV_CITYSTATES', 0, -90),
('CatherineWonders', 'BUILDING_GOV_FAITH', 0, -90),

('CatherineWonders', 'BUILDING_GOV_TALL', 1, 0),
('CatherineWonders', 'BUILDING_GOV_WIDE', 1, 0),

('CatherinePseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -25),
('CatherinePseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 80), -- lol very much needed
('CatherinePseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 19),
('CatherinePseudoYields', 'PSEUDOYIELD_TOURISM', 1, 50), 
('CatherinePseudoYields', 'PSEUDOYIELD_WONDER', 1, 110); -- Double tourism, Production bonus in med, ren, industrial



/*
		<Row ListType="CatherineTechs" Item="TECH_CASTLES" Favored="true"/>
		<Row ListType="CatherineTechs" Item="TECH_PRINTING" Favored="true"/>
		<Row ListType="CatherineTechs" Item="TECH_FLIGHT" Favored="true"/>
		<Row ListType="CatherineTechs" Item="TECH_COMPUTERS" Favored="true"/>
*/


-- Russia / Peter the Great

/*
		<Row ListType="PeterTechs" Item="TECH_ANIMAL_HUSBANDRY" Favored="true"/>
		<Row ListType="PeterTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="PeterTechs" Item="TECH_MILITARY_SCIENCE" Favored="true"/>
		<Row ListType="PeterWonders" Item="BUILDING_COLOSSUS" Favored="true"/>
		<Row ListType="PeterCivics" Item="CIVIC_FEUDALISM" Favored="true"/>
		
*/

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_PETER_GREAT', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('PeterPseudoYields'),
('PeterYields'),
('PeterDistricts');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PeterPseudoYields', 'TRAIT_LEADER_GRAND_EMBASSY', 'PseudoYields'),
('PeterYields', 'TRAIT_LEADER_GRAND_EMBASSY', 'Yields'),
('PeterDistricts', 'TRAIT_LEADER_GRAND_EMBASSY', 'Districts');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PeterCivics', 'CIVIC_MYSTICISM', 1, 0),
('PeterPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 60), 
('PeterPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 10), 
('PeterPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 20), 
('PeterPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15), -- Normally lots of space in the tundra / 4 more tiles per city
('PeterPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 40),
('PeterPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 35), -- Border expansion with each great person earned
('PeterPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 25),
('PeterPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 20), -- pvs 25
('PeterPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 20), -- Apadana
('PeterPseudoYields', 'PSEUDOYIELD_WONDER', 1, 60), -- Gw slots, pvs 50

('PeterPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -35),
('PeterPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 50),
('PeterPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -4),
('PeterPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 9),
('PeterPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -8),
('PeterPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -12),

('PeterYields', 'YIELD_FAITH', 				1,				 45),
('PeterYields', 'YIELD_GOLD', 				1,				 6), -- Trade Routes
('PeterYields', 'YIELD_CULTURE', 			1,			 	38),
--('PeterYields', 'YIELD_PRODUCTION', 		1,			 	-3),

('PeterCivics', 'CIVIC_MYSTICISM', 		1, 					0),
('PeterCivics', 'CIVIC_THEOLOGY', 		1, 					0), -- Temples 
('PeterCivics', 'CIVIC_REFORMED_CHURCH', 1, 				0),
('PeterCivics', 'CIVIC_MASS_MEDIA',		 1, 				0), -- BUILDING_CRISTO_REDENTOR

('PeterDistricts', 'DISTRICT_DIPLOMATIC_QUARTER',    1, 50),
('PeterDistricts', 'DISTRICT_GOVERNMENT',    1, 100),
('PeterDistricts', 'DISTRICT_THEATER',    1, 60), -- To put great works
('PeterDistricts', 'DISTRICT_LAVRA',    	1, 200), -- Already has a preference but boosting further
('PeterDistricts', 'DISTRICT_ENCAMPMENT', 0, 0), 

('PeterWonders', 'BUILDING_SHRINE', 1, 90), -- +1 great writer
('PeterWonders', 'BUILDING_TEMPLE', 1, 90), -- +1 great artist
('PeterWonders', 'BUILDING_AMPHITHEATER', 1, 0), -- gw slots
('PeterWonders', 'BUILDING_MUSEUM_ART', 1, 90), -- 3GW art slots

('PeterWonders', 'BUILDING_GREAT_LIBRARY', 1, 90), -- 2 Slots of writing
('PeterWonders', 'BUILDING_SYDNEY_OPERA_HOUSE', 1, 90), -- GW Music Slots

('PeterWonders', 'BUILDING_GOV_CULTURE', 1, 900), -- GW SLOTS
('PeterWonders', 'BUILDING_GOV_WIDE', 1, 200), 
('PeterWonders', 'BUILDING_STONEHENGE', 0, 0), 
('PeterWonders', 'BUILDING_BOLSHOI_THEATRE', 1, 90),
('PeterWonders', 'BUILDING_BROADWAY', 1, 90), -- GW Slots
('PeterWonders', 'BUILDING_CRISTO_REDENTOR', 1, 900),

('PeterWonders', 'BUILDING_HERMITAGE', 1, 90); -- 4 GW slots of art 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) -- 2 GW slots
SELECT 'PeterWonders', 'BUILDING_APADANA', 1, 20
FROM Types WHERE Type = 'BUILDING_APADANA';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'PeterWonders', 'BUILDING_ST_BASILS_CATHEDRAL', 1, 50
FROM Types WHERE Type = 'BUILDING_ST_BASILS_CATHEDRAL';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'PeterWonders', 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION', 1, 200
FROM Types WHERE Type = 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION';

--DELETE FROM AiFavoredItems WHERE ListType = 'PeterWonders' AND Item = 'BUILDING_COLOSSUS'; -- not amazing but fun and good for trade routes

-- SALADIN / ARABIA

REPLACE INTO AiListTypes (ListType) VALUES
('SaladinYields'),
('SaladinPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SaladinYields',       'TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH', 'Yields'),
('SaladinPseudoYields', 'TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SaladinYields', 'YIELD_FAITH', 1, 28), -- pvs 16, 21
('SaladinYields', 'YIELD_SCIENCE', 1, 10),
('SaladinTechs', 'TECH_WRITING', 1, 0), 

('SaladinWonders', 'BUILDING_LIBRARY', 1, 900), 
('SaladinWonders', 'BUILDING_MADRASA', 1, 900), 

('SaladinWonders', 'BUILDING_SHRINE', 1, 900), 
('SaladinWonders', 'BUILDING_TEMPLE', 1, 900), 

('SaladinWonders', 'BUILDING_CATHEDRAL', 1, 900), 
('SaladinWonders', 'BUILDING_GURDWARA', 1, 900), 
('SaladinWonders', 'BUILDING_MEETING_HOUSE', 1, 900), 
('SaladinWonders', 'BUILDING_MOSQUE', 1, 900), 
('SaladinWonders', 'BUILDING_PAGODA', 1, 900), 
('SaladinWonders', 'BUILDING_SYNAGOGUE', 1, 900), 
('SaladinWonders', 'BUILDING_WAT', 1, 900), 

('SaladinPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 30), 
('SaladinPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 60), -- Extra Science
('SaladinPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 25),
('SaladinPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 15);


