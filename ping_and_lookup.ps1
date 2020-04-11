$lines = Get-Content .\sample_IP_list.txt
	foreach ($line in $lines){
	Test-Connection -Count 1 $line
	nslookup.exe $line dns.google
	}
	