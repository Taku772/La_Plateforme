# payload.ps1
# Ce script sera exécuté sur la machine cible

Write-Host "[+] Simulation de ransomware - Debut" -ForegroundColor Red

# Creer un dossier de test sur le Bureau
$desktop = [Environment]::GetFolderPath("Desktop")
$ransomDir = Join-Path $desktop "README_RANSOMWARE"
New-Item -Path $ransomDir -ItemType Directory -Force | Out-Null

# Creer le message de rancon
$message = @"
==========================================
     ATTENTION - SIMULATION RANSOMWARE
==========================================

Ceci est une DEMONSTRATION pedagogique.

Dans un cas reel :
- Vos fichiers seraient chiffres
- Une rancon serait exigee

AUCUN fichier reel n'a ete modifie.

==========================================
     PROTEGEZ-VOUS CONTRE LES BAD USB
==========================================
"@

$message | Out-File -FilePath (Join-Path $ransomDir "README.txt") -Encoding UTF8

# Creer des fichiers de test
1..3 | ForEach-Object {
    "Ceci est un document test $_" | Out-File -FilePath (Join-Path $ransomDir "document_test_$_.txt") -Encoding UTF8
}

Write-Host "[+] Simulation terminee - Fichiers crees dans $ransomDir" -ForegroundColor Green

# Optionnel : Ouvrir le README
Start-Process notepad (Join-Path $ransomDir "README.txt")

# Affiche une fenêtre popup
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show("BadUSB a execute son code avec succes !", "Simulation", "OK", "Information")
