<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    iperf
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$iperf                           = New-Object system.Windows.Forms.Form
$iperf.ClientSize                = '189,337'
$iperf.text                      = "iperf"
$iperf.TopMost                   = $false

$Spawn_iperf                     = New-Object system.Windows.Forms.Button
$Spawn_iperf.text                = "Spawn Iperf"
$Spawn_iperf.width               = 97
$Spawn_iperf.height              = 30
$Spawn_iperf.location            = New-Object System.Drawing.Point(18,123)
$Spawn_iperf.Font                = 'Microsoft Sans Serif,10'

$spawn_iperf3                    = New-Object system.Windows.Forms.Button
$spawn_iperf3.text               = "Spawn Iperf3"
$spawn_iperf3.width              = 98
$spawn_iperf3.height             = 30
$spawn_iperf3.location           = New-Object System.Drawing.Point(14,291)
$spawn_iperf3.Font               = 'Microsoft Sans Serif,10'

$StartPort_iperf3                = New-Object system.Windows.Forms.Label
$StartPort_iperf3.text           = "Start Port"
$StartPort_iperf3.AutoSize       = $true
$StartPort_iperf3.width          = 25
$StartPort_iperf3.height         = 10
$StartPort_iperf3.location       = New-Object System.Drawing.Point(22,170)
$StartPort_iperf3.Font           = 'Microsoft Sans Serif,10'

$endPort_iperf3                  = New-Object system.Windows.Forms.Label
$endPort_iperf3.text             = "End Port"
$endPort_iperf3.AutoSize         = $true
$endPort_iperf3.width            = 25
$endPort_iperf3.height           = 10
$endPort_iperf3.location         = New-Object System.Drawing.Point(21,229)
$endPort_iperf3.Font             = 'Microsoft Sans Serif,10'

$iperf3_endport                  = New-Object system.Windows.Forms.TextBox
$iperf3_endport.multiline        = $false
$iperf3_endport.text             = "5231"
$iperf3_endport.width            = 147
$iperf3_endport.height           = 20
$iperf3_endport.location         = New-Object System.Drawing.Point(21,256)
$iperf3_endport.Font             = 'Microsoft Sans Serif,10'

$iperf3_startport                = New-Object system.Windows.Forms.TextBox
$iperf3_startport.multiline      = $false
$iperf3_startport.text           = "5201"
$iperf3_startport.width          = 148
$iperf3_startport.height         = 20
$iperf3_startport.location       = New-Object System.Drawing.Point(20,195)
$iperf3_startport.Font           = 'Microsoft Sans Serif,10'

$iperf_endport                   = New-Object system.Windows.Forms.TextBox
$iperf_endport.multiline         = $false
$iperf_endport.text              = "5031"
$iperf_endport.width             = 143
$iperf_endport.height            = 20
$iperf_endport.location          = New-Object System.Drawing.Point(18,92)
$iperf_endport.Font              = 'Microsoft Sans Serif,10'

$iperf_startport                 = New-Object system.Windows.Forms.TextBox
$iperf_startport.multiline       = $false
$iperf_startport.text            = "5001"
$iperf_startport.width           = 144
$iperf_startport.height          = 20
$iperf_startport.location        = New-Object System.Drawing.Point(18,40)
$iperf_startport.Font            = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "End Port"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(18,71)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Start Port"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(18,18)
$Label2.Font                     = 'Microsoft Sans Serif,10'

$iperf.controls.AddRange(@($Spawn_iperf,$spawn_iperf3,$StartPort_iperf3,$endPort_iperf3,$iperf3_endport,$iperf3_startport,$iperf_endport,$iperf_startport,$Label1,$Label2))

$Spawn_iperf.Add_Click({ spawniperf })
$spawn_iperf3.Add_Click({ spawniperf3 })

function spawniperf3 {
    [int]$iperf3_startport_int = $iperf3_startport.Text
    [int]$iperf3_endport_int = $iperf3_endport.Text

    while ($iperf3_startport_int -le $iperf3_endport_int) {
    
    $command = "iperf3\iperf3.exe"
    $speedtestServer = "speedtest.tangelo.com"

    Start-Process -FilePath $command -ArgumentList "-p $iperf3_startport_int -c $speedtestServer -w 32M -P 4 -t 30"
    $iperf3_startport_int++
    #Start-Sleep -s 1
    }
}

function spawniperf {
    [int]$iperf_startport_int = $iperf_startport.Text
    [int]$iperf_endport_int = $iperf_endport.Text

    while ($iperf_startport_int -le $iperf_endport_int) {
    
    $command = "iperf\iperf.exe"
    $speedtestServer = "speedtest.tangelo.com"

    Start-Process -FilePath $command -ArgumentList "-p $iperf_startport_int -c $speedtestServer -P 12"
    $iperf_startport_int++
    #Start-Sleep -s 1
    }
}


#Write your logic code here

[void]$iperf.ShowDialog()
