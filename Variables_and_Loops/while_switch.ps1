# Takes user input
while(($inp = Read-Host -Prompt "Select a command") -ne "Q"){
# Compares user input using switch statement
switch($inp){
L {"File will be deleted"}
A {"File will be displayed"}
R {"File will be write protected"}
Q {"End"}
default {"Invalid entry"}
}
}