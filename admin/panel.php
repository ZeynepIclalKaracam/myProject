<?php 

session_start();

$name=$_SESSION['user_name'];
$title=$_SESSION['title'];
$imgname=$_SESSION['imgname'];


if (is_null ($_SESSION["user_name"])) {

    echo"<div class='alert alert-danger' role='alert'>
    BU SAYFA İÇİN YETKİNİZ YOK!!!
  </div>";


}

if($title!="admin"){
  $visible="display:none";
}
else{
  $visible= "";
}

include("dbconnect.php");
@$option = $_GET['option'];




?>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Karaçam Hukuk</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="../css/panel.css?v=<?php echo time()?>" rel="stylesheet" type="text/css">


</head>

<body>

<div class="content">

<div class="sidenav">
<div class="logo"><img src="../images/logo.png" width="100%" height="100%" alt="" /></div>
<div style="padding-top:20px;"><img src="../images/<?php echo $imgname ?>"  alt=""  class="pp"/></div>

    <h5><?php echo $name ?></h5>
  <a href="?option=1">Makale Ekleme</a>
  <a href="?option=2" >Makale Düzenleme</a>
  <a href="?option=3" style="<?php echo $visible ?>">Kullanıcı Ekleme</a>
  <a href="?option=4" style="<?php echo $visible ?>">Kullanıcı Silme</a>
  <a href="?option=5">Logout</a>
</div>


<div class="mainp">
<?php require 'option.php' ?>
</div>
</div></br>








</body>
</html>
