### Aliases

New-Alias -Name ls -Value Get-ChildItem

New-Alias -Name info -Value Get-PnPSite 

### Functions

function spcon {
      param($site)
      Connect-PnPOnline -Url https://ucblaw.sharepoint.com/sites/"$site" -Interactive
}
function spexit {
    Disconnect-PnPOnline
}

function conex {
    Connect-ExchangeOnline -UserPrincipalName thilbert@clinical.law.berkeley.edu
}
function disconex {
    New-Alias -Name  disconnect-ExchangeOnline
}


