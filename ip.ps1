while ($true)
{
    Get-Date >> ip.log;
    (Invoke-RestMethod 'https://api.ipify.org?format=json').ip >> ip.log;
    (Invoke-RestMethod 'ipinfo.io/json').IP >> ip.log;
    sleep 600
}
