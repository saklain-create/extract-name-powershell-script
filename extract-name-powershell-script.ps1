<#
.SYNOPSIS
	extract-name-powershell-script

.DESCRIPTION
    $var="F:\ANNOOR\NEW BOT\sample.docx" and dinanamicly extract 
    Sample.docx using a script file to present in a variable
    in a new variable $3= Sample.docx 
    
.NOTES
	File Namespace	: extract-name-powershell-script.ps1
	Version			: 0.01
	Last Modified	: 25-01-2021

.LINK
	Source Code
	https://github.com/saklain-create/extract-name-powershell-script
#>


#Variable to extrated
$var= read-host -prompt "PATH to extrated"

#temporary path
$path = READ-HOST -PROMPT "temporary file PATH"

#Extart 
new-item -path "$Path\temp" -itemtype directory
new-item "$Path\temp\temp.csv"
$1 = LS -path "$var" | Format-Wide
echo $1 >> "$Path\temp\temp.csv"
$2 = import-csv -path "$Path\temp\temp.csv" | get-random
$3 = $2.H1
$4 = $3.Contains("Directory")

while ( $4 -eq "true"){
Remove-Variable 2
Remove-Variable 3
Remove-Variable 4

$2 = import-csv -path "$Path\temp\temp.csv" | get-random
$3 = $2.H1
$4 = $3.Contains("Directory") }

#clean the temp folder
Remove-Item -Path "$Path\temp" -Recurse

$3 #extrated name