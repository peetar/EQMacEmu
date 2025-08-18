ALTER TABLE `zone` 
ADD COLUMN `afk_kick_timer` int(11) NOT NULL DEFAULT 0 AFTER `content_flags_disabled`;