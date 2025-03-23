# Define CPU threshold
$cpuThreshold = 75

# Function to get CPU usage
function Get-CPUUsage {
    return (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
}

# Monitoring loop
while ($true) {
    $cpuLoad = Get-CPUUsage
    Write-Output "Current CPU Load: $cpuLoad%"

    if ($cpuLoad -gt $cpuThreshold) {
        Write-Output "Threshold exceeded. Triggering GCP VM..."
        Start-Process -FilePath "cmd.exe" -ArgumentList "/c ./scripts/create_vm_gcp.sh"
        break
    }
    Start-Sleep -Seconds 5
}
