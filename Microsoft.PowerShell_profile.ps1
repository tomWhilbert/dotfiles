### Aliases

New-Alias -Name ls -Value Get-ChildItem

New-Alias -Name ga -Value Get-Alias

New-Alias -Name info -Value Get-PnPSite 

function spcon {
      param($site)
      Connect-PnPOnline -Url https://ucblaw.sharepoint.com/sites/"$site" -Interactive
}

New-Alias -Name spexit -Value Disconnect-PnPOnline


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


function excon {
     Connect-ExchangeOnline -UserPrincipalName thilbert@clinical.law.berkeley.edu
}

New-Alias -Name  exexit disconnect-ExchangeOnline

