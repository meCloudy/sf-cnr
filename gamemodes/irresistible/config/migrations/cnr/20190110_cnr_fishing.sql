-- CREATE A MIGRATION ENTRY
INSERT INTO `DB_MIGRATIONS` (`MIGRATION`) VALUES ('20190110_cnr_fishing');

-- BEGIN

CREATE TABLE IF NOT EXISTS `FISHING` (
  `USER_ID` int(11) NOT NULL,
  `BAITS` int(11) DEFAULT '0',
  `HARPOONS` int(11) DEFAULT '0',
  `ROD_UPGRADES` tinyint(1) DEFAULT '0',
  `BAIT_UPGRADES` tinyint(1) DEFAULT '0',
  `RADAR_UPGRADES` tinyint(1) DEFAULT '0',
  `STORAGE_UPGRADES` tinyint(1) DEFAULT '0',
  `SHARKS` int(11) DEFAULT '0',
  `FISH_KGS` int(11) DEFAULT '0',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE FISHING ADD CONSTRAINT `FK_CONSTRAINTNAME`
   FOREIGN KEY (`USER_ID` )
   REFERENCES `USERS` (`ID` )
   ON DELETE CASCADE;