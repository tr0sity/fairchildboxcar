declare_plugin("C-119 by BZ Crew",
{
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
version		 = "0.0.1 alpha",		 
state		 = "installed",
info		 = _("The Fairchild C-119 Flying Boxcar (Navy and Marine Corps designation R4Q) was an American military transport aircraft designed to carry cargo, personnel, litter patients, and mechanized equipment, and to drop cargo and troops by parachute."),

binaries 	 =
{
'FM_plugin',			
'Cockpit_dll_1', 
'Cockpit_dll_2'
},
--collection of input profiles
InputProfiles =
	{
		["C-119"]     = current_mod_path .. '/Input',
	},
})
-- skin for mission editor , see sample for P-51 , A-10C etc
Skins	= 
	{
		{
			name	= "C-119",
			dir		= "Theme"
		},
	},
--missions and campaigns
Missions =
	{
		{
			name		= _("C-119"),
			dir			= "Missions",
			CLSID		= "{CLSIDCLSIID}",	
		},
	},	
-- logbook entry
LogBook =
	{
		{
			name		= _("C-119"),
			type		= "C-119",
		},
	},	
---------------------------------------------------------------------------------------
dofile(current_mod_path..'/C-119.lua')
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_F15Pit.lua")
make_view_settings('C-119', ViewSettings, SnapViews)
--make_flyable('C-119',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old =6}, current_mod_path..'/comm.lua')--SFM
make_flyable('C-119',current_mod_path..'/Cockpit/Scripts/',{nil, old =6}, current_mod_path..'/comm.lua')--SFM

plugin_done()-- finish declaration , clear temporal data
