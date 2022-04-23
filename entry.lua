declare_plugin("C-119 by BZ Crew",
{
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
version		 = "0.3.0.alpha",		 
state		 = "installed",
info		 = _("The Fairchild C-119 Flying Boxcar (Navy and Marine Corps designation R4Q) was an American military transport aircraft designed to carry cargo, personnel, litter patients, and mechanized equipment, and to drop cargo and troops by parachute."),

Skins	= 
	{
		{
			name	= "C-119",
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		= _("C-119"),
			dir			= "Missions",
			CLSID		= "{CLSID5456456346CLSID}",	
		},
	},	
LogBook =
	{
		{
			name		= _("C-119"),
			type		= "C-119",
		},
	},	
InputProfiles =
	{
		["C-119"]     = current_mod_path .. '/Input',
	},
})
---------------------------------------------------------------------------------------
dofile(current_mod_path..'/C-119.lua')

plugin_done()-- finish declaration , clear temporal data
