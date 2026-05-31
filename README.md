# [<img src="https://ipinfo.io/static/ipinfo-small.svg" alt="IPinfo" width="24"/>](https://ipinfo.io/data/places) IPinfo Places PowerShell Module

This is an open-source PowerShell module for interacting with the [IPinfo Places API](https://ipinfo.io/data/places). The Places API provides venue-level intelligence that maps IP addresses to real-world locations, including hotels, airports, stadiums, train stations, and other points of interest with building-level precision.

*This module is independently developed and is not affiliated with, endorsed by, or sponsored by IPinfo.*

## Features
- Retrieve venue-level intelligence for an IP address
- **Input Validation and Deduplication:** Automatically filters invalid entries, including bogons, malformed IP addresses, domain names, and empty values, while removing duplicates to ensure clean and efficient API requests.

- **Fault-Tolerant API Calls:** Automatically handles transient errors and rate limits to provide more reliable API processing.

- In-memory query cache for performance.

## Getting Started
The IPinfo Places API is currently in beta and available to a limited number of users. To request access to the Places Beta Program, visit the [Request Early Access](https://ipinfo.io/data/places#form) page.

## Installation
This module has been tested on PowerShell 7 (Core) and Windows PowerShell 5.1 (Desktop) across ARM and Intel architectures.


> 📝 **Which PowerShell version am I using?**
>
> Most Windows systems include **Windows PowerShell 5.1** by default, as it ships preinstalled with the operating system. If you have not intentionally installed PowerShell 7, you are almost certainly running **PowerShell 5.1**.

1. On the right side of the repository page, you will see a panel labeled Releases. Click the link that says `Releases` or `Latest`.
2. On the Releases page, find the the newest version it normally appears at the top then click the version title (for example v1.0.0) to open the release details.
3. Scroll down on the release page until you see a section labeled `Assets` and click the file that ends with `.zip`.
4. Extract `ipinfoplaces.zip`.
5. Copy the extracted module folder to the appropriate PowerShell module directory shown below.
6. Once the module has been copied, import it into your PowerShell session using the [Import-Module](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/import-module?view=powershell-5.1) cmdlet.


| Version         | Scope         | Path                                                    |
|-----------------|--------------|----------------------------------------------------------|
| PowerShell 5.1  | Current User | `$HOME\Documents\WindowsPowerShell\Modules`              |
| PowerShell 5.1  | All Users    | `%SystemDrive%\Program Files\WindowsPowerShell\Modules`  |
| PowerShell 7    | Current User | `$HOME\Documents\PowerShell\Modules`                     |

## Usage

| Function | Description | Example | 
| ----------- | ----------- | ----------- |
| Get-IPInfoPlaces | Retrieves venue-level location information for an IP address using the IPinfo Places API. | `Get-IPInfoPlaces -token "your_token_here" -ip "12.11.77.34"` ||
| Get-IPInfoPlacesCache |  Returns current statistics from the query cache including entry count, cache hits, and evictions. | `Get-IPInfoPlacesCache` |
| Clear-IPInfoPlacesCache | Clears all cached query results. Use this function to resolve issues caused by stale or incorrect data. Supports the standard PowerShell `WhatIf` and `Confirm` parameters. | `Clear-IPInfoPlacesCache` |




## Output Structure
Queries return a `[PSCustomObject]` with the following fields:

- `IP`
- `Name`
- `Category`
- `SSID`
- `Latitude`
- `Longitude`
- `CacheHit` *(Boolean)*


## IPInfo Places Batch API Support

Batch API support is not currently available for the IPinfo Places API. When batch functionality becomes available, support will be added to this module in a future release.


## Caching

The IPInfoPlaces module includes a built-in caching system that minimizes redundant API calls and improves performance. When an IP address is queried, it is stored in an in-memory cache. Subsequent lookups for the same IP within the current session are served directly from the cache, reducing API load and improving response time.

The cache can be managed using the following commands:

- `Get-IPInfoPlacesCache` - Returns current statistics about the query cache.
- `Clear-IPInfoPlacesCache` - Removes all previously cached query results.

 Caching behavior is fully automatic and requires no configuration.


## License
This module is released under the [MIT License](https://opensource.org/licenses/MIT). You may use, modify, and distribute it freely.

## Author
Ryan Terp
📧 ryan.terp@gmail.com
