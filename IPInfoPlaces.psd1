@{
    RootModule              = 'IPInfoPlaces.psm1'
    ModuleVersion           = '1.0.0'
    GUID                    = '3d2f6298-d88f-4261-9670-42854acf732f'
    Author                  = 'Ryan Terp'
    Copyright               = 'Copyright (c) 2026 Ryan Terp. Licensed under the MIT License.'
    Description             = 'Retrieves venue-level Wi-Fi netwok location details for an IP address from the IPinfo Places API.
'
    PowerShellVersion       = '5.1'
    CompatiblePSEditions    = @('Desktop','Core')
    FunctionsToExport       = @('Clear-IPInfoPlacesCache','Get-IPInfoPlaces', 'Get-IPInfoPlacesCache')
    CmdletsToExport         = @()
    VariablesToExport       = @()
    AliasesToExport         = @()
    PrivateData             = @{
        PSData = @{
            Tags          = @('IP','geolocation','ASN','IPinfo','LLM','AI','Security')
            LicenseUri    = 'https://opensource.org/licenses/MIT'
            ProjectUri    = 'https://github.com/00destruct0/IPInfoLite'
            ReleaseNotes  = 'v1.0.0 - Initial Release'
        }
    }
}  