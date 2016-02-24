--delete all relations of the creature before uploading the new data about it
--some tables coud not exist in case of a different revision
DELETE FROM `creature` WHERE `id` = 23188;
DELETE FROM `creature_template_addon` WHERE `entry` = 23188;
DELETE FROM `creature_template` WHERE `entry` = 23188;
DELETE FROM `creature_loot_template` WHERE `entry` = 23188;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 23188;
DELETE FROM `creature_movement_template` WHERE `entry` = 23188;
DELETE FROM `creature_template_spells` WHERE `entry` = 23188;
DELETE FROM `script_waypoint` WHERE `entry` = 23188;

--query for the netherwing_mount of the dragonmaw_transporter_npc
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(23188, 16314, 0, 1, 0, 0, 0, NULL);

--The waypoints of the dragonmaw_transporter_npc 
--Path 1: the route starting at netherwing_lair
--Path 2: the route starting at dragonmaw_fortress
--
--In older database maybe in the scriptdev2_db, since november 2015 included in the mangos_db
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

--TODO:
--
--creature_template: equipmentslots (maindhand, distance)
--creature_loot_template: update the loot list
--creature_template_spells: two spells to add in database and in the script
--
--dynamic change of the weapon between melee and distance (any flag)

