<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
<title>Connection and request on a database, using php and mysql.</title>
</head>
<body>
<?php
	$connect = mysql_connect("vm-eliot-000","vm-eliot-144","csc3504"); 
	mysql_select_db("csc3504"); 
	$SQLQuery = "SELECT VM_NAME, VM_STRING FROM vm_eliot_144"; 
	$result = mysql_query($SQLQuery); 
	mysql_close($connect); 
?> 
<h1>Database test</h1> 
<?php
	 while($output_row = mysql_fetch_array($result)) { 
		echo '<p>vm-eliot-'.$output_row["VM_NAME"].' uses reference: '.$output_row["VM_STRING"].'</p>'; 
	} 
?> 
</body> 
</html>
