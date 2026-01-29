try {
    # Récupération des informations système
    $infos = [PSCustomObject]@{
        Nom_PC          = $env:COMPUTERNAME
        Utilisateur     = $env:USERNAME
        OS              = (Get-CimInstance Win32_OperatingSystem).Caption
        Processeur      = (Get-CimInstance Win32_Processor | Select-Object -First 1).Name
        RAM_GB          = [math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
    }

    # Chemin du fichier CSV (dans Documents)
    $cheminCSV = "$env:USERPROFILE\Documents\Infos_PC.csv"

    # Exportation en CSV (ajout si le fichier existe déjà)
    if (Test-Path $cheminCSV) {
        $infos | Export-Csv -Path $cheminCSV -NoTypeInformation -Append -Encoding UTF8
    } else {
        $infos | Export-Csv -Path $cheminCSV -NoTypeInformation -Encoding UTF8
    }

    Write-Host "✅ Informations collectées et enregistrées dans : $cheminCSV" -ForegroundColor Green
}
catch {
    Write-Host "❌ Erreur lors de la collecte des informations : $_" -ForegroundColor Red
}

