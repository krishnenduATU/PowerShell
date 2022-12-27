<# 
Do-until loop
This program will execute until the value of variable "a" reaches 5
#>
# Value of "a" is set to 0
$a = 0
do
{
“Starting Loop $a”
$a
# To increment the value of "a" by one
$a++
“Now vairable `$a is $a”
# until( test_expression) Loop exists when value of a is greater than or equal to 5 
} until ($a -ge 5) 