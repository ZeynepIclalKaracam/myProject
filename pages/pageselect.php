<?php 
    switch ($page) {
        case "1":
            include 'pages/anasayfa.php';
            break;
        case"2":
            include 'pages/ekibimiz.php';
            break;
        case "3":  
            include 'pages/calismaalanlari.php';
            break;
        case "4":
            include 'pages/makale.php';
            break;
       
        case "6":
            include 'pages/ticareth.php';
            break;
        case"7":
            include 'pages/cezah.php';
            break;
        case "8":  
            include 'pages/aileh.php';
            break;
        case "9":
            include 'pages/mirash.php';
            break;
        case "10":
            include 'pages/bilisimh.php';
            break; 
        case "11":
            include 'pages/ish.php';
            break; 
    }

?>