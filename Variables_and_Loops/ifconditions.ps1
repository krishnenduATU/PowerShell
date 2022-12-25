# If conditions
$Variable1 = 12
$Variable2 = 32
if ( $Variable1 -ne $Variable2 )
{
Write-Output "The condition was true, $Variable1 and $Variable2 are not equal "
}

# if elseif conditions
$day = 3
if ( $day -eq 0 ) { $result = 'Sunday' }
elseif ( $day -eq 1 ) { $result = 'Monday' }
elseif ( $day -eq 2 ) { $result = 'Tuesday' }
elseif ( $day -eq 3 ) { $result = 'Wednesday' }
elseif ( $day -eq 4 ) { $result = 'Thursday' }
elseif ( $day -eq 5 ) { $result = 'Friday' }
elseif ( $day -eq 6 ) { $result = 'Saturday' }
Write-Host "The Day is : " $result