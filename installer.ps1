# Define URLs for the latest Vagrant and VirtualBox installers
$vagrantUrl = "https://releases.hashicorp.com/vagrant/2.2.19/vagrant_2.2.19_x86_64.msi"
$virtualBoxUrl = "https://download.virtualbox.org/virtualbox/6.1.34/VirtualBox-6.1.34-150636-Win.exe"
$gitBashUrl = "https://github.com/git-for-windows/git/releases/download/v2.37.0.windows.1/Git-2.37.0-64-bit.exe"
$gitBashInstallerPath = "C:\Downloads\gitbash_installer.exe"

# Define download paths
$vagrantInstallerPath = "C:\Downloads\vagrant_installer.msi"
$virtualBoxInstallerPath = "C:\Downloads\virtualbox_installer.exe"

# Create the Downloads directory if it doesn't exist
$downloadDir = "C:\Downloads"
if (-not (Test-Path -Path $downloadDir)) {
    New-Item -ItemType Directory -Path $downloadDir
}

# Download Vagrant
Write-Host "Downloading Vagrant..."
Invoke-WebRequest -Uri $vagrantUrl -OutFile $vagrantInstallerPath

# Download VirtualBox
Write-Host "Downloading VirtualBox..."
Invoke-WebRequest -Uri $virtualBoxUrl -OutFile $virtualBoxInstallerPath

Write-Host "Download completed. Installers are saved in C:\Downloads."

# Download Git Bash
Write-Host "Downloading Git Bash..."
Invoke-WebRequest -Uri $gitBashUrl -OutFile $gitBashInstallerPath

# Install Git Bash silently
Write-Host "Installing Git Bash..."
Start-Process -FilePath $gitBashInstallerPath -Args "/VERYSILENT /NORESTART" -Wait -NoNewWindow

# Ask the user for the path where the Git repository should be cloned
$userSpecifiedPath = Read-Host "Please enter the path where you want to clone the Git repository"

# Ensure the directory exists or create it
if (-not (Test-Path -Path $userSpecifiedPath)) {
    New-Item -ItemType Directory -Path $userSpecifiedPath
    Write-Host "Directory created at $userSpecifiedPath"
} else {
    Write-Host "Directory already exists at $userSpecifiedPath"
}

# Define the Git repository URL
$gitRepoUrl = "https://github.com/ventustestprofessionals/robotframework_virtualbox_v1.0.0.git"

# Clone the Git repository
Write-Host "Cloning Git repository to $userSpecifiedPath..."
Start-Process -FilePath "git" -ArgumentList "clone $gitRepoUrl `"$userSpecifiedPath`"" -Wait -NoNewWindow
