CREATE TABLE `account_currency`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `platinum_bank` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `gold_bank` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `silver_bank` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `copper_bank` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;


INSERT INTO account_currency (id, platinum_bank, gold_bank, silver_bank, copper_bank) SELECT account.id as accountid, 
SUM(character_currency.platinum_bank) as platinum_amount,
SUM(character_currency.gold_bank) as gold_amount,
SUM(character_currency.silver_bank) as silver_amount,
SUM(character_currency.silver_bank) as copper_amount
FROM 
    character_currency, character_data, account
WHERE account.id = character_data.account_id AND character_currency.id = character_data.id and character_data.is_deleted = 0 and character_data.e_solo_only = 0 and character_data.e_self_found = 0 GROUP BY account.id