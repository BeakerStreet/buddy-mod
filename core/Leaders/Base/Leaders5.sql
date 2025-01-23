

/*
-- Saladin Agenda Bug Fix (should be no longer needed)

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId) VALUES
('AGENDA_AYYUBID_DYNASTY', 'MODIFIER_PLAYER_DIPLOMACY_AGENDA_AYYUBID_DYNASTY', 'ON_TURN_STARTED', 'PLAYER_IS_MAJOR_CIV_KNOWN_10_TURNS');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES
('AGENDA_AYYUBID_DYNASTY', 'StatementKey', 'AGENDA_AYYUBID_DYNASTY_WARNING'); -- Note: Value not actually used, just has to have something so we know this is a kudo/warning

INSERT OR IGNORE INTO ModifierStrings (ModifierId, Context, Text) VALUES
('AGENDA_AYYUBID_DYNASTY', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

-- Link modifier with the trait

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_AGENDA_AYYUBID_DYNASTY', 'AGENDA_AYYUBID_DYNASTY');

*/
