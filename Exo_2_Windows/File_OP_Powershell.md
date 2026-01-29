Créez un fichier nommé story1.txt : 



**PS C:\\Users\\La\_Plateform\\Documents> new-Item story1.txt**



Type echo "Hello World" > story1.txt : 





Imprimez le contenu du fichier



**PS C:\\Users\\La\_Plateform\\Documents> cat .\\story1.txt**

**Hello Word**



Créez un dossier nommé story



**PS C:\\Users\\La\_Plateform\\Documents> new-Item -Name "story" -ItemType "directory"**



Avancez à l’intérieur story1.txt story



**PS C:\\Users\\La\_Plateform\\Documents> Move-Item .\\story1.txt .\\story\\**



Copier comme story1.txt story2.txt



**PS C:\\Users\\La\_Plateform\\Documents\\story> Copy-Item .\\story1.txt .\\story2.txt**



Imprimez les deux fichiers



**PS C:\\Users\\La\_Plateform\\Documents\\story> cat .\\story1.txt**

**Hello Word**

**PS C:\\Users\\La\_Plateform\\Documents\\story> cat .\\story2.txt**

**Hello Word**



Renommé en story2.txtme.txt



**PS C:\\Users\\La\_Plateform\\Documents\\story> Move-Item .\\story1.txt .\\me.txt**

**PS C:\\Users\\La\_Plateform\\Documents\\story> dir**



    **Répertoire : C:\\Users\\La\_Plateform\\Documents\\story**





**Mode                 LastWriteTime         Length Name**

**----                 -------------         ------ ----**

**-a----        21/01/2026     11:25             26 me.txt**

**-a----        21/01/2026     11:25             26 story2.txt**



Ajoutez « Je suis en troisième année à LaPlateforme »me.txt



**PS C:\\Users\\La\_Plateform\\Documents\\story> echo "i am a junior at La\_Plateforme " >> .\\me.txt**

**PS C:\\Users\\La\_Plateform\\Documents\\story> cat .\\me.txt**

**Hello Word**

**i am a junior at La\_Plateforme**



Supprime l’histoire du dossier avec son contenu



**PS C:\\Users\\La\_Plateform\\Documents> Remove-Item -recurse story**





