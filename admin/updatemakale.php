<?php 
include("panel.php");


$idd= $_GET['id'];

$sorgu = $conn->query("SELECT * FROM makale WHERE id='$idd'"); 

 $sonuc = $sorgu->fetch_assoc();

$ocaption = $sonuc['caption']; 

$ocontent = $sonuc['content'];




if ($_POST) { 
    
    $caption = $_POST['caption']; 
    $content = $_POST['content'];
   

   
        
        
        if ($conn->query("UPDATE makale SET caption = '$caption', content = '$content' WHERE id ='$idd'")) 
        {
            header("location:panel.php?option=2"); 
           
        }
      
    }

?>




<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Karaçam Hukuk</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="../css/makaleedit.css" rel="stylesheet">
<link href="../css/modal.css?v=<?php echo time()?>" rel="stylesheet" type="text/css">





</head>

<body>

<?php 

$sorgu = $conn->query("SELECT * FROM makale"); 

 $sonuc = $sorgu->fetch_assoc();

$caption = $sonuc['caption']; 
$writer = $sonuc['writer'];
$content = $sonuc['content'];
$id = $sonuc['id'];


?>

<div id="id01" class="modal visible">
  <span onclick="document.getElementById('id01').style.display='none'"
class="close" title="Close Modal">&times;</span>

 
  <form class="modal-content animate editmodal " action="" method="POST">
    

    <div class="container">
    <h1>Makale Düzenle</hh1><br/>
      <input type="text" placeholder="Başlık Giriniz" name="caption" required class="space" value="<?php echo $ocaption ?>" 
      ><br/>
      
      <textarea id="subject" name="content" placeholder="Makalenizi Giriniz" style="height:400px;"><?php echo $ocontent ?></textarea><br/>
      <button type="submit" name="submit" class="button">Onayla</button>
      <button type="button" onclick="window.location.href='panel.php?option=2'" name="signup" class="button2" >İptal</button>
      <button type="button" onclick="window.location.href='panel.php?option=2'" class="close">X</button>
      
    </div>

    
      
      
    </div>
  </form>
</div>

</body>
</html>