Créer un fichier :



**New-Item permission2.txt**



Vérifiez le propriétaire et les groupes :



**PS C:\\Users\\La\_Plateform\\Documents> Get-Acl .\\permission2.txt**



    **Répertoire : C:\\Users\\La\_Plateform\\Documents**



**Path            Owner                        Access**

**----            -----                        ------**

**permission2.txt DESKTOP-TI3VVJ2\\La\_Plateform AUTORITE NT\\Système Allow  FullControl…**





Changez le propriétaire du fichier pour l’administrateur intégré (le compte administrateur est désactivé par défaut, vérifiez comment l’activer. N’oubliez pas de définir un mot de passe fort !) : 



**$NewAcl = Get-Acl -Path "C:\\Users\\La\_Plateform\\Documents\\permission2.txt"**

**# Set properties**

**$identity = "BUILTIN\\Administrateurs"**

**$fileSystemRights = "FullControl"**

**$type = "Allow"**

**# Create new rule**

**$fileSystemAccessRuleArgumentList = $identity, $fileSystemRights, $type**

**$newParams = @{**

  **TypeName     = 'System.Security.AccessControl.FileSystemAccessRule'**

    **ArgumentList = $fileSystemAccessRuleArgumentList**

**}**

**$fileSystemAccessRule = New-Object @newParams**

**# Apply new rule**

**$NewAcl.SetAccessRule($fileSystemAccessRule)**

**Set-Acl -Path "C:\\Users\\La\_Plateform\\Documents\\permission2.txt" -AclObject $NewAcl**



Vérifiez la permission du fichier : 



**PS C:\\Users\\La\_Plateform\\Documents> Get-Acl .\\permission.txt**



    **Répertoire : C:\\Users\\La\_Plateform\\Documents**



**Path           Owner                   Access**

**----           -----                   ------**

**permission.txt BUILTIN\\Administrateurs AUTORITE NT\\Système Allow  FullControl...**



Essayez d’imprimer le contenu du fichier en tant qu’utilisateur habituel :







Imprimez le contenu du fichier en utilisant le compte administrateur :



