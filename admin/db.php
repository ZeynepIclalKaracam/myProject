<?php

include("dbconnect.php");
$alert="display:none";
if (isset($_POST["signin"])){

$name=$_POST["uname"];

$password=$_POST["psw"];




if(isset($name)&& isset($password)){

    $select = "SELECT * FROM accounts WHERE user_name = '$name'";
    $run =mysqli_query($conn,$select);
    $count = mysqli_num_rows($run);
    if($count > 0){
        $duser = mysqli_fetch_assoc($run);
        $dpassword=$duser["password"];
        $title=$duser['title'];
        $imgname=$duser['imgname'];
        

        if($password == $dpassword){
        session_start();
        $_SESSION['user_name'] = $duser['user_name'];
        $_SESSION['title'] = $duser['title'];
        $_SESSION['imgname'] = $duser['imgname'];
        
        
        header('location:admin/panel.php');


    }
        else{

            
            echo'HATALI ŞİFRE';
            
        }
}
}
    else{
    
}

mysqli_close( $conn );
}
?>