<#
.SYNOPSIS
This is a simple script that tries to look up a host name using an IP. 
.DESCRIPTION
Looks up a host name using an IP addres provided either from the command line or pipe line. 
.EXAMPLE
Get-HostEntry -IPList 192.168.1.3
.NOTES
Authour: Stephen Ancliffe
#>

function Get-HostEntry  {
    Param(
        [Parameter(
        Mandatory = $true,
        ValueFromPipeline = $true,
        HelpMessage = "Enter one or more IP's names separated by commas."
        )]
        [ValidateLength(7,14)]
        [string[]]$IPList
    )
    foreach ($IP in $IPList){
        try {
            $DNSResult = [System.Net.DNS]::GetHostEntry($IP)
            $DNSResult = $DNSResult.HostName
            Write-Host "Host name is $DNSResult for IP $IP"   
        } catch {
            $DNSResult = "Unable to look up host for "
            Write-Host $DNSResult -NoNewline
            Write-Host $IP -ForegroundColor Red
        }
    }
}#End Function Get-HostEntry

Set-Alias -Name ghe -Value Get-HostEntry -Description "Get host name for IP(s) provided"

Export-ModuleMember -Function Get-HostEntry -Alias ghe