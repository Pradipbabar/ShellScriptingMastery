# PowerShell Advanced Process Management Script

#region Process Synchronization

# Named Mutex for Synchronization
$mutex = New-Object Threading.Mutex($false, "MyMutex")

# Acquire the mutex
$mutex.WaitOne()

# Critical section code
Write-Host "Inside the critical section."

# Release the mutex
$mutex.ReleaseMutex()

#endregion Process Synchronization

#region Inter-Process Communication (IPC)

# Named Pipe for IPC
$pipeServer = New-Object System.IO.Pipes.NamedPipeServerStream("MyPipe", [System.IO.Pipes.PipeDirection]::InOut)
$pipeServer.WaitForConnection()

# Write data to the pipe
$writer = New-Object System.IO.StreamWriter($pipeServer)
$writer.WriteLine("Data from the server.")
$writer.Dispose()

# Read data from the pipe
$reader = New-Object System.IO.StreamReader($pipeServer)
$data = $reader.ReadLine()
$reader.Dispose()

Write-Host "Data received from the client: $data"

# Close the pipe
$pipeServer.Close()

#endregion Inter-Process Communication (IPC)

#region Handling Signals

# Signal Handling Basics
$event = New-Object System.Threading.ManualResetEvent($false)
Register-ObjectEvent -InputObject $event -EventName Set -Action { Write-Host "Signal received!" }

# Set the event to simulate receiving a signal
$event.Set()

# Graceful Script Termination
function Terminate-Script {
    Write-Host "Script termination signal received."
    # Cleanup and exit script gracefully
    Exit
}

# Register event for termination signal
Register-ObjectEvent -InputObject $event -EventName Set -Action { Terminate-Script }

#endregion Handling Signals
