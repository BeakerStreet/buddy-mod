/* RHAI inspiration

-- Early Agg


UPDATE AiFavoredItems SET Value = 30 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENSES';
UPDATE AiFavoredItems SET Value = 35 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENDING_UNITS';
UPDATE AiFavoredItems SET Value = -50 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_CITY_BASE';

UPDATE AiFavoredItems SET Value = 28 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENSES';
UPDATE AiFavoredItems SET Value = -35 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_CITY_BASE';

--UPDATE AiFavoredItems SET Value = 28 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENDING_UNITS';

UPDATE AiFavoredItems SET Value = -37 WHERE ListType = 'AggressivePseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENSES';


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 28);
