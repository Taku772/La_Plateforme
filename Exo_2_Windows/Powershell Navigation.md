# &nbsp;		Powershell Navigation

Nous allons maintenant apprendre à nous déplacer dans le système de fichiers avec , , ...Set-Location Get-Location Get-ChildItem



Affichez votre position actuelle à l’écran => pwd / Get-Location => ***C:\\Windows\\system32***



Imprimez le contenu de votre annuaire actuel :

PS C:\\Users> **Set-Location** .\\La\_Plateform\\

PS C:\\Users\\La\_Plateform> **Get-ChildItem**



&nbsp;   Répertoire : C:\\Users\\La\_Plateform



Mode                 LastWriteTime         Length Name

----                 -------------         ------ ----

d-r---        19/01/2026     16:31                3D Objects

d-r---        19/01/2026     16:31                Contacts

d-r---        19/01/2026     16:31                Desktop

d-r---        19/01/2026     16:31                Documents

d-r---        19/01/2026     16:31                Downloads

d-r---        19/01/2026     16:31                Favorites

d-r---        19/01/2026     16:31                Links

d-r---        19/01/2026     16:31                Music

d-r---        19/01/2026     16:35                OneDrive

d-r---        19/01/2026     16:33                Pictures

d-r---        19/01/2026     16:31                Saved Games

d-r---        19/01/2026     16:33                Searches

d-r---        19/01/2026     16:31                Videos



Imprimez le contenu de votre racine (si vous utilisez Windows, pour LinuxC:/)



PS C:\\Users\\La\_Plateform> **Get-ChildItem** C:/



&nbsp;   Répertoire : C:\\



Mode                 LastWriteTime         Length Name

----                 -------------         ------ ----

d-----        07/12/2019     10:14                PerfLogs

d-r---        19/01/2026     16:42                Program Files

d-r---        05/05/2023     14:24                Program Files (x86)

d-r---        19/01/2026     16:48                Users

d-----        19/01/2026     16:33                Windows

Va dans ton dossier d’accueil (C :\\Users\\Username ou /home/Username) : PS C:\\Users> **Set-Location** .\\La\_Plateform\\



Imprimez le contenu de votre maison :



Répertoire : C:\\Users\\La\_Plateform



Mode                 LastWriteTime         Length Name

---

d-r---        19/01/2026     16:31                3D Objects

d-r---        19/01/2026     16:31                Contacts

d-r---        19/01/2026     16:31                Desktop

d-r---        19/01/2026     16:31                Documents

d-r---        19/01/2026     16:31                Downloads

d-r---        19/01/2026     16:31                Favorites

d-r---        19/01/2026     16:31                Links

d-r---        19/01/2026     16:31                Music

d-r---        19/01/2026     16:35                OneDrive

d-r---        19/01/2026     16:33                Pictures

d-r---        19/01/2026     16:31                Saved Games

d-r---        19/01/2026     16:33                Searches

d-r---        19/01/2026     16:31                Videos



Ces commandes sont assez longues à taper, connais-tu une méthode plus courte ?



**cd** pour ce deplacer / **dir** pour afficher le contenu du dossier actuel

