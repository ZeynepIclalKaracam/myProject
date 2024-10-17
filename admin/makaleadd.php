<?php 
include("dbconnect.php");

if (isset($_POST["addtext"])){

	
    $caption=$_POST["caption"];
    $content=$_POST["content"];
    $writer=$_SESSION["user_name"];
    

	
	$addtext="INSERT INTO makale (caption,content,writer) VALUES ('$caption','$content','$writer')";
	$addtext=mysqli_query($conn,"$addtext");

   
	
	
mysqli_close( $conn );

}

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Karaçam Hukuk</title>

<link href="../css/makaleadd.css?v=<?php echo time()?>" rel="stylesheet" type="text/css">


</head>

<body>


<div class="container">
  <form action="panel.php?option=1" method="POST">

  

    <label for="lname">Başlık</label>
    <input type="text" id="lname" name="caption" placeholder="Başlık Giriniz.">

   

    <label for="subject">Makale</label>
    <textarea id="subject" name="content" placeholder="Makalenizi Giriniz" style="height:400px"></textarea>

    <input type="submit" value="Ekle" name="addtext">

  </form>
</div>
 

</body>
</html>