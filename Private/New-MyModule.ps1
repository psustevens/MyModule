$ModuleParams = @{ 
   "Path" 				         = 'C:\Users\Deeb\Documents\Github\MyModule\MyModule.psd1' 
   "RootModule" 			      = 'MyModule.psm1' 
   "ModuleVersion"            = '0.0.1'
   "Author" 			         = 'David Stevens' 
   "CompanyName" 			      = 'Deeb Enterprises' 
   "Description"              = 'Utility Module' 
   "PowerShellVersion"        = '5.1'
   "CompatiblePSEditions" 		= @('Desktop','Core') 
   "FunctionsToExport" 		   = @('Get-PSVersion','Show-Calendar') 
   "CmdletsToExport" 		   = @() 
   "VariablesToExport" 		   = '*' 
   "AliasesToExport" 		   = @() 
} 
New-ModuleManifest @ModuleParams