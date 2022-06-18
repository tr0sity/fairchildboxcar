
VSN_E2D =  {
      
		Name 			= 'VSN_E2D',--AG
		DisplayName		= _('E-2D Hawkeye'),--AG
        Picture 		= "E-2D.png",
        Rate 			= "100",
        Shape			= "VSN_E2D",--AG	
		WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_E2D';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_E2D-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_E2D';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_E2D-oblomok";
			file  		= "VSN_E2D-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	    mapclasskey 		= "P0091000056",
		--attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER, "AWACS", "Refuelable",},
		attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER, "AWACS", "Datalink", "Link16"},

		Categories= {"{D2BC159C-5B7D-40cf-92CD-44DF3E99FAA9}", "",},	
		
	    Categories = {
        },
		M_empty	=	17090,
		M_nominal	=	20500,
		M_max	=	24687,
		M_fuel_max	=	5624,
		H_max	=	11275,
		average_fuel_consumption	=	0.3,
		CAS_min	=	43,
		V_opt	=	133.3,
		V_take_off	=	53,
		V_land	=	53,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		radar_can_see_ground	=	true,
		
		nose_gear_pos 								= 	{  6.638,	-3.072,	0},
	    nose_gear_amortizer_direct_stroke   		=  0,      -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		= -0,      -- up 
	    nose_gear_amortizer_normal_weight_stroke 	= -0,      -- down from nose_gear_pos
	    nose_gear_wheel_diameter					=	1.2,
	
	    main_gear_pos 								= 	{ -0.94,	-3.04,	0},
	    main_gear_amortizer_direct_stroke	 	    =   0,     --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =  -0,     --  up 
	    main_gear_amortizer_normal_weight_stroke    =  -0,     --  down from main_gear_pos
	    main_gear_wheel_diameter					=	1.2,

		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0,
		Ny_max	=	2.5,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	178.2,
		V_max_h	=	173.8,
		wing_area	=	65.03,
		wing_span	=	24.56,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	22000,
		thrust_sum_ab	=	22000,
		Vy_max	=	12,
		length	=	17.55,
		height	=	5.59,
		flaps_maneuver	=	1,
		Mach_max	=	0.53,
		range	=	2854,
		RCS	=	50,
		Ny_max_e	=	2,
		detection_range_max	=	400,
		IR_emission_coeff	=	0.5,
		IR_emission_coeff_ab	=	0,
		crew_size				=	2,
		engines_count	=	2,
		wing_tip_pos = 	{-1.41,	0.484,	-16.537},
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		launch_bar_connected_arg_value	= 0.815,--0.885,--0.745
		
		mechanimations = {
        Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"PosType", 9}, {"Sleep", "for", 5.0}}}, {C = {{"Arg", 38, "set", 1.0}}}}}, -- TODO make jettisonable - Made Dragon
                {Transition = {"Open", "Board"},  Sequence = {{C = {{"PosType", 9}, {"Sleep", "for", 60.0}}}, {C = {{"Arg", 38, "to", 1.0, "in", 0.75}}}}},
                {Transition = {"Board", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 3.75}}}}},
            },
            Door1 = {DuplicateOf = "Door0"},
            Door2 = {DuplicateOf = "Door0"},
            Door3 = {DuplicateOf = "Door0"},
            Door4 = {DuplicateOf = "Door0"},
            FoldableWings = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 6.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 30.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 1.000, "in", 1.0}}}}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.000, "in", 6.0}}}}},
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 0.866, "in", 1.0}}}}},
                {Transition = {"Stage", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.000, "in", 6.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {
                        {C = {{"ChangeDriveTo", "Mechanical"}, {"Sleep", "for", 0.000}}},
                        {C = {{"Arg", 85, "from", 1.000, "to", 0.737, "in", 0.400}}},
                        {C = {{"Arg", 85, "from", 0.737, "to", 0.696, "in", 0.300}}},
                        {C = {{"Sleep", "for", 1.800}}},
                        {C = {{"Sleep", "for", 0.150}}},
                        {C = {{"Arg", 85, "from", 0.696, "to", 1.000, "in", 0.200}}},
                        {C = {{"PosType", 6}, {"Sleep", "for", 2.2}}},
                        {C = {{"Arg", 85, "from", 1.000, "to", 0.866, "in", 2.25}}},
                    },
                },				
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.866, "to", 0.745, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.866, "to", 1.000, "in", 0.1}}}}},
        },
    }, -- end of mechanimations
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{1.59,	-0.301,	-3.487},
				elevation	=	0,
				diameter	=	0.5,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.6, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{1.59,	-0.301,	-5.43},
				elevation	=	0,
				diameter	=	0.5,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.6, 
			}, -- end of [2]
			[3] = 
			{
				pos = 	{1.59,	-0.301,	3.487},
				elevation	=	0,
				diameter	=	0.5,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.6, 
			}, -- end of [3]
			[4] = 
			{
				pos = 	{1.59,	-0.301,	5.43},
				elevation	=	0,
				diameter	=	0.5,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.6, 
			}, -- end of [4]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{17.3,	1.3,	0},
		fires_pos = 
		{
			[1] = 	{0.048,	1.008,	0},
			[2] = 	{0.048,	1.008,	2.322},
			[3] = 	{0.048,	1.008,	-2.322},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.267,	0.054,	3.293},
			[9] = 	{-0.267,	0.054,	-3.293},
			[10] = 	{-0.267,	0.054,	3.293},
			[11] = 	{-0.267,	0.054,	-3.293},
		}, -- end of fires_pos
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
		
        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 240,
chaff 				= {default = 120, increment = 30, chargeSz = 1},
flare 				= {default = 60, increment = 15, chargeSz = 2}
 },		

        CanopyGeometry = {
            azimuth = {-110.0, 110.0},
            elevation = {-40.0, 70.0}
        },
		
Sensors = {
RADAR = "AN/APS-138",
RWR = "Abstract RWR"
},
Countermeasures = {
ECM = "AN/ALQ-135"--f15
},		
		

	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

	Pylons =     {

        pylon(1, 0, 0, 0, 0,
            {
            },
            {
            }
        ),
	},
	
	Tasks = {
        aircraft_task(AWACS),
    },	
	DefaultTask = aircraft_task(AWACS),

	SFM_Data = {     --E2C.
	aerodynamics =
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.015,
			cx_flap	=	0.05,
			cy_flap	=	1,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.022,	0.117,	0.0397,	1e-006,	0.5,	30,	1.2},
				[2] = 	{0.1,	0.022,	0.117,	0.0397,	1e-006,	1,	30,	1.2},
				[3] = 	{0.2,	0.022,	0.117,	0.0397,	1e-006,	1.5,	30,	1.2},
				[4] = 	{0.3,	0.022,	0.117,	0.0397,	1e-006,	2,	30,	1.2},
				[5] = 	{0.4,	0.022,	0.117,	0.0397,	1e-006,	2.5,	30,	1.2},
				[6] = 	{0.5,	0.022,	0.117,	0.0397,	1e-006,	3,	30,	1.2},
				[7] = 	{0.6,	0.022,	0.117,	0,	0.32,	3.5,	30,	1.2},
				[8] = 	{0.7,	0.025,	0.117,	0.049,	0.9,	3.5,	28.666666666667,	1.18},
				[9] = 	{0.8,	0.034,	0.117,	0.117,	1,	3.5,	27.333333333333,	1.16},
				[10] = 	{1.05,	0.04775,	0.117,	0.186375,	0.48125,	3.5,	24,	1.11},
				[11] = 	{1.1,	0.0505,	0.117,	0.20025,	0.3775,	3.15,	18,	1.1},
				[12] = 	{1.2,	0.056,	0.117,	0.228,	0.17,	2.45,	17,	1.05},
				[13] = 	{1.3,	0.056,	0.117,	0.228,	0.17,	1.75,	16,	1},
				[14] = 	{1.5,	0.056,	0.117,	0.228,	0.17,	1.5,	13,	0.9},
				[15] = 	{1.7,	0.056,	0.117,	0.228,	0.17,	0.9,	12,	0.7},
				[16] = 	{2.2,	0.056,	0.117,	0.228,	0.17,	0.7,	9,	0.4},
				[17] = 	{3.9,	0.056,	0.117,	0.228,	0.17,	0.7,	9,	0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			--type	=	"TurboJet",
			type	=	"TurboProp", 	--MQ-9 Reaper
			hMaxEng	=	19,
			dcx_eng	=	0.0144,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	3000,
			dpdh_f	=	3000,
			table_data = 
			{
				[1] = 	{0,		75395.9,	75395.9},--75395.9
				[2] = 	{0.1,	274143.8,	274143.8},--74143.8
				[3] = 	{0.2,	61765.6,	61765.6},
				[4] = 	{0.3,	51900.8,	51900.8},
				[5] = 	{0.4,	43773.3,	43773.3},
				[6] = 	{0.5,	35854.2,	35854.2},
				[7] = 	{0.6,	29229.2,	29229.2},
				[8] = 	{0.7,	24312.3,	24312.3},
				[9] = 	{0.8,	20719.3,	20719.3},
				[10] = 	{0.9,	16500,	16500},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 6, args = {146}},  
	[1]  = {critical_damage = 5, args = {296}},
	[2]  = {critical_damage = 5, args = {297}},
	[3]  = {critical_damage = 15, args = {65}},
	[9]  = {critical_damage = 6, args = {154}},
	[10] = {critical_damage = 6, args = {153}},
	[11] = {critical_damage = 6, args = {167}},
	[12] = {critical_damage = 6, args = {161}},
	[13] = {critical_damage = 10, args = {66}},
	[14] = {critical_damage = 10, args = {162}},
	[15] = {critical_damage = 6, args = {267}},
	[16] = {critical_damage = 6, args = {266}},
	[23] = {critical_damage = 6, args = {223}, deps_cells = {25}},
	[24] = {critical_damage = 6, args = {213}, deps_cells = {26}},
	[25] = {critical_damage = 6, args = {226}},
	[26] = {critical_damage = 6, args = {216}},
	[29] = {critical_damage = 8, args = {224}, deps_cells = {23, 25, 31}},
	[30] = {critical_damage = 8, args = {214}, deps_cells = {24, 26, 32}},
	[31] = {critical_damage = 5, args = {227}},
	[32] = {critical_damage = 5, args = {217}},
	[35] = {critical_damage = 20, args = {225}, deps_cells = {11, 29, 23, 25, 31, 37}},
	[36] = {critical_damage = 20, args = {215}, deps_cells = {12, 30, 24, 26, 32, 38}},
	[37] = {critical_damage = 5, args = {228}},
	[38] = {critical_damage = 5, args = {218}},
	[39] = {critical_damage = 6, args = {244}, deps_cells = {53}},
	[40] = {critical_damage = 6, args = {241}, deps_cells = {54}},
	[47] = {critical_damage = 12, args = {236}, deps_cells = {51, 39, 53}},
	[48] = {critical_damage = 12, args = {234}, deps_cells = {52, 40, 54}},
	[51] = {critical_damage = 6, args = {240}},
	[52] = {critical_damage = 6, args = {238}},
	[53] = {critical_damage = 6, args = {248}},
	[54] = {critical_damage = 6, args = {247}},
	[55] = {critical_damage = 50, args = {159}, deps_cells = {56, 57, 58, 47, 51, 39, 53, 48, 52, 40, 54}},
	[56] = {critical_damage = 50, args = {158}, deps_cells = {55, 57, 58, 47, 51, 39, 53, 48, 52, 40, 54}},
	[57] = {critical_damage = 50, args = {157}, deps_cells = {55, 56, 58, 47, 51, 39, 53, 48, 52, 40, 54}},
	[58] = {critical_damage = 50, args = {156}, deps_cells = {56, 57, 58, 47, 51, 39, 53, 48, 52, 40, 54}},
	[59] = {critical_damage = 6, args = {148}},
	[61] = {critical_damage = 4, args = {147}},
	[82] = {critical_damage = 6, args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "E-2C-OBLOMOK-WING-R", -- wing R
		[2] = "E-2C-OBLOMOK-WING-L", -- wing L
--		[3] = "kc-135-oblomok-noise", -- nose
--		[4] = "kc-135-oblomok-tail-r", -- tail
--		[5] = "kc-135-oblomok-tail-l", -- tail
	},
	

	lights_data = { 
	typename = "collection", 
	lights = {
		[WOLALIGHT_NAVLIGHTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
                    lights = {
                        {
                            typename = "Spot", connector = "BANO_2", dir_correction = {azimuth = math.rad(180.0)}, argument = 192,
                            proto = lamp_prototypes.ANO_3_Bl, angle_max = math.rad(180.0), angle_min = math.rad(170.0),
                        },
                        {
                            typename = "Spot", connector = "BANO_0", dir_correction = {azimuth = math.rad(-45.0), elevation = math.rad(45.0)}, argument = 190,
                            proto = lamp_prototypes.ANO_3_Kr, angle_max = math.rad(120.0), angle_min = math.rad(90.0),
                        },
                        {
                            typename = "Spot", connector = "BANO_1", dir_correction = {azimuth = math.rad(45.0), elevation = math.rad(45.0)}, argument = 191,
                            proto = lamp_prototypes.ANO_3_Zl, angle_max = math.rad(120.0), angle_min = math.rad(90.0),
                        },
                    },
                },
            },
        },
        [WOLALIGHT_SPOTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {azimuth = math.rad(10.0), elevation = math.rad(10.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
                        },
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {azimuth = math.rad(-10.0), elevation = math.rad(10.0)},
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
                        },
                    },
                },
            },
        },
        [WOLALIGHT_TAXI_LIGHTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
                    lights = {
                        {
                            typename = "Spot", connector = "MAIN_SPOT_PTR", dir_correction = {azimuth = math.rad(10.0), elevation = math.rad(10.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
                        },
                        {
                            typename = "Spot", connector = "RESERV_SPOT_PTR", dir_correction = {azimuth = math.rad(-10.0), elevation = math.rad(10.0)},
                            proto = lamp_prototypes.LFS_P_27_200, angle_max = math.rad(30.0), angle_min = math.rad(30.0 * 0.8),
                        },
                    },
                },
            },
        },
        [WOLALIGHT_CABIN_NIGHT] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "collection",
                    lights = {
                        {
                            typename = "Omni", position = {-3.000, 0.200, 0.400},
                            color = {0.0, 1.0, 0.0, 0.4}, range = 2.0,
                        },
                        {
                            typename = "Omni", position = {-2.000, 0.200, 0.400},
                            color = {0.0, 1.0, 0.0, 0.4}, range = 2.0,
                        },
                        {
                            typename = "Omni", position = {-1.000, 0.200, 0.400},
                            color = {0.0, 1.0, 0.0, 0.4}, range = 2.0,
                        },
                    },
                },
            },
        },
        [WOLALIGHT_CABIN_BOARDING] = {
            typename = "collection",
            lights = {
                {
                    typename = "collection",
                    lights = {
                        {
                            typename = "Omni", position = {2.200, -0.100, -0.600},
                            color = {1.0, 0.9, 0.9, 0.65}, range = 4.4,
                        },
                    },
                },
            },
        },
        [WOLALIGHT_STROBES] = {
            typename = "collection",
            lights = {
                {
                    typename = "collection",
                    lights = {
                        {
                            typename = "natostrobelight", position = {4.797, -1.192 - 0.200, 0.020}, argument = 83,
                            proto = lamp_prototypes.MPS_1,
                        },
                        {
                            typename = "natostrobelight", position = {-8.173, 3.268 + 0.200, 3.434},
                            proto = lamp_prototypes.MPS_1,
						},
                    },
                },
            }
        },
	}},
}

add_aircraft(VSN_E2D)
