# Check if the script is running as administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    throw "Please run this script as an administrator"
}

# Define the hosts file location
$hostsFile = "$env:SystemRoot\System32\drivers\etc\hosts"

# Read the current hosts file content
try {
    $hostsContent = Get-Content $hostsFile -ErrorAction Stop
    Write-Host "Successfully read the hosts file"
} catch {
    Write-Host "Failed to read the hosts file: $_"
    exit 1
}

# Count original number of entries
$initialCount = $hostsContent.Count

# Define the path to the file containing unwanted hosts
$unwantedHostsFile = "Unwanted host lists\Example\unwanted_hosts.txt"

# Read the list of unwanted hosts from the file
try {
    $unwantedHosts = Get-Content $unwantedHostsFile -ErrorAction Stop
    Write-Host "Successfully read the list of unwanted hosts"
} catch {
    Write-Host "Failed to read the list of unwanted hosts: $_"
    exit 1
}

# Generate new entries with 127.0.0.1 and tab-separated hostname
$newEntries = $unwantedHosts | ForEach-Object {
    "127.0.0.1`t$_"
}

# Convert existing entries to a proper tab-separated list, leaving comments untouched
$existingEntries = $hostsContent | ForEach-Object {
    if ($_ -match "^#") {
        $_
    } else {
        $splitEntry = ($_ -split "`t| ").Where({ $_ -ne "" })
        $splitEntry -join "`t"
    }
}

# Add new entries if not already present
$newEntries | ForEach-Object {
    if ($existingEntries -notcontains $_) {
        try {
            Add-Content $hostsFile $_ -ErrorAction Stop
            Write-Host "Successfully added entry: $_"
        } catch {
            Write-Host "Failed to add entry: $_"
        }
    } else {
        Write-Host "Entry already exists: $_"
    }
}

# Read the updated hosts file content
try {
    $updatedHostsContent = Get-Content $hostsFile -ErrorAction Stop
    Write-Host "Successfully read the updated hosts file"
} catch {
    Write-Host "Failed to read the updated hosts file: $_"
    exit 1
}

# Remove duplicate entries and convert them, leaving comments untouched
$uniqueEntries = $updatedHostsContent | Get-Unique -AsString | ForEach-Object {
    if ($_ -match "^#") {
        $_
    } else {
        $splitEntry = ($_ -split "`t| ").Where({ $_ -ne "" })
        $splitEntry -join "`t"
    }
}

# Backup the original hosts file
try {
    Copy-Item $hostsFile "$hostsFile.bak" -ErrorAction Stop
    Write-Host "Successfully backed up the hosts file"
} catch {
    Write-Host "Failed to back up the hosts file: $_"
    exit 1
}

# Overwrite the hosts file with unique, tab-separated entries
try {
    Set-Content $hostsFile $uniqueEntries -ErrorAction Stop
    Write-Host "Successfully updated the hosts file"
} catch {
    Write-Host "Failed to update the hosts file: $_"
    exit 1
}

# Count the final number of entries
$finalCount = $uniqueEntries.Count

# Show the number of entries before and after the script execution
Write-Host "Initial number of entries: $initialCount"
Write-Host "Final number of entries: $finalCount"
