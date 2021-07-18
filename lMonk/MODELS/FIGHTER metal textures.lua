--[[┎──────────────────────────────────────────────────────────────────
	┃ metal parts in wings and tail instead of secondary texture
────┸──────────────────────────────────────────────────────────────--]]
local function AddNormalMap(tex)
	return [[
	<Property value="TkMaterialSampler.xml">
		<Property name="Name" value="gNormalMap"/>
		<Property name="Map" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/]]..tex..[[.NORMAL.DDS"/>
		<Property name="IsCube" value="False"/>
		<Property name="UseCompression" value="True"/>
		<Property name="UseMipMaps" value="True"/>
		<Property name="IsSRGB" value="False"/>
		<Property name="MaterialAlternativeId" value=""/>
		<Property name="TextureAddressMode" value="Wrap"/>
		<Property name="TextureFilterMode" value="Trilinear"/>
		<Property name="Anisotropy" value="0"/>
	</Property>
	]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL fighter metal textures.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_MODELS ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
--[
	{
		-- add missing normal maps
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/PRIMARY1.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F27_VBTANGENT'},
				VALUE_CHANGE_TABLE 	= {
					{'MaterialFlag','_F03_NORMALMAP'}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Samplers',
				ADD 				= AddNormalMap('PRIMARY')
			}
		}
	},
	{
		-- add missing normal maps
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/TERTIARY1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE/TERTIARY.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F27_VBTANGENT'},
				VALUE_CHANGE_TABLE 	= {
					{'MaterialFlag','_F03_NORMALMAP'}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Samplers',
				ADD 				= AddNormalMap('TERTIARY')
			}
		}
	},
--]]
--[[
	{
		-- total black (T1) bat-ship
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/PRIMARY1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/TERTIARY1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE/TERTIARY.MATERIAL.MBIN'		-- org
		},
		EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Metamaterial', 'Models/Common/Spacecraft/Fighters/Materials/Primary_Mat.metamaterial.mXml'},
				-- }
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.DDS'},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMasksMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.MASKS.DDS'},
				}
			}
		}
	},
--]]
	{
		MBIN_FILE_SOURCE	= {
--[[
			-- total black shared
			'MODELS/COMMON/SPACECRAFT/SHARED/WEAPONS/SHIPGUN/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/ENGINEC/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB/PRIMARY2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB/TERTIARY.MATERIAL.MBIN',

			-- total black heavy (T3) bat-ship
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA/PRIMARY2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDLEFT/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDLEFT/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDRIGHT/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDRIGHT/TERTIARY.MATERIAL.MBIN',

			-- total black (T1) bat-ship
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSA/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSALEFT/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSARIGHT/PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSA/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSALEFT/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSARIGHT/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/SUBWINGSALEFT_PRIMARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/SUBWINGSCRIGHT_TERTIARY2.MATERIAL.MBIN',
--]]
			-- some metal in choice placements
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA/SUBWINGSC_TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/ENGINEC/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_A/WINGS_A/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB/TERTIARY.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Metamaterial', 'Models/Common/Spacecraft/Fighters/Materials/Primary_Mat.metamaterial.mXml'},
				-- }
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.DDS'},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMasksMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.MASKS.DDS'},
				}
			}
		}
	}
}}}}