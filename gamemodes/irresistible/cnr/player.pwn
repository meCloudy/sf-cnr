/*
 * Irresistible Gaming (c) 2018
 * Developed by Lorenc Pekaj
 * Module: cnr\player.pwn
 * Purpose: all player related variables (cnr)
 */

/* ** Variables ** */
new
    bool: p_Spawned    				[ MAX_PLAYERS char ],
    bool: p_PlayerLogged    		[ MAX_PLAYERS char ],
    p_AccountID						[ MAX_PLAYERS ],
    p_AdminLevel       				[ MAX_PLAYERS ],
    p_Job               			[ MAX_PLAYERS char ],
    p_VIPJob               			[ MAX_PLAYERS char ],
    bool: p_JobSet            		[ MAX_PLAYERS char ],
  	p_JailTime          			[ MAX_PLAYERS ],
  	p_AdminJailed					[ MAX_PLAYERS char ],
   	p_JailTimer       				[ MAX_PLAYERS ],
    bool: p_Jailed          	  	[ MAX_PLAYERS char ],
   	p_WantedLevel       			[ MAX_PLAYERS ],
    bool: p_Tazed           	  	[ MAX_PLAYERS char ],
  	p_LastVehicle       			[ MAX_PLAYERS ] = { INVALID_VEHICLE_ID, ... },
  	bool: p_Cuffed          	  	[ MAX_PLAYERS char ],
	p_CuffAbuseTimer    			[ MAX_PLAYERS ],
 	p_AntiRobSpam       			[ MAX_PLAYERS ],
 	p_AntiRapeSpam      			[ MAX_PLAYERS ],
  	bool: p_Tied            	  	[ MAX_PLAYERS char ],
 	p_Ropes             			[ MAX_PLAYERS ],
  	bool: p_Kidnapped       	  	[ MAX_PLAYERS char ],
  	bool: p_ToggledViewPM        	[ MAX_PLAYERS char ],
  	p_TicketTimestamp  				[ MAX_PLAYERS ],
   	p_TicketIssuer           		[ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
	p_CheckpointEnterTick   	    [ MAX_PLAYERS ],
	bool: p_pausedToLoad    	    [ MAX_PLAYERS char ],
	bool: p_CantUseReport           [ MAX_PLAYERS char ],
	p_pausedToLoadTimer     	    [ MAX_PLAYERS ],
	p_BankMoney               	 	[ MAX_PLAYERS ],
	p_OwnedHouses                   [ MAX_PLAYERS ],
	p_OwnedVehicles                 [ MAX_PLAYERS ],
	p_OwnedBusinesses				[ MAX_PLAYERS ],
	p_TrackingTimer             	[ MAX_PLAYERS ] = { -1, ... },
	p_ContractedAmount          	[ MAX_PLAYERS ],
	p_MetalMelter                   [ MAX_PLAYERS ],
	p_Kills                         [ MAX_PLAYERS ],
	p_Deaths                        [ MAX_PLAYERS ],
	p_VIPLevel                     	[ MAX_PLAYERS ],
	p_XP                            [ MAX_PLAYERS ],
	p_CureDealer                    [ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
	p_CureTick                      [ MAX_PLAYERS ],
	p_HealDealer					[ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
	p_HealTick						[ MAX_PLAYERS ],
	bool: p_Spectating            	[ MAX_PLAYERS char ],
	bool: p_Muted                   [ MAX_PLAYERS char ],
	bool: p_InfectedHIV             [ MAX_PLAYERS char ],
	p_ExperienceHideTimer           [ MAX_PLAYERS ],
	p_AntiTextSpam                  [ MAX_PLAYERS ],
	bool: p_BlockedPM            	[ MAX_PLAYERS ] [ MAX_PLAYERS ],
	bool: p_inFBI                   [ MAX_PLAYERS char ],
	bool: p_inArmy                  [ MAX_PLAYERS char ],
	p_MutedTime                     [ MAX_PLAYERS ],
    p_AntiCommandSpam               [ MAX_PLAYERS ],
    p_PmResponder                  	[ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
    bool: justConnected        		[ MAX_PLAYERS char ],
	p_BailOfferer                   [ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
	p_DamageTDTimer                 [ MAX_PLAYERS ] = { -1, ... },
	Text3D: p_InfoLabel             [ MAX_PLAYERS ] = { Text3D: INVALID_3DTEXT_ID, ... },
	p_InfoLabelString               [ MAX_PLAYERS ] [ 32 ],
	bool: p_inMovieMode             [ MAX_PLAYERS char ],
	bool: p_inCIA                   [ MAX_PLAYERS char ],
	p_AntiEmpSpam                   [ MAX_PLAYERS ],
	bool: p_inPaintBall           	[ MAX_PLAYERS char ],
	p_Scissors                      [ MAX_PLAYERS ],
	// p_TaxTime              			[ MAX_PLAYERS ],
	bool: p_GPSToggled            	[ MAX_PLAYERS char ],
	p_GPSTimer                      [ MAX_PLAYERS ] = { 0xFF, ... },
	p_GPSLocation               	[ MAX_PLAYERS ],
	p_GPSObject                   	[ MAX_PLAYERS ] = { INVALID_OBJECT_ID, ... },
	p_VIPArmourRedeem               [ MAX_PLAYERS ],
	p_VIPWeaponRedeem               [ MAX_PLAYERS ],
	p_VIPExpiretime                 [ MAX_PLAYERS ],
	p_LastSkin                      [ MAX_PLAYERS ],
	bool: p_MoneyBag                [ MAX_PLAYERS char ],
	p_CopBanned                     [ MAX_PLAYERS char ],
	p_AntiEMP                       [ MAX_PLAYERS ],
	p_FireDistanceTimer             [ MAX_PLAYERS ] = { 0xFF, ... },
	p_Warns                         [ MAX_PLAYERS ],
	p_Wood							[ MAX_PLAYERS ],
	p_LumberjackDeliver				[ MAX_PLAYERS ] = { 0xFFFF, ... },
	p_LumberjackReturn				[ MAX_PLAYERS ] = { 0xFFFF, ... },
	p_LumberjackTimeElapsed			[ MAX_PLAYERS ],
	bool: p_StartedLumberjack		[ MAX_PLAYERS char ],
	p_Uptime                        [ MAX_PLAYERS ],
	p_AchievementTimer              [ MAX_PLAYERS ] = { 0xFF, ... },
	bool: p_SecureWallet          	[ MAX_PLAYERS char ],
	p_WeedGrams                     [ MAX_PLAYERS ],
	p_WeedDealer                    [ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
	p_WeedTick                      [ MAX_PLAYERS ],
	p_WeedSellingGrams 				[ MAX_PLAYERS ],
	p_Arrests                       [ MAX_PLAYERS ],
	bool: p_AidsVaccine          	[ MAX_PLAYERS char ],
	bool: p_CantUseAsk              [ MAX_PLAYERS char ],
	bool: p_AdminLog                [ MAX_PLAYERS char ],
	LastDeath						[ MAX_PLAYERS ],
	DeathSpam						[ MAX_PLAYERS char ],
	bool: p_beingSpectated			[ MAX_PLAYERS ],
	p_whomSpectating				[ MAX_PLAYERS ],
	bool: p_InAnimation        		[ MAX_PLAYERS char ],
	p_AntiSaveStatsSpam				[ MAX_PLAYERS ],
	p_AntiMechFixSpam				[ MAX_PLAYERS ],
	p_AntiMechNosSpam				[ MAX_PLAYERS ],
	p_AntiMechEmpSpam				[ MAX_PLAYERS ],
	bool: p_GivingBlowjob         	[ MAX_PLAYERS char ],
	bool: p_GettingBlowjob         	[ MAX_PLAYERS char ],
	p_AntiBlowJobSpam               [ MAX_PLAYERS ],
	p_EntranceTickcount            	[ MAX_PLAYERS ],
    p_VIPWep1                       [ MAX_PLAYERS char ],
    p_VIPWep2                       [ MAX_PLAYERS char ],
    p_VIPWep3                       [ MAX_PLAYERS char ],
    p_VIPWep_Modify                	[ MAX_PLAYERS char ],
    p_BobbyPins                     [ MAX_PLAYERS ],
    p_IncorrectLogins               [ MAX_PLAYERS char ],
    p_Robberies                     [ MAX_PLAYERS ],
    p_ViewingStats                  [ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
    p_CarWarpTime					[ MAX_PLAYERS ],
    p_CarWarpVehicleID              [ MAX_PLAYERS ],
	p_AntiTextSpamCount				[ MAX_PLAYERS char ],
	Float: p_PlayerBuggerX			[ MAX_PLAYERS ],
	Float: p_PlayerBuggerY			[ MAX_PLAYERS ],
	Float: p_PlayerBuggerZ			[ MAX_PLAYERS ],
	p_DamageSpamTime				[ MAX_PLAYERS ],
	p_DamageSpamCount				[ MAX_PLAYERS char ],
	p_PingImmunity                  [ MAX_PLAYERS char ],
	p_Fires                         [ MAX_PLAYERS ],
	p_ApartmentEnter                [ MAX_PLAYERS char ],
	p_AntiTieSpam                   [ MAX_PLAYERS ],
	p_RansomPlacer                  [ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
	p_RansomAmount                  [ MAX_PLAYERS ],
	p_LastDrovenPoliceVeh			[ MAX_PLAYERS ] = { INVALID_VEHICLE_ID, ... },
	Text3D: p_SpawnKillLabel		[ MAX_PLAYERS ] = { Text3D: INVALID_3DTEXT_ID, ... },
	p_AntiSpawnKill                 [ MAX_PLAYERS ],
    bool: p_AntiSpawnKillEnabled	[ MAX_PLAYERS char ],
    p_HitsComplete                  [ MAX_PLAYERS ],
    /*p_CopTutorial                   [ MAX_PLAYERS char ],
    p_CopTutorialProgress			[ MAX_PLAYERS char ],
    p_CopTutorialTick               [ MAX_PLAYERS ],*/
	p_WeaponDealTick				[ MAX_PLAYERS ],
	p_WeaponDealer					[ MAX_PLAYERS ] = { INVALID_PLAYER_ID, ... },
	p_WeaponDealMenu				[ MAX_PLAYERS char ],
	p_WeaponLockerMenu				[ MAX_PLAYERS char ],
	bool: p_WeaponDealing			[ MAX_PLAYERS char ],
	p_BlowjobOfferer				[ MAX_PLAYERS ],
	p_BlowjobDealTick				[ MAX_PLAYERS ],
	p_LastEnteredEntrance          	[ MAX_PLAYERS ] = { -1, ... },
	p_ViewingGangTalk               [ MAX_PLAYERS ] = { -1, ... },
	p_SearchedCountTick	        	[ MAX_PLAYERS ],
	p_SellingWeedTick               [ MAX_PLAYERS ],
	p_AntiKidnapSpam                [ MAX_PLAYERS ],
	//p_JoinTimestamp                 [ MAX_PLAYERS ],
	p_PasswordedHouse               [ MAX_PLAYERS ],
	p_HouseWeaponAddSlot            [ MAX_PLAYERS char ],
	Text3D: p_AdminLabel         	[ MAX_PLAYERS ] = { Text3D: INVALID_3DTEXT_ID, ... },
	bool: p_AdminOnDuty             [ MAX_PLAYERS char ],
	p_FurnitureCategory             [ MAX_PLAYERS char ],
	p_FurnitureRotAxis              [ MAX_PLAYERS char ],
	Float: p_ProgressStatus         [ MAX_PLAYERS ],
	bool: p_ProgressStarted         [ MAX_PLAYERS char ],
	p_HouseCrackingPW				[ MAX_PLAYERS ],
	p_PawnStoreExport				[ MAX_PLAYERS ] = { 0xFFFF, ... },
	p_Burglaries                    [ MAX_PLAYERS ],
    p_ArmyBanned                    [ MAX_PLAYERS char ],
	//Text3D: p_DetainedLabel       [ MAX_PLAYERS ] = { Text3D: INVALID_3DTEXT_ID, ... },
    //bool: p_Detained          	[ MAX_PLAYERS char ],
	//p_DetainedBy                  [ MAX_PLAYERS ],
	p_BailTimestamp					[ MAX_PLAYERS ],
	p_AFKTime						[ MAX_PLAYERS ],
	bool: p_ClassSelection			[ MAX_PLAYERS char ],
	p_MiningExport					[ MAX_PLAYERS ] = { 0xFFFF, ... },
	Text3D: p_WeedLabel				[ MAX_PLAYERS ] = { Text3D: INVALID_3DTEXT_ID, ... },
	LastPickupTimestamp				[ MAX_PLAYERS ],
	PreviousPickupID				[ MAX_PLAYERS ],
	//p_LastAnimIndex					[ MAX_PLAYERS ],
	p_SpawningCity					[ MAX_PLAYERS char ],
	p_UsingRobberySafe 				[ MAX_PLAYERS ] = { -1, ... },
	bool: p_CancelProgress 			[ MAX_PLAYERS char ],
	p_LumberjackMapIcon 			[ MAX_PLAYERS ] = { 0xFFFF, ... },
	p_PawnStoreMapIcon 				[ MAX_PLAYERS ] = { 0xFFFF, ... },
	p_SpectateWeapons 				[ MAX_PLAYERS ] [ 13 ] [ 2 ],
	bool: p_LeftCuffed 				[ MAX_PLAYERS char ],
	p_LabelColor					[ MAX_PLAYERS ] = { COLOR_GREY, ... },
	p_RapidFireTickCount			[ MAX_PLAYERS ],
	p_RapidFireShots				[ MAX_PLAYERS char ],
	p_BulletInvulnerbility 			[ MAX_PLAYERS ],
	p_ProgressUpdateTimer			[ MAX_PLAYERS ] = { 0xFFFF, ... },
	p_DeathMessage 					[ MAX_PLAYERS ] [ 32 ],
	p_ViewingInterior 				[ MAX_PLAYERS char ],
	p_MethYielded 					[ MAX_PLAYERS ],
	p_CarsJacked 					[ MAX_PLAYERS ],
	p_BankBlown						[ MAX_PLAYERS ],
	p_JailsBlown					[ MAX_PLAYERS ],
	p_AntiExportCarSpam 			[ MAX_PLAYERS ],
	p_AntiMechFlipSpam 				[ MAX_PLAYERS ],
	bool: p_inAlcatraz 				[ MAX_PLAYERS char ],
	Float: p_LastPickupPos 			[ MAX_PLAYERS ] [ 3 ],
	Text3D: p_TiedLabel       		[ MAX_PLAYERS ] = { Text3D: INVALID_3DTEXT_ID, ... },
	p_TiedBy 						[ MAX_PLAYERS ],
	p_BlowjobPrice 					[ MAX_PLAYERS ],
	p_DesyncTime 					[ MAX_PLAYERS ],
	p_AnswerDelay					[ MAX_PLAYERS ],
	p_LastPlayerState 				[ MAX_PLAYERS char ],
	p_RespondDelay 					[ MAX_PLAYERS ],
	p_VisibleOnRadar 				[ MAX_PLAYERS ],
	p_InGarage 						[ MAX_PLAYERS ] = { -1, ... },
	p_WorkCooldown 					[ MAX_PLAYERS ],
	p_AntiSpammyTS 					[ MAX_PLAYERS ],
	p_TruckedCargo 					[ MAX_PLAYERS ],
	p_KidnapImmunity				[ MAX_PLAYERS ],
	p_GangSplitProfits 				[ MAX_PLAYERS ],
	Float: p_IrresistiblePoints 	[ MAX_PLAYERS ],
	p_SafeHelperTimer				[ MAX_PLAYERS ] = { -1, ... },
	p_HouseOfferer					[ MAX_PLAYERS ],
	p_HouseOfferTicks				[ MAX_PLAYERS ],
	p_HouseSellingID				[ MAX_PLAYERS ],
	p_HouseSellingPrice				[ MAX_PLAYERS ],
	p_RansomTimestamp 				[ MAX_PLAYERS ],
	p_QuitToAvoidTimestamp 			[ MAX_PLAYERS ],
	p_TimeTiedAt 					[ MAX_PLAYERS ],
	p_CopRefillTimestamp			[ MAX_PLAYERS ],
	p_AdminCommandPause 			[ MAX_PLAYERS ],
	p_WeaponKills					[ MAX_PLAYERS ] [ MAX_WEAPONS ],
	p_forcedAnticheat				[ MAX_PLAYERS ],
	p_TiedAtTimestamp 				[ MAX_PLAYERS ],
	bool: p_AutoSpin				[ MAX_PLAYERS char ],
	p_InBusiness 					[ MAX_PLAYERS ] = { -1, ... },
	p_VehicleBringCooldown 			[ MAX_PLAYERS ],
	p_Fireworks 					[ MAX_PLAYERS ],
	p_ExplosiveBullets 				[ MAX_PLAYERS ],
	bool: p_AddedEmail 				[ MAX_PLAYERS char ],
	p_TazingImmunity 				[ MAX_PLAYERS ],
	p_PlayerAltBind 				[ MAX_PLAYERS ] = { -1, ... },
	p_PlayerAltBindTick 			[ MAX_PLAYERS ],
	p_AimedAtPolice 				[ MAX_PLAYERS ]
;

/* ** Getters And Setters** */
stock GetPlayerAccountID( playerid ) return p_AccountID[ playerid ];

stock GetPlayerVIPLevel( playerid ) return p_VIPLevel[ playerid ];

stock IsPlayerInPaintBall( playerid ) return p_inPaintBall{ playerid };

stock IsPlayerMovieMode( playerid ) return p_inMovieMode{ playerid };

stock GetPlayerAdminLevel( playerid ) return p_AdminLevel[ playerid ];

stock IsPlayerSpawned( playerid ) return p_Spawned{ playerid };

stock IsPlayerJailed( playerid ) return p_Jailed{ playerid };

stock IsPlayerAdminOnDuty( playerid ) return p_AdminOnDuty{ playerid };

stock IsPlayerSpawnProtected( playerid ) return p_AntiSpawnKillEnabled{ playerid };
