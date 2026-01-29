###### Instructions :



Obtenez des mises à jour Windows :



Installez le modulePSWindowsUpdate :



**Install-Module -Name PSWindowsupdate -Force**



Tapez pour vérifier les mises à jour Get-WindowsUpdate : 







Tapez pour installer les mises à jour Install-WindowsUpdate : 





###### Gérer les paquets : 





Installation Chocolatey : 



**Set-ExecutionPolicy Bypass -Scope Process -Force; \[System.Net.ServicePointManager]::SecurityProtocol = \[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))**



Installer depuis VLC Chocolatey : 



**PS C:\\Windows\\system32> choco install vlc**



Passe à la dernière version (ça devrait déjà l’être mais c’est ta première utilisation) VLC : 





Retirez le paquet en utilisant VLC Chocolatey : 



**PS C:\\Windows\\system32> choco uninstall vlc**



Pourrais-tu utiliser un logiciel déjà installé ? Comment ? Chocolatey : 



**?????**



###### Gérer les fonctionnalités de Windows : 





Installez des fonctionnalités Windows avec la commande Get-WindowsFeature : 



**Il faut effectuer le test depuis un Windows Server (possible sur un client W10/W11 mais il faut l'activer et dans mon cas cela ne fonctionne pas.)**

**PS C:\\Windows\\system32> Enable-WindowsOptionalFeature -Online -FeatureName "test"**

**Enable-WindowsOptionalFeature : Le nom de fonctionnalité test est inconnu.**





Installer une nouvelle fonctionnalité comme hyper-v avec Install-WindowsFeature :



**Même problème que la question précédente !!**





