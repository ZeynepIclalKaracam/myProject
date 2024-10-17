<?php 

if ($_GET) 
{

include("dbconnect.php"); 

$no=$_GET['id'];
if ($conn->query("DELETE FROM makale WHERE id ='$no'") )
{
    header("location:panel.php?option=2"); 
}
}

?>