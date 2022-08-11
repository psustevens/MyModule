# This script creates the Module Manifest for the MyModule PowerShell module.
# Remember to fix the "FunctionsToExport" section after running this script.
# It doesn't maintain the splat when creating the section.  
# You need to add @() around the functions.

$ModuleParams = @{ 
   "Path" 				         = 'C:\Users\Deeb\Documents\Github\MyModule\MyModule.psd1'
   "RootModule" 			      = 'MyModule.psm1'
   "ModuleVersion"            = '0.0.3'
   "Author" 			         = 'David Stevens'
   "CompanyName" 			      = 'Deeb Enterprises'
   "Description"              = 'This PowerShell module contains scripts and cmdlets that I use frequently.'
   "PowerShellVersion"        = '5.0'
   #"CompatiblePSEditions" 		= @('Desktop','Core')
   "FunctionsToExport" 		   = @(
      'Get-PSVersion',
      'Show-Calendar'
   )
   "CmdletsToExport" 		   = @()
   "VariablesToExport" 		   = '*'
   "AliasesToExport" 		   = @()
}
New-ModuleManifest @ModuleParams