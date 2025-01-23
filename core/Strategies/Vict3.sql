

--------------------------------------------------------------------------------------------------------------------------
-- Culture Victory Strategy 1
--------------------------------------------------------------------------------------------------------------------------

/*
For Reference:
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GPP_WRITER" Value="50"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GPP_ARTIST" Value="50"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GPP_MUSICIAN" Value="50"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_TOURISM" Value="75"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GREATWORK_SCULPTURE" Value="20"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GREATWORK_PORTRAIT" Value="20"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GREATWORK_LANDSCAPE" Value="20"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GREATWORK_RELIGIOUS" Value="20"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GREATWORK_ARTIFACT" Value="20"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GREATWORK_WRITING" Value="20"/>
		<Row ListType="CultureVictoryPseudoYields" Item="PSEUDOYIELD_GREATWORK_MUSIC" Value="20"/>
		<Row ListType="CultureVictoryYields" Item="YIELD_CULTURE" Value="25"/>
*/

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryYields', 'YIELD_SCIENCE', 1, -15),
('CultureVictoryYields', 'YIELD_FAITH',   1, 12),
('CultureVictoryYields', 'YIELD_PRODUCTION',   0, -3),
--('CultureVictoryYields', 'YIELD_GOLD',    1, 4), 

('CultureVictoryPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -15), -- base 800
('CultureVictoryPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 6), -- base 97
('CultureVictoryPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, 4), -- base 54
('CultureVictoryPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, -80),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 80), -- base -210 -- Def 50
('CultureVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 19), -- base 0.26 -- Def 15, pvs 15
('CultureVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, 10),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 15),

('CultureVictoryPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -5),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 45), -- Trade Routes
('CultureVictoryPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 15), -- Trade Routes
('CultureVictoryPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 0, -10),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -20),

('CultureVictoryPseudoYields', 'PSEUDOYIELD_CIVIC', 1, 30),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 70),

('CultureVictoryPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 25),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -5), -- pvs -4
('CultureVictoryPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, -1),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 10),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, -30), -- base 100 -- pvs -30, -26
('CultureVictoryPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 90), -- pvs 17, 40
('CultureVictoryPseudoYields', 'PSEUDOYIELD_WONDER', 1, 130), -- normally 2.0 rst 0.8 -- RHAI 0.6
('CultureVictoryPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -34), -- base 3 - RHAI 8 -- National Parks pvs -30, -36
('CultureVictoryPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 35),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 58), -- RHAI 0.8 -- Previously used +80%, 60%, 55
('CultureVictoryPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 20), -- Rock bands, naturalists rockband has "PSEUDOYIELD_UNIT_RELIGIOUS"/>
('CultureVictoryPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 50), -- 25% Tourism
('CultureVictoryPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 130); -- base 4 -- RHAI 3.7 (results in similar value of 6.84 vs 6) -- increased to 85 from 80

UPDATE AiFavoredItems SET Value = 120 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_TOURISM'; -- def. 75 (lower 0.82 value)
UPDATE AiFavoredItems SET Value = 115 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MUSICIAN'; -- base is lower
UPDATE AiFavoredItems SET Value = 115 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ARTIST'; -- higher tourism
UPDATE AiFavoredItems SET Value = 80 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_WRITER'; -- less tourism
UPDATE AiFavoredItems SET Value = 45 WHERE ListType = 'CultureVictoryYields'       AND Item = 'YIELD_CULTURE'; -- pvs 40
UPDATE AiFavoredItems SET Value = 900 WHERE ListType = 'CultureVictoryPseudoYields' AND Item LIKE 'PSEUDOYIELD_GREATWORK_%'; -- def. 20, pvs 130


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES 
('CultureVictoryDistricts'),
('CultureVictoryDiplomacy'),
('CultureVictoryTechs'),
('CultureVictoryCivics'),
('CultureVictoryWonders'),
('CultureVictoryUnits'),
('CultureVictorySavings'),
('CultureVictorySettlement'),
('CultureVictoryImprovements');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('CultureVictoryDistricts', 'Districts'),
('CultureVictoryDiplomacy', 'DiplomaticActions'),
('CultureVictoryTechs',     'Technologies'),
('CultureVictoryCivics',    'Civics'),
('CultureVictoryWonders',   'Buildings'),
('CultureVictoryUnits',   'Units'),
('CultureVictorySavings',   'SavingTypes'),
('CultureVictorySettlement',   'PlotEvaulations'),
('CultureVictoryImprovements', 'Improvements');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryDistricts'),
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryDiplomacy'),
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryTechs'),
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryCivics'),
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryWonders'),
('VICTORY_STRATEGY_CULTURAL_VICTORY',   'CultureVictoryUnits'),
('VICTORY_STRATEGY_CULTURAL_VICTORY',   'CultureVictorySavings'),
('VICTORY_STRATEGY_CULTURAL_VICTORY',   'CultureVictorySettlement'),
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryImprovements');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('CultureVictorySavings', 'SAVING_UNITS', 										 1),
('CultureVictorySavings', 'SAVING_SLUSH_FUND', 								 	-1); 
--('CultureVictorySavings', 'SAVING_GREAT_PEOPLE', 								 0), 
--('CultureVictorySavings', 'SAVING_PLOTS', 									1), 

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('CultureVictorySettlement', 'Inner Ring Yield',			 0, 1, 'YIELD_CULTURE', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'); -- 1

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryDistricts', 'DISTRICT_THEATER', 1, 0),
('CultureVictoryDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 0),
('CultureVictoryDistricts', 'DISTRICT_ENCAMPMENT', 0, 0), -- test

('CultureVictoryDiplomacy', 'DIPLOACTION_ALLIANCE_CULTURAL', 1, 0),
--('CultureVictoryDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 50), -- Diplo_defs
('CultureVictoryDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS', 0, 0), 
('CultureVictoryDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 0),
('CultureVictoryTechs', 'TECH_PRINTING', 1, 0), 
('CultureVictoryTechs', 'TECH_ELECTRICITY', 1, 0), -- For Computers
('CultureVictoryTechs', 'TECH_RADIO', 1, 0), 
('CultureVictoryTechs', 'TECH_COMPUTERS', 1, 0), 
('CultureVictoryTechs', 'TECH_MACHINERY', 1, 0), -- Kilwa and Crossbowmen (+lumber mill)
('CultureVictoryCivics', 'CIVIC_DRAMA_POETRY', 1, 0),
--('CultureVictoryCivics', 'CIVIC_DEFENSIVE_TACTICS', 1, 0), -- Early MH

('CultureVictoryCivics', 'CIVIC_HUMANISM', 1, 0),
('CultureVictoryCivics', 'CIVIC_OPERA_BALLET', 1, 0),
('CultureVictoryCivics', 'CIVIC_NATURAL_HISTORY', 1, 0), -- Water Parks, Archologists
('CultureVictoryCivics', 'CIVIC_MASS_MEDIA', 1, 0),
('CultureVictoryCivics', 'CIVIC_CULTURAL_HERITAGE', 1, 0),
('CultureVictoryCivics', 'CIVIC_SOCIAL_MEDIA', 1, 0),
('CultureVictoryCivics', 'CIVIC_SUFFRAGE', 1, 0), -- Democracy, yes

('CultureVictoryCivics', 'CIVIC_DIGITAL_DEMOCRACY', 1, 0),
('CultureVictoryCivics', 'CIVIC_CORPORATE_LIBERTARIANISM', 1, 0), -- is ok (mid for tourism)
('CultureVictoryCivics', 'CIVIC_SYNTHETIC_TECHNOCRACY', 0, -90), -- -10% Tourism

--('CultureVictoryCivics', 'CIVIC_TOTALITARIANISM', 0, 0), -- Fascism, no 
--('CultureVictoryCivics', 'CIVIC_CLASS_STRUGGLE', 0, 0), -- Communism, no
--('CultureVictoryCivics', 'CIVIC_PROFESSIONAL_SPORTS', 1, 0), -- Ski Resorts, however skips govs

--('CultureVictoryCivics', 'CIVIC_COLD_WAR', 1, 0), -- Rock bands! (might skip govs)
('CultureVictoryCivics', 'CIVIC_ENVIRONMENTALISM', 1, 0), -- GS: 25% Tourism

('CultureVictoryWonders', 'BUILDING_WATER_MILL', 1, 0),
('CultureVictoryWonders', 'BUILDING_GRANARY', 1, 90),
('CultureVictoryWonders', 'BUILDING_MONUMENT', 1, 90),

('CultureVictoryWonders', 'BUILDING_BOLSHOI_THEATRE', 1, 0),
('CultureVictoryWonders', 'BUILDING_BROADWAY', 1, 0),
('CultureVictoryWonders', 'BUILDING_CRISTO_REDENTOR', 1, 0),
('CultureVictoryWonders', 'BUILDING_HERMITAGE', 1, 0),
('CultureVictoryWonders', 'BUILDING_COLOSSEUM', 1, 150),
('CultureVictoryWonders', 'BUILDING_FORBIDDEN_CITY', 1, 0),
('CultureVictoryWonders', 'BUILDING_GREAT_LIBRARY', 1, 0), -- Unlocks Early for culture and more boosts as less great scientists

('CultureVictoryWonders', 'BUILDING_FERRIS_WHEEL',	 1, 0),
('CultureVictoryWonders', 'BUILDING_AQUARIUM', 		1, 0),
('CultureVictoryWonders', 'BUILDING_AQUATICS_CENTER', 1, 0),

--('CultureVictoryWonders', 'BUILDING_MILITARY_ACADEMY', 0, 0), -- Less Forts and Mountain Tunnels -- Needed to train corps and armies However
('CultureVictoryWonders', 'BUILDING_WALLS', 1, 70),
('CultureVictoryWonders', 'BUILDING_CASTLE', 1, 70), -- Defence and tourism
('CultureVictoryWonders', 'BUILDING_STAR_FORT', 1, 70), -- Defence and tourism
('CultureVictoryWonders', 'BUILDING_SYDNEY_OPERA_HOUSE', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'CultureVictoryWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 90 -- situational but good anyway
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

-- Portugal
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'CultureVictoryWonders', 'BUILDING_BIOSPHERE', 1, 900 -- Tourism from all power Improvements
FROM Types WHERE Type = 'BUILDING_BIOSPHERE';

-- Todo add preference to scout more of the map

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryWonders', 'BUILDING_KILWA_KISIWANI', 1,		 90), -- only 2 culture city states needed for +15% culture / more envoys from wonders / the civics tree
('CultureVictoryWonders', 'BUILDING_ESTADIO_DO_MARACANA', 1, 90);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('CultureVictoryImprovements', 'IMPROVEMENT_PASTURE', 1,  9),
('CultureVictoryImprovements', 'IMPROVEMENT_PLANTATION', 1,  15),
('CultureVictoryImprovements',	'IMPROVEMENT_QUARRY',	0,	-5),
('CultureVictoryImprovements', 'IMPROVEMENT_BEACH_RESORT', 1,  40),
('CultureVictoryImprovements',	'IMPROVEMENT_LUMBER_MILL',	0,	-40), -- National Parks
('CultureVictoryImprovements', 'IMPROVEMENT_FORT', 0,  -100); -- National Parks

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryImprovements', 'IMPROVEMENT_CITY_PARK', 1, 50),
('CultureVictoryImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 0, -200); -- For national parks, ski resorts, culture victory

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryUnits', 'UNIT_MISSIONARY', 0, -40),
('CultureVictoryUnits', 'UNIT_APOSTLE', 0, -15),
('CultureVictoryUnits', 'UNIT_GURU', 0, -30),
('CultureVictoryUnits', 'UNIT_NATURALIST', 1, 5),
('CultureVictoryUnits', 'UNIT_JET_FIGHTER', 1, 3),
('CultureVictoryUnits', 'UNIT_FIELD_CANNON', 1, 4),
('CultureVictoryUnits', 'UNIT_SUBMARINE', 1, 3),
('CultureVictoryUnits', 'UNIT_AT_CREW', 1, 4),
('CultureVictoryUnits', 'UNIT_MILITARY_ENGINEER', 0, -200), -- National Parks (No mountain tunnels / random forts)
('CultureVictoryUnits', 'UNIT_ROCK_BAND', 1, 80); -- pvs 35, 50

-- Todo add prefrence for ranged units

--------------------------------------------------------------------------------------------------------------------------
-- Religious Victory Strategy 1 -- Isn't exclusive
--------------------------------------------------------------------------------------------------------------------------

UPDATE AiFavoredItems SET Value = 85 WHERE ListType = 'ReligiousVictoryPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_RELIGIOUS'; -- def. 50 -- Higher as def value is 0.73 instead of 1 -- pvs 85
UPDATE AiFavoredItems SET Value = 52 WHERE ListType = 'ReligiousVictoryYields' AND Item = 'YIELD_FAITH'; -- def. 75 , pvs 50
UPDATE AiFavoredItems SET Value = 28 WHERE ListType = 'ReligiousVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_PROPHET'; -- def. 25
UPDATE AiFavoredItems SET Value = 125 WHERE ListType = 'ReligiousVictoryPseudoYields' AND Item = 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE'; 

-- Def <Row ListType="ReligiousVictoryPseudoYields" Item="PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE" Value="100"/>

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ReligiousVictoryYields', 'YIELD_CULTURE', 1, 8),
('ReligiousVictoryYields', 'YIELD_GOLD',    1, -12), -- pvs -10
('ReligiousVictoryYields', 'YIELD_SCIENCE', 1, -8), -- pvs -10
('ReligiousVictoryDiplomacy',    'DIPLOACTION_ALLIANCE_RELIGIOUS', 1, 0),
('ReligiousVictoryDiplomacy',    'DIPLOACTION_DECLARE_HOLY_WAR', 1, 0),
--('ReligiousVictoryDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 85),
--('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, -25), -- base 100 -- pvs -50, -40, -35
--('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 5),
('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, 15),
('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 15),
('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, 10),
--('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -2),
('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, 20),
('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_TOURISM', 1, -5); -- base 1

-- Todo add Preference for the Darwinist Agenda perhaps etc

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ReligiousVictoryTechs'),
('ReligiousVictoryCivics'),
('ReligiousVictoryWonders'),
('ReligiousVictorySettlement'),
('ReligiousVictoryUnits');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('ReligiousVictoryTechs',   'Technologies'),
('ReligiousVictoryCivics',  'Civics'),
('ReligiousVictoryWonders', 'Buildings'),
('ReligiousVictorySettlement', 'PlotEvaulations'),
('ReligiousVictoryUnits',   'Units');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryTechs'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryCivics'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryWonders'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictorySettlement'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryUnits');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ReligiousVictoryTechs', 'TECH_ASTROLOGY', 1, 0), 
('ReligiousVictoryTechs', 'TECH_NUCLEAR_FISSION', 1, 0), 
('ReligiousVictoryTechs', 'TECH_NUCLEAR_FUSION', 1, 0), 
('ReligiousVictoryCivics', 'CIVIC_MYSTICISM', 1, 0),
('ReligiousVictoryCivics', 'CIVIC_THEOLOGY', 1, 0),
('ReligiousVictoryCivics', 'CIVIC_REFORMED_CHURCH', 1, 0),

--('ReligiousVictoryCivics', 'CIVIC_SUFFRAGE', 0, 0), 
--('ReligiousVictoryCivics', 'CIVIC_TOTALITARIANISM', 0, 0), 
--('ReligiousVictoryCivics', 'CIVIC_CLASS_STRUGGLE', 0, 0), 

('ReligiousVictoryWonders', 'BUILDING_ORACLE', 1, 0),
('ReligiousVictoryWonders', 'BUILDING_HAGIA_SOPHIA', 1, 0),
--('ReligiousVictoryWonders', 'BUILDING_STONEHENGE', 1, 0),
('ReligiousVictoryWonders', 'BUILDING_MAHABODHI_TEMPLE', 1, 0),

('ReligiousVictoryUnits', 'UNIT_MISSIONARY', 1, -55), -- pvs 15, -20, -45
('ReligiousVictoryUnits', 'UNIT_APOSTLE', 1, 70), -- pvs 25, 35, 45, 60
('ReligiousVictoryUnits', 'UNIT_GURU', 0, -22), -- pvs -15 (and favoured)
('ReligiousVictoryUnits', 'UNIT_NATURALIST', 0, -50);
--('ReligiousVictoryUnits', 'UNIT_INQUISITOR', 1, -10);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'ReligiousVictorySettlement', 0, 1, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true"


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ReligiousVictoryWonders', 'BUILDING_GREAT_BATH', 1, 0 -- gathering storm dlc -- useful for religious civs only
FROM Types WHERE Type = 'BUILDING_GREAT_BATH';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ReligiousVictoryWonders', 'BUILDING_MEENAKSHI_TEMPLE', 1, 0 -- not very good but might as well add it for fun -- Guru 30% discount
FROM Types WHERE Type = 'BUILDING_MEENAKSHI_TEMPLE';
