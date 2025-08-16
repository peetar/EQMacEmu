ALTER TABLE `doors` ADD COLUMN `pvp_zone_door` tinyint(3) NOT NULL DEFAULT 0 AFTER `guild_zone_door`;
ALTER TABLE `doors` ADD COLUMN `pvp_max_level` int(11) NOT NULL DEFAULT 255 AFTER `pvp_zone_door`;