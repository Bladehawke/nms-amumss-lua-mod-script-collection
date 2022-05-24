NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Min Technology Stats Default Type Chance 1.0.pak",
  ["MOD_AUTHOR"]				= "JustRuthless",
  ["NMS_VERSION"]				= "3.89",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["MATH_OPERATION"] 		  = "*FB:ValueMin",
							["INTEGER_TO_FLOAT"] 		= "FORCE",
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ValueMax",	"1",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MinIsSuperRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MinIsRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MinIsUncommon",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MaxIsSuperRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MaxIsRare",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"StatLevels",},
							["REPLACE_TYPE"] 		    = "ALL",
							["VALUE_MATCH"] 	= "MaxIsUncommon",
							["VALUE_MATCH_TYPE"] 	= "STRING",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightingCurve",	"NoWeighting",},
							},
						},
					}
				},
			},
		}
	},
}