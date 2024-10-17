<?php 
    switch ($option) {
        case "1":
            include 'makaleadd.php';
            break;
        case"2":
            include 'makaleedit.php';
            break;
        case "3":  
            include 'useradd.php';
            break;
        case "4":
            include 'userdelete.php';
            break;
        case "5":
            include 'logout.php';
            break;
      
    }

?>