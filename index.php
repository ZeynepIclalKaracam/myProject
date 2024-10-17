<?php 

@$page = $_GET['page'];

include("admin/dbconnect.php");
include("admin/db.php");



?>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Karaçam Hukuk</title>

<link href="css/main.css?v=<?php echo time()?>" rel="stylesheet" type="text/css">
<link href="css/modal.css?v=<?php echo time()?>" rel="stylesheet" type="text/css">


</head>

<body>
<header>
  <div class="logo"><img src="images/logo.png" width="100%" height="100%" alt="" /></div>
	<nav>
	<ul>
	  <li><a href="?page=1">Ana sayfa</a></li>

	  <li><a href="?page=2">Ekibimiz</a></li>

	  <li><a href="?page=3">Çalışma Alanlarımız</a>
		<ul>

      <li><a href="?page=6">Ticaret Hukuku</a></li>
      <li><a href="?page=7">Ceza Hukuku</a></li> 
      <li><a href="?page=8">Aile Hukuku</a></li>  
	  <li><a href="?page=9">Miras Hukuku</a></li>   
	  <li><a href="?page=10">Bilişim Hukuku</a></li>    
	  <li><a href="?page=11">İş Hukuku</a></li>  
    </ul>
	<li><a href="?page=4">Makaleler</a></li>
	  
	  <button onclick="document.getElementById('id01').style.display='block'" class="buttonlogin">Avukat Girişi</button>
	</ul>
	
	</nav>
	


<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'"
class="close" title="Close Modal">&times;</span>

 
  <form class="modal-content animate" action="index.php" method="POST">
    

    <div class="container">
    <h1>AVUKAT GİRİŞİ</hh1><br/>
      <input type="text" placeholder="Kullanıcı Adını Giriniz" name="uname" required class="space"><br/>
      
      <input type="password" placeholder="Şifrenizi Giriniz" name="psw" required class="space"><br/>
      <button type="submit" name="signin" class="button">Giriş</button>
      <button type="button" onclick="document.getElementById('id01').style.display='none'" name="signup" class="button2">İptal</button>
      <h5  style="<?php echo $alert ?>">HATALI PAROLA!!!</h5>
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="close">X</button>
      
    </div>

    
      
      
    </div>
  </form>
</div>
</header>

<main><?php require 'pages/pageselect.php' ?></main>
<footer>
    <h3>Telefon:05305002030</h3>

	  <h3 >Adres:Kuzeykent Mahallesi Org. Atilla ATEŞ Paşa Caddesi Kastamonu Üniversitesi Rektörlük Binası Kat:1 Posta Kutusu: 37150 Merkez/KASTAMONU</h3>

	  <h3 >Mail: info@karacamhhukuk.com</h3>
		
	 
	  
	  
	

</footer>
</body>
</html>
