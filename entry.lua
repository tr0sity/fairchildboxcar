self_ID = "VSN_E2D"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("VSN_E2D"),
developerName = _("ED E-2D"),

fileMenuName = _("VSN_E2D"),
update_id        = "VSN_E2D",
version		 = "2.5.6",
state		 = "installed",
info		 = _("Die Grumman E-2 Hawkeye ist ein allwetterfaehiges, traegergestuetztes Fruehwarnflugzeug. Die E-2 Hawkeye, war nicht nur das erste traegergestuetzte Flugzeug in dieser Rolle, sondern auch die als erstes speziell fuer diesen Einsatzzweck konstruierte Maschine."),

encyclopedia_path = current_mod_path..'/Encyclopedia',

Skins	=
	{
		{
		    name	= _("VSN_E2D"),
			dir		= "Theme"
		},
	},	
Missions =
	{
		{
			name		    = _("VSN_E2D"),
			dir			    = "Missions",
  		},
	},
		
LogBook =
	{
		{
			name		= _("VSN_E2D"),
			type		= "VSN_E2D",
		},
	},	
InputProfiles =
	{
		["VSN_E2D"] = current_mod_path .. '/Input/VSN_E2D',
	},	

})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/VSN_E2D")
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/VSN_E2D.lua')
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_F15Pit.lua")
make_view_settings('VSN_E2D', ViewSettings, SnapViews)
--make_flyable('VSN_E2D',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old =6}, current_mod_path..'/comm.lua')--SFM
make_flyable('VSN_E2D',current_mod_path..'/Cockpit/Scripts/',{nil, old =6}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
plugin_done()
