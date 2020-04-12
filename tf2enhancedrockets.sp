/**
 * =============================================================================
 * [TF2] Enhanced Rockets
 * Adds custom rocket models because Valve said they couldn't do it.
 * (And then went and did it with the Air Strike)
 * =============================================================================
 * Special Thanks To:
 *
 * Elbagast - Created models for the Direct Hit, Black Box, Rocket Jumper, Liberty Launcher and the Original
 * N-Cognito - Created models for everything else (big thanks!)
 * Benoist3012 - Model index overrides suggestion + many other helpful tips
 * nosoop - Australium weapon check
 *
 */
#include <sourcemod>
#include <sdkhooks>
#include <sdktools>

#pragma semicolon 1
#pragma newdecls required

#define PLUGIN_VERSION "19w34a-GMD"

ConVar gcvEnableTCDirectHit;
ConVar gcvEnableTCRocketJumper;

// Rocket model indices
int giRocketDirectHit = -1;
int giRocketBlackBox = -1;
int giRocketRocketJumper = -1;
int giRocketLibertyLauncher = -1;
int giRocketOriginal = -1;
int giRocketBeggarsBazooka = -1;

bool gbFilesCached = false;

public Plugin myinfo =
{
	name = "[TF2] Enhanced Rockets 2 - Fork",
	author = "404",
	description = "Custom rocket models for each rocket launcher!",
	version = PLUGIN_VERSION,
	url = "http://forums.alliedmods.net"
};

public void OnPluginStart()
{
	CreateConVar("sm_er2_version", PLUGIN_VERSION, "TF2: Enhanced Rockets plugin version.", FCVAR_NOTIFY);

	gcvEnableTCDirectHit = CreateConVar("sm_er2_tcdirecthit", "0", "Enable team-colored Direct Hit rocket skins?", _, true, 0.0, true, 1.0);
	gcvEnableTCRocketJumper = CreateConVar("sm_er2_tcrocketjumper", "0", "Enable BLU cream spirit team-colored Rocket Jumper rocket skin?", _, true, 0.0, true, 1.0);

}

public void OnMapStart()
{
	// Direct Hit Rocket - Model created by Elbagast
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_directhit.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_directhit.vtf");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_directhit_blue.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_directhit_blue.vtf");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_directhit_red.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_directhit_red.vtf");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_directhit.dx80.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_directhit.dx90.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_directhit.mdl");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_directhit.phy");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_directhit.sw.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_directhit.vvd");
		
	// Black Box Rocket/Festive Black Box Rocket 
	// Normal model created by Elbagast - Festive model created by N-Cog
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_blackbox.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_blackbox.vtf");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_blackbox.dx80.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_blackbox.dx90.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_blackbox.mdl");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_blackbox.phy");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_blackbox.sw.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_blackbox.vvd");

	// Rocket Jumper Rocket - Model created by Elbagast
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_rocketjumper.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_rocketjumper.vtf");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_rocketjumper_blue.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_rocketjumper_blue.vtf");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_rocketjumper.dx80.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_rocketjumper.dx90.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_rocketjumper.mdl");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_rocketjumper.phy");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_rocketjumper.sw.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_rocketjumper.vvd");

	// Liberty Launcher Rocket - Model created by Elbagast
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_libertylauncher.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_libertylauncher.vtf");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_libertylauncher.dx80.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_libertylauncher.dx90.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_libertylauncher.mdl");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_libertylauncher.phy");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_libertylauncher.sw.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_libertylauncher.vvd");

	// Original Rocket - Model created by Elbagast
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_original.vmt");
	AddFileToDownloadsTable("materials/models/enhancedrockets2/w_rocket_original.vtf");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_original.dx80.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_original.dx90.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_original.mdl");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_original.phy");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_original.sw.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_original.vvd");

	// Beggar's Bazooka Rocket - Model created by N-Cog
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_beggarsbazooka.dx80.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_beggarsbazooka.dx90.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_beggarsbazooka.mdl");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_beggarsbazooka.phy");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_beggarsbazooka.sw.vtx");
	AddFileToDownloadsTable("models/enhancedrockets2/w_rocket_beggarsbazooka.vvd");

	// Precache the models
	giRocketDirectHit = PrecacheModel("models/enhancedrockets2/w_rocket_directhit.mdl", true);
	giRocketBlackBox = PrecacheModel("models/enhancedrockets2/w_rocket_blackbox.mdl", true);
	giRocketLibertyLauncher = PrecacheModel("models/enhancedrockets2/w_rocket_libertylauncher.mdl", true);
	giRocketOriginal	= PrecacheModel("models/enhancedrockets2/w_rocket_original.mdl", true);
	giRocketRocketJumper = PrecacheModel("models/enhancedrockets2/w_rocket_rocketjumper.mdl", true);
	giRocketBeggarsBazooka = PrecacheModel("models/enhancedrockets2/w_rocket_beggarsbazooka.mdl", true);

	gbFilesCached = true;
}


public void OnEntityCreated(int iEntity, const char[] strClassname)
{
	if(!gbFilesCached)
		return;

	if(StrEqual(strClassname, "tf_projectile_rocket"))
		SDKHook(iEntity, SDKHook_SpawnPost, Projectile_RocketSpawnPost);
}

public void Projectile_RocketSpawnPost(int iRocket)
{
	if(!IsValidEntity(iRocket))
		return;

	int iClient = GetEntPropEnt(iRocket, Prop_Data, "m_hOwnerEntity");
	int iWeapon = GetEntPropEnt(iClient, Prop_Send, "m_hActiveWeapon");
	int iWeaponId = GetEntProp(iWeapon, Prop_Send, "m_iItemDefinitionIndex");

	if(!iWeapon || !IsValidEdict(iWeapon))
		return;

	switch(iWeaponId)
	{
		// Direct Hit
		case 127: 
			SetRocketModel(iRocket, giRocketDirectHit, (gcvEnableTCDirectHit.BoolValue ? 0 : GetClientTeam(iClient)-2));

		// Black Box, Festive Black Box
		case 228, 1085: 
			SetRocketModel(iRocket, giRocketBlackBox);

		// Rocket Jumper
		case 237: 
			SetRocketModel(iRocket, giRocketRocketJumper, (gcvEnableTCRocketJumper.BoolValue ? 0 : GetClientTeam(iClient)-2));

		// Liberty Launcher
		case 414: 
			SetRocketModel(iRocket, giRocketLibertyLauncher);

		// The Original
		case 513: 
			SetRocketModel(iRocket, giRocketOriginal);

		// Beggar's Bazooka
		case 730:
			SetRocketModel(iRocket, giRocketBeggarsBazooka);

		/*
		// Air Strike
		case 1104:
			SetRocketModel(iRocket, giRocketAirStrike);
		*/
	}
}

// Thanks Benoist3012 for the tip about using m_nModelIndexOverrides!
void SetRocketModel(int iRocket, int iModelIndex = 0, int iSkin = 0)
{
	// Set the model index overrides for all four vision types
	for(int i = 0; i < 4; i++)
		SetEntProp(iRocket, Prop_Send, "m_nModelIndexOverrides", iModelIndex, _, i);
		
	SetEntProp(iRocket, Prop_Send, "m_nSkin", iSkin);
}
