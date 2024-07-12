### Aliases

New-Alias -Name ls -Value Get-ChildItem





### Sharepoint

New-Alias -Name info -Value Get-PnPSite 
function spcon {
      param($site)
      Connect-PnPOnline -Url https://ucblaw.sharepoint.com/sites/"$site" -Interactive
}
function spexit {
    Disconnect-PnPOnline
}

# Download Site Pages
function pcopy {
    $pageUrl = Read-Host -Prompt "Enter page URL"
    $localPath = "$HOME/Desktop"
    #Grabs the filename string at end of URL
    if ($pageUrl -match ".*/(.+)$") {
        $fname = $matches[1]
    }
    Get-PnPFile -Url $pageUrl -Path $localPath -FileName "$fname" -AsFile
}

### Exchange
function conex {
    Connect-ExchangeOnline -UserPrincipalName thilbert@clinical.law.berkeley.edu
}
function disconex {
    New-Alias -Name  disconnect-ExchangeOnline
}




