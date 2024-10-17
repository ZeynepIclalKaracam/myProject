<?php 
include("dbconnect.php");

if (isset($_POST["signup"])){

	$name=$_POST["uname"];
	
	$password=$_POST["psw"];
    $title=$_POST["title"];
    $imgname=$_POST["imgname"];
    

	
	$adduser="INSERT INTO accounts (user_name, password,title,imgname) VALUES ('$name','$password','$title','$imgname')";
	$adduser=mysqli_query($conn,"$adduser");

   
	
	
mysqli_close( $conn );

}

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Karaçam Hukuk</title>

<link href="../css/useradd.css?v=<?php echo time()?>" rel="stylesheet" type="text/css">



</head>

<body>


<form action="panel.php?option=3" method="POST">
  <h2>Kullanıcı Ekleme</h2>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Kullanıcı Adı" name="uname">
  </div>
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Şifre" name="psw">
  </div>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Ünvanı" name="title">
  </div>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Fotoğraf Adı" name="imgname">
  </div>

  <button type="submit" class="btn" name="signup">Ekle</button>
</form>
 
 

</body>
</html>