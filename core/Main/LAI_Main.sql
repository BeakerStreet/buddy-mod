/* RHAI inspiration

-- noinspection SqlNoDataSourceInspectionForFile
-- AUTHOR: ROMANHOLIDAY	

--------------------------------------------------------------------------------------------------------------------------
-- RH Core PseudoYields and Yields Changes
--------------------------------------------------------------------------------------------------------------------------

UPDATE PseudoYields SET DefaultValue = 21 WHERE PseudoYieldType = 'PSEUDOYIELD_IMPROVEMENT'; --  3.0 -- 
UPDATE PseudoYields SET DefaultValue = 11 WHERE PseudoYieldType = 'PSEUDOYIELD_INFLUENCE'; -- 0.5
UPDATE PseudoYields SET DefaultValue = 3.8 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST'; --  4.0
UPDATE PseudoYields SET DefaultValue = 1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_COMBAT'; -- 1.0 -- pvs 1.15, 1.14, 1.13, 1.12
UPDATE PseudoYields SET DefaultValue = 3.3 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- 1.0 previously 1.27, 1.3, 1.4, 1.45, 1.6, 1.75, 1.85, 1.95, 2.05, 2.3, 2.2, 2.5, 3.1
UPDATE PseudoYields SET DefaultValue = 6.4 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_AIR_COMBAT'; -- 4.0 previously 5, 5.5, 4.9, 5.2, 5.5 (ai not building enough planes at lower)
UPDATE PseudoYields SET DefaultValue = 0.8 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_EXPLORER'; -- 1.0
UPDATE PseudoYields SET DefaultValue = 1.7 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_SETTLER'; -- 1.6
UPDATE PseudoYields SET DefaultValue = 0.76 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_RELIGIOUS'; -- 1.0, pvs 0.73
UPDATE PseudoYields SET DefaultValue = 6.5 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_TRADE'; -- 1.0
UPDATE PseudoYields SET DefaultValue = 22.0 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_SPY'; -- 20.0
UPDATE PseudoYields SET DefaultValue = 7 WHERE PseudoYieldType = 'PSEUDOYIELD_DISTRICT'; -- 8.0
UPDATE PseudoYields SET DefaultValue = 0.75 WHERE PseudoYieldType = 'PSEUDOYIELD_WONDER'; -- 2.0 -- pvs 0.49
--UPDATE PseudoYields SET DefaultValue = 0.25 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_BONUS'; --  was +0.01 to balance other diplo modifiers (pvs +0.02)
UPDATE PseudoYields SET DefaultValue = 45.0 WHERE PseudoYieldType = 'PSEUDOYIELD_NUCLEAR_WEAPON'; -- 25.0 - Pvs 39, 52, 50, 47, 46
UPDATE PseudoYields SET DefaultValue = 8 WHERE PseudoYieldType = 'PSEUDOYIELD_RESOURCE_LUXURY'; -- 1.5 -- 100 In Monopolies mode lol
UPDATE PseudoYields SET DefaultValue = 120.0 WHERE PseudoYieldType = 'PSEUDOYIELD_SPACE_RACE'; -- 100.0
UPDATE PseudoYields SET DefaultValue = 5 WHERE PseudoYieldType = 'PSEUDOYIELD_CIVIC'; -- 5
UPDATE PseudoYields SET DefaultValue = 5 WHERE PseudoYieldType = 'PSEUDOYIELD_TECHNOLOGY'; -- 5
UPDATE PseudoYields SET DefaultValue = 0.82 WHERE PseudoYieldType = 'PSEUDOYIELD_TOURISM'; -- 1
UPDATE PseudoYields SET DefaultValue = 1.1 WHERE PseudoYieldType = 'PSEUDOYIELD_HAPPINESS'; -- 1, pvs 1.15
UPDATE PseudoYields SET DefaultValue = 1.8 WHERE PseudoYieldType = 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS'; -- 0.5
UPDATE PseudoYields SET DefaultValue = 0.65 WHERE PseudoYieldType = 'PSEUDOYIELD_ENVIRONMENT'; -- 0.5 ( was doing to many pointless carbon capture projects after the sea level has fully risen)
UPDATE PseudoYields SET DefaultValue = 0.6 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_FAVOR'; -- 0.7, pvs 0.65
UPDATE PseudoYields SET DefaultValue = 3 WHERE PseudoYieldType = 'PSEUDOYIELD_GOVERNOR'; -- 2 -- more governmant plazas early?, pvs 2.4, 2.6 -- test
UPDATE PseudoYields SET DefaultValue = 125 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT';


/*
		<Row PseudoYieldType="PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT" DefaultValue="100"/>
		<Row PseudoYieldType="PSEUDOYIELD_DIPLOMATIC_GRIEVANCE" DefaultValue="-0.5"/>
		<!-- Religious Convert is a value intended to help AI pursuing a religious victory to choose targets in other empires -->
		<Row PseudoYieldType="PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE" DefaultValue="1.0"/>
		
		<!-- Note: Dark Age point is the value of avoiding getting that point. We assume no AI's will be deliberately seeking a dark age -->
		<Row PseudoYieldType="PSEUDOYIELD_GOLDENAGE_POINT" DefaultValue="1"/>
		<Row PseudoYieldType="PSEUDOYIELD_GOVERNOR" DefaultValue="2"/>
*/

UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_SCULPTURE'; -- 10 - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_PORTRAIT'; -- 10 - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_LANDSCAPE'; -- 10 - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_RELIGIOUS'; -- 10 ART - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_ARTIFACT'; -- 10 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 15 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_WRITING'; -- 10 - 2/4 Isn't themed, pvs 8.5

UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_MUSIC'; -- 10 -4/4 Isn't themed
UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_RELIC'; -- 10 Base output 4 culture, 8 Tourism
UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_PRODUCT';

-- (multiplier to the sum of the sqrt of each city population. Value increases the priority accordingly)

--UPDATE PseudoYields SET DefaultValue = 1.05 WHERE PseudoYieldType = 'PSEUDOYIELD_STANDING_ARMY_NUMBER'; -- def 1
--UPDATE PseudoYields SET DefaultValue = 0.102 WHERE PseudoYieldType = 'PSEUDOYIELD_STANDING_ARMY_VALUE'; -- def 0.1

-- Priority

UPDATE PseudoYields SET DefaultValue = 790 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_BASE'; -- 450 pvs 820, 790
UPDATE PseudoYields SET DefaultValue = 57 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_DEFENSES'; -- 200 --pvs 52, 57, 60
UPDATE PseudoYields SET DefaultValue = 85 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_DEFENDING_UNITS'; -- 80, pvs 95, 94, 91
UPDATE PseudoYields SET DefaultValue = -390 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL'; -- 200 pvs -210, -240
UPDATE PseudoYields SET DefaultValue = 6 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_POPULATION'; -- 50-- pvs 8

-- GPP Priorities

UPDATE PseudoYields SET DefaultValue =  0.76 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 		def 0.5 (for all gpp) -- pvs 0.5
UPDATE PseudoYields SET DefaultValue =  0.6 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ARTIST'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  0.85 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ENGINEER'; -- 		0.5 -- pvs 0.7, 0.8 AI doesn't focus enough
UPDATE PseudoYields SET DefaultValue =  0.42 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_GENERAL'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  0.72 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT'; -- 		0.5 -- pvs 0.6
UPDATE PseudoYields SET DefaultValue =  0.5 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  0.6 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_PROPHET'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  0.75 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 	0.5, 0.7
UPDATE PseudoYields SET DefaultValue =  0.6 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_WRITER'; -- 		0.5

-- Yield Bias

UPDATE AiFavoredItems SET Value = 28 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_PRODUCTION'; -- def 25
UPDATE AiFavoredItems SET Value = 17 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_SCIENCE'; -- def 10, pvs 16, 14, 15
UPDATE AiFavoredItems SET Value = 11 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_CULTURE'; -- def 10
UPDATE AiFavoredItems SET Value = 16 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_GOLD';  -- def 20, pvs 12
UPDATE AiFavoredItems SET Value = -22 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_FAITH'; -- def -25, pvs -20

-- Yield Food Doesn't exist in Default Yield Bias

