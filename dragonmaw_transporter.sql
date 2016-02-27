--Alte Einträge von den Mobs löschen damit keine Fehler entstehen
-- Einige Tabellen könnten nicht existieren, wegen verschiedenen Revisionen
DELETE FROM `creature` WHERE `id` = 23188;
DELETE FROM `creature_template_addon` WHERE `entry` = 23188;
DELETE FROM `creature_template` WHERE `entry` = 23188;
DELETE FROM `creature_loot_template` WHERE `entry` = 23188;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 23188;
DELETE FROM `creature_movement_template` WHERE `entry` = 23188;
DELETE FROM `creature_template_spells` WHERE `entry` = 23188;
DELETE FROM `script_waypoint` WHERE `entry` = 23188;

-- Query für das Mount der Mobs
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(23188, 16314, 0, 1, 0, 0, 0, NULL);

--Query für die Waffenslots der Mobs
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) 
VALUES ('', '25964', '0', '0');

--Query für die Mobs an sich
--WICHTIG: Der Eintrag für EquipmentTemplateId hängt von der Entry des neu erstellten Eqipments ab
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `HeroicEntry`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `Expansion`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`) 
VALUES ('23188', 'Dragonmaw Transporter', '', NULL, '70', '70', '0', '21316', '0', '21316', '0', '14', '14', '1', '0', '7', '4', '3', '0', '0', '0', '0', '2', '2048', '5', '1.4', '2', '0', '-1', '1', '1', '1', '1', '1', '1', '7266', '7266', '3155', '3155', '314', '402', '0', '0', '5474', '165', '90', '2000', '2000', '0', '150', '250', '23188', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5593', '0', '', 'npc_dragonmaw_transporter');

--Query für den Triggermob
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `HeroicEntry`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `Expansion`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`) 
VALUES ('', 'Dragonmaw Transporter Trigger', NULL, NULL, '1', '1', '0', '20570', '0', '20570', '0', '15', '15', '1', '0', '0', '1', '3', '0', '0', '512', '0', '128', '0', '1', '1.14286', '2', '0', '-1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', 'trigger_dragonmaw_transporter');

--Spawns der beiden Trigger
--Hier muss noch die richtige Entry aus der creature_template eingetragen werden, die durch auto_increment erzeugt wird
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) 
VALUES ('', '', '530', '1', '0', '0', '-4931.72', '32.2255', '61.7857', '0.543637', '25', '0', '0', '1', '1', '0', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) 
VALUES ('', '', '530', '1', '0', '0', '-4243.08', '316.14', '148.85', '4.53', '25', '0', '0', '1', '1', '0', '0');

--Die abzufliegenden Wegpunkte der Transporter
--Path 1: Pfad 1 startet auf der Netherschwingenscherbe
--Path 2: Pfad 2 startet in der Festung des Drachenmalklans
--
--Es kann sein, dass diese Tabelle in der ScriptDev2-Datenbank liegt, je nach Version von mangos
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(23188, 0, -4892.15, 56.53, 92.72, 0, 'Path 1 - Waypoint 1'),
(23188, 1, -4752.89, 68.84, 88.5, 0, 'Path 1 - Waypoint 2'),
(23188, 2, -4727.59, 83.14, 90.83, 0, 'Path 1 - Waypoint 3'),
(23188, 3, -4691.88, 107.4, 90.96, 0, 'Path 1 - Waypoint 4'),
(23188, 4, -4674.34, 151.67, 93.09, 0, 'Path 1 - Waypoint 5'),
(23188, 5, -4729.54, 264.12, 96.71, 0, 'Path 1 - Waypoint 6'),
(23188, 6, -4722.37, 324.02, 90.08, 0, 'Path 1 - Waypoint 7'),
(23188, 7, -4587.46, 343.18, 145.18, 0, 'Path 1 - Waypoint 8'),
(23188, 8, -4539.67, 386.52, 168.44, 0, 'Path 1 - Waypoint 9'),
(23188, 9, -4314.44, 326.33, 146.33, 0, 'Path 1 - Waypoint 10'),
(23188, 10, -4256.17, 262.18, 155.76, 0, 'Path 1 - Waypoint 11'),
(23188, 11, -4197.24, 278.64, 124.8, 0, 'npc_dragonmaw_transporter_despawn(1)'),
(23188, 12, -4238.11, 311.75, 171.23, 0, 'Path 2 - Waypoint 1'),
(23188, 13, -4216.91, 230.27, 169.34, 0, 'Path 2 - Waypoint 2'),
(23188, 14, -4286.96, 225.2, 178.97, 0, 'Path 2 - Waypoint 3'),
(23188, 15, -4435.96, 275.79, 118.35, 0, 'Path 2 - Waypoint 4'),
(23188, 16, -4476.61, 219.37, 136.75, 0, 'Path 2 - Waypoint 5'),
(23188, 17, -4680.14, 128.65, 105.43, 0, 'Path 2 - Waypoint 6'),
(23188, 18, -4751.47, 128.45, 98.39, 0, 'Path 2 - Waypoint 7'),
(23188, 19, -4838.77, 125.9, 76.51, 0, 'Path 2 - Waypoint 8'),
(23188, 20, -4931.72, 32.23, 61.79, 0, 'npc_dragonmaw_transporter_despawn(2)');

--Der Loot der Mobs
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(23188, 21877, 38.8, 0, 1, 3, 0),
(23188, 25055, 0.04, 0, 1, 1, 0),
(23188, 25264, 0.01, 0, 1, 1, 0),
(23188, 25377, 0.06, 0, 1, 1, 0),
(23188, 25397, 0.12, 0, 1, 1, 0),
(23188, 27854, 4.3, 0, 1, 1, 0),
(23188, 27860, 2.2, 0, 1, 1, 0),
(23188, 31889, 0.5, 0, 1, 1, 0),
(23188, 31909, 0.5, 0, 1, 1, 0),
(23188, 31952, 0.1, 0, 1, 1, 0),
(23188, 32509, -98, 0, 1, 1, 0);





