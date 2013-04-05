$computer = "COMPUTERNAME"
$newname = "COMPUTERNAME"
$user = "USERNAME"
$pwd = "TYPE PWD"

function rar([string]$computer, [string]$newname)
{
        $comp = gwmi win32_computersystem  -computer $computer -authentication 6
        $os   = gwmi win32_operatingsystem -computer $computer

        $comp.Rename($newname, $pwd, $user)
        $os.Reboot()
}