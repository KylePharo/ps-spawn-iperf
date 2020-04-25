<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    iperf
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$iperf                           = New-Object system.Windows.Forms.Form
$iperf.ClientSize                = '254,634'
$iperf.text                      = "iperf spawner"
$iperf.TopMost                   = $true

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 95
$Groupbox1.width                 = 94
$Groupbox1.location              = New-Object System.Drawing.Point(116,24)

$text_instances                  = New-Object system.Windows.Forms.TextBox
$text_instances.multiline        = $false
$text_instances.width            = 76
$text_instances.height           = 20
$text_instances.location         = New-Object System.Drawing.Point(19,92)
$text_instances.Font             = 'Microsoft Sans Serif,10'

$text_startPort                  = New-Object system.Windows.Forms.TextBox
$text_startPort.multiline        = $false
$text_startPort.width            = 78
$text_startPort.height           = 20
$text_startPort.location         = New-Object System.Drawing.Point(18,40)
$text_startPort.Font             = 'Microsoft Sans Serif,10'

$label_endPort                   = New-Object system.Windows.Forms.Label
$label_endPort.text              = "Instances"
$label_endPort.AutoSize          = $true
$label_endPort.width             = 25
$label_endPort.height            = 10
$label_endPort.location          = New-Object System.Drawing.Point(18,71)
$label_endPort.Font              = 'Microsoft Sans Serif,10'

$label_startPort                 = New-Object system.Windows.Forms.Label
$label_startPort.text            = "Start Port"
$label_startPort.AutoSize        = $true
$label_startPort.width           = 25
$label_startPort.height          = 10
$label_startPort.location        = New-Object System.Drawing.Point(18,18)
$label_startPort.Font            = 'Microsoft Sans Serif,10'

$Groupbox2                       = New-Object system.Windows.Forms.Groupbox
$Groupbox2.height                = 42
$Groupbox2.width                 = 200
$Groupbox2.location              = New-Object System.Drawing.Point(19,127)

$rad_tcp                         = New-Object system.Windows.Forms.RadioButton
$rad_tcp.text                    = "TCP"
$rad_tcp.AutoSize                = $true
$rad_tcp.width                   = 104
$rad_tcp.height                  = 20
$rad_tcp.location                = New-Object System.Drawing.Point(29,14)
$rad_tcp.Font                    = 'Microsoft Sans Serif,10'

$rad_udp                         = New-Object system.Windows.Forms.RadioButton
$rad_udp.text                    = "UDP"
$rad_udp.AutoSize                = $true
$rad_udp.width                   = 104
$rad_udp.height                  = 20
$rad_udp.location                = New-Object System.Drawing.Point(120,14)
$rad_udp.Font                    = 'Microsoft Sans Serif,10'

$text_threads                    = New-Object system.Windows.Forms.TextBox
$text_threads.multiline          = $false
$text_threads.width              = 74
$text_threads.height             = 20
$text_threads.location           = New-Object System.Drawing.Point(19,307)
$text_threads.Font               = 'Microsoft Sans Serif,10'

$label_threads                   = New-Object system.Windows.Forms.Label
$label_threads.text              = "Threads per Process"
$label_threads.AutoSize          = $true
$label_threads.width             = 25
$label_threads.height            = 10
$label_threads.location          = New-Object System.Drawing.Point(21,288)
$label_threads.Font              = 'Microsoft Sans Serif,10'

$Groupbox4                       = New-Object system.Windows.Forms.Groupbox
$Groupbox4.height                = 42
$Groupbox4.width                 = 200
$Groupbox4.location              = New-Object System.Drawing.Point(19,177)

$rad_iperf                       = New-Object system.Windows.Forms.RadioButton
$rad_iperf.text                  = "iperf"
$rad_iperf.AutoSize              = $true
$rad_iperf.width                 = 104
$rad_iperf.height                = 20
$rad_iperf.location              = New-Object System.Drawing.Point(29,13)
$rad_iperf.Font                  = 'Microsoft Sans Serif,10'

$rad_iperf3                      = New-Object system.Windows.Forms.RadioButton
$rad_iperf3.text                 = "iperf3"
$rad_iperf3.AutoSize             = $true
$rad_iperf3.width                = 104
$rad_iperf3.height               = 20
$rad_iperf3.location             = New-Object System.Drawing.Point(120,14)
$rad_iperf3.Font                 = 'Microsoft Sans Serif,10'

$but_spawn                       = New-Object system.Windows.Forms.Button
$but_spawn.text                  = "Spawn Iperf"
$but_spawn.width                 = 208
$but_spawn.height                = 30
$but_spawn.location              = New-Object System.Drawing.Point(18,511)
$but_spawn.Font                  = 'Microsoft Sans Serif,10'

$rad_server                      = New-Object system.Windows.Forms.RadioButton
$rad_server.text                 = "Server"
$rad_server.AutoSize             = $true
$rad_server.width                = 104
$rad_server.height               = 20
$rad_server.enabled              = $true
$rad_server.location             = New-Object System.Drawing.Point(9,21)
$rad_server.Font                 = 'Microsoft Sans Serif,10'

$rad_client                      = New-Object system.Windows.Forms.RadioButton
$rad_client.text                 = "Client"
$rad_client.AutoSize             = $true
$rad_client.width                = 104
$rad_client.height               = 20
$rad_client.location             = New-Object System.Drawing.Point(8,59)
$rad_client.Font                 = 'Microsoft Sans Serif,10'

$label_serverAddress             = New-Object system.Windows.Forms.Label
$label_serverAddress.text        = "Server Address"
$label_serverAddress.AutoSize    = $true
$label_serverAddress.width       = 25
$label_serverAddress.height      = 10
$label_serverAddress.location    = New-Object System.Drawing.Point(21,336)
$label_serverAddress.Font        = 'Microsoft Sans Serif,10'

$text_serverAddress              = New-Object system.Windows.Forms.TextBox
$text_serverAddress.multiline    = $false
$text_serverAddress.width        = 115
$text_serverAddress.height       = 20
$text_serverAddress.location     = New-Object System.Drawing.Point(21,359)
$text_serverAddress.Font         = 'Microsoft Sans Serif,10'

$but_killall                     = New-Object system.Windows.Forms.Button
$but_killall.text                = "Kill All Iperf"
$but_killall.width               = 208
$but_killall.height              = 30
$but_killall.location            = New-Object System.Drawing.Point(17,555)
$but_killall.Font                = 'Microsoft Sans Serif,10'

$text_runIperf                   = New-Object system.Windows.Forms.TextBox
$text_runIperf.multiline         = $false
$text_runIperf.width             = 100
$text_runIperf.height            = 20
$text_runIperf.location          = New-Object System.Drawing.Point(18,601)
$text_runIperf.Font              = 'Microsoft Sans Serif,10'

$text_runIperf3                  = New-Object system.Windows.Forms.TextBox
$text_runIperf3.multiline        = $false
$text_runIperf3.width            = 100
$text_runIperf3.height           = 20
$text_runIperf3.location         = New-Object System.Drawing.Point(127,601)
$text_runIperf3.Font             = 'Microsoft Sans Serif,10'

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 115
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(21,412)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Window Size (tcp)"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(21,389)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $false
$TextBox2.width                  = 115
$TextBox2.height                 = 20
$TextBox2.location               = New-Object System.Drawing.Point(20,465)
$TextBox2.Font                   = 'Microsoft Sans Serif,10'

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Bandwidth (udp)"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(19,442)
$Label2.Font                     = 'Microsoft Sans Serif,10'

$Groupbox3                       = New-Object system.Windows.Forms.Groupbox
$Groupbox3.height                = 42
$Groupbox3.width                 = 200
$Groupbox3.location              = New-Object System.Drawing.Point(20,228)

$rad_forward                     = New-Object system.Windows.Forms.RadioButton
$rad_forward.text                = "forward"
$rad_forward.AutoSize            = $true
$rad_forward.width               = 104
$rad_forward.height              = 20
$rad_forward.location            = New-Object System.Drawing.Point(25,14)
$rad_forward.Font                = 'Microsoft Sans Serif,10'

$rad_reverse                     = New-Object system.Windows.Forms.RadioButton
$rad_reverse.text                = "reverse"
$rad_reverse.AutoSize            = $true
$rad_reverse.width               = 104
$rad_reverse.height              = 20
$rad_reverse.location            = New-Object System.Drawing.Point(117,14)
$rad_reverse.Font                = 'Microsoft Sans Serif,10'

$iperf.controls.AddRange(@($Groupbox1,$text_instances,$text_startPort,$label_endPort,$label_startPort,$Groupbox2,$text_threads,$label_threads,$Groupbox4,$but_spawn,$label_serverAddress,$text_serverAddress,$but_killall,$text_runIperf,$text_runIperf3,$TextBox1,$Label1,$TextBox2,$Label2,$Groupbox3))
$Groupbox2.controls.AddRange(@($rad_tcp,$rad_udp))
$Groupbox4.controls.AddRange(@($rad_iperf,$rad_iperf3))
$Groupbox1.controls.AddRange(@($rad_server,$rad_client))
$Groupbox3.controls.AddRange(@($rad_forward,$rad_reverse))





$but_killall.Add_Click({ killall })
$but_spawn.Add_Click({ spawniperf })
$rad_iperf.Add_CheckedChanged({ iperfChanged })


$text_startPort.Text = "5201"
$text_instances.Text = "10"
$text_threads.Text = "4"
$text_serverAddress.Text = "103.214.104.29"
$rad_server.Checked = $true
$rad_udp.Checked = $true
$rad_iperf3.Checked = $true
$rad_reverse.Checked = $true

function iperfChanged {
    if ($rad_iperf.Checked -eq $true) {
        $text_startPort.Text = "5001"
    } else {
        $text_startPort.Text = "5201"
    }
}

function spawniperf {
    [int]$iperf_startport_int = $text_startPort.Text
    [int]$iperf_endport_int = ([int]$text_startPort.Text)+([int]$text_instances.Text)-1
    $iperf_serverAddress = $text_serverAddress.Text
    $iperf_threads = $text_threads.Text
    if ($rad_iperf.Checked -eq $true) {
        $command = $PSScriptRoot + "\iperf\iperf.exe"
        $iperf_arguments = ""

        if ($rad_server.Checked -eq $true) {
            $iperf_arguments += "-s "
        } else {
            $iperf_arguments += "-c $iperf_serverAddress "
            if ($rad_udp.Checked -eq $true) {
                $iperf_arguments += "-u "
            }
            if ($rad_reverse.Checked -eq $true) {
                $iperf_arguments += "-r "
            }

            $iperf_arguments += "-P $iperf_threads "
        }

        while ($iperf_startport_int -le $iperf_endport_int) {
            Start-Process -FilePath $command -ArgumentList "-p $iperf_startport_int $iperf_arguments" -NoNewWindow
            write-host "$command -p $iperf_startport_int $iperf_arguments"
            $iperf_startport_int++
        }

    } elseif ($rad_iperf3.Checked -eq $true) {
        $command = $PSScriptRoot + "\iperf3\iperf3.exe"
        $iperf_arguments = ""

        if ($rad_server.Checked -eq $true) {
            $iperf_arguments += "-s "
        } else {
            $iperf_arguments += "-c $iperf_serverAddress "
            if ($rad_udp.Checked -eq $true) {
                $iperf_arguments += "-u "
            }
            if ($rad_reverse.Checked -eq $true) {
                $iperf_arguments += "-R "
            }

            $iperf_arguments += "-P $iperf_threads "
        }
        
        while ($iperf_startport_int -le $iperf_endport_int) {
            Start-Process -FilePath $command -ArgumentList "-p $iperf_startport_int $iperf_arguments" -NoNewWindow
            write-host "$command -p $iperf_startport_int $iperf_arguments"
            $iperf_startport_int++
        }
    }
}

function killall {
    Get-Process -Name "iperf" -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
    Get-Process -Name "iperf3" -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
}


#Write your logic code here



$text_runIperf.text = "iperf: $iperfProcesses 0"
$text_runIperf3.text = "iperf3: $iperf3Processes 0"

$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 5000
$timer.add_tick({AddToLog})

function AddToLog {
    $iperfProcesses = (Get-Process -Name "iperf" -ErrorAction SilentlyContinue).count
    $iperf3Processes = (Get-Process -Name "iperf3" -ErrorAction SilentlyContinue).count
    $text_runIperf.text = "iperf: $iperfProcesses"
    $text_runIperf3.text = "iperf3: $iperf3Processes"
}

$timer.start()

[void]$iperf.ShowDialog()

