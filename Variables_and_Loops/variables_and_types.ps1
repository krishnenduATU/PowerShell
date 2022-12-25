# Assigning values to a variable
$MyVariable = 1, 2, "One", "££"
[int]$MyVariable = 1
$LittleNumber = 12345
$BigNumber = 123456789123456789
[float]$Floaty32 = 12.12
[double]$Floaty64 = 12345.1234
[datetime]$OGGI = "11/13/2022"

# Printing variable values
$MyVariable
$OGGI

# To get type of variable
$MyVariable.GetType()
$MyVariable.GetType()
$LittleNumber.GetType()
$BigNumber.GetType()
$Floaty32.GetType()
$Floaty64.GetType()

# To get directories into a variable
$dir_listing = Get-ChildItem c:\
#$dir_listing

# Advanced variable feature
New-Variable KrishVariable -value 3.142 -description "PI with write-protection" -option ReadOnly
Get-Variable KrishVariable

# Clear and Remove variables
clear-variable -Name MyVariable
$MyVariable
Remove-Variable -Name MyVariable
Remove-Variable -Name KrishVariable