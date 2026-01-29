##### **Voici l'aide de Get-Process apres la MAJ de l'aide via la cmd "Update-Help"** :



PS C:\\Windows\\system32> get-Process -?



NOM

&nbsp;   Get-Process



RÉSUMÉ

&nbsp;   Gets the processes that are running on the local computer or a remote computer.





SYNTAXE

&nbsp;   Get-Process \[-ComputerName <System.String\[]>] \[-FileVersionInfo <System.Management.Automation.SwitchParameter>]

&nbsp;   \[-Module <System.Management.Automation.SwitchParameter>] \[\[-Name] <System.String\[]>] \[<CommonParameters>]



&nbsp;   Get-Process -IncludeUserName <System.Management.Automation.SwitchParameter> \[\[-Name] <System.String\[]>]

&nbsp;   \[<CommonParameters>]



&nbsp;   Get-Process -Id <System.Int32\[]> -IncludeUserName <System.Management.Automation.SwitchParameter>

&nbsp;   \[<CommonParameters>]



&nbsp;   Get-Process \[-ComputerName <System.String\[]>] \[-FileVersionInfo <System.Management.Automation.SwitchParameter>]

&nbsp;   -Id <System.Int32\[]> \[-Module <System.Management.Automation.SwitchParameter>] \[<CommonParameters>]



&nbsp;   Get-Process -IncludeUserName <System.Management.Automation.SwitchParameter> -InputObject

&nbsp;   <System.Diagnostics.Process\[]> \[<CommonParameters>]



&nbsp;   Get-Process \[-ComputerName <System.String\[]>] \[-FileVersionInfo <System.Management.Automation.SwitchParameter>]

&nbsp;   -InputObject <System.Diagnostics.Process\[]> \[-Module <System.Management.Automation.SwitchParameter>]

&nbsp;   \[<CommonParameters>]





DESCRIPTION

&nbsp;   The `Get-Process` cmdlet gets the processes on a local or remote computer.



&nbsp;   Without parameters, this cmdlet gets all processes on the local computer. You can also specify a specific process

&nbsp;   by process name or process ID (PID), or by piping a \*\*System.Diagnostics.Process\*\* object to this cmdlet.



&nbsp;   By default, this cmdlet returns a \*\*Process\*\* object that has detailed information about the process and supports

&nbsp;   methods that let you control it. With parameters, you can change the type of information returned by this cmdlet.



&nbsp;   - \*\*Module\*\*: Retrieve information for each module loaded into the process. - \*\*FileVersionInfo\*\*: Retrieve file

&nbsp;   version information for the main module of the process.



&nbsp;   > \[!NOTE] > A module is an executable file or a dynamic link library (DLL) loaded into a process. A process > has

&nbsp;   one or more modules. The main module is the module used to initially start the process. For > more information,

&nbsp;   see \[ProcessModule Class](/dotnet/api/system.diagnostics.processmodule).





LIENS CONNEXES

&nbsp;   Online Version https://learn.microsoft.com/powershell/module/microsoft.powershell.management/get-process?view=power

&nbsp;   shell-5.1\&WT.mc\_id=ps-gethelp

&nbsp;   Debug-Process Debug-Process.md

&nbsp;   Get-Process Get-Process.md

&nbsp;   Start-Process Start-Process.md

&nbsp;   Stop-Process Stop-Process.md

&nbsp;   Wait-Process Wait-Process.md

&nbsp;   Where-Object ../Microsoft.PowerShell.Core/Where-Object.md



REMARQUES

&nbsp;   Pour consulter les exemples, tapez : "get-help Get-Process -examples".

&nbsp;   Pour plus d'informations, tapez : "get-help Get-Process -detailed".

&nbsp;   Pour obtenir des informations techniques, tapez : "get-help Get-Process -full".

&nbsp;   Pour l’aide en ligne, tapez : "get-help Get-Process -online"



##### **Que fait la commande "Get-Command ?**



La cmdlet `Get-Command` récupère toutes les commandes installées sur l'ordinateur, y compris les cmdlets, les alias, les fonctions, les filtres, les scripts et les applications. `Get-Command` récupère les commandes des modules PowerShell et les commandes disponibles sur votre système.





