
<?php 
include("admin/dbconnect.php");



?>




<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Karaçam Hukuk</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="css/makaleedit.css" rel="stylesheet">
<link href="css/modal.css?v=<?php echo time()?>" rel="stylesheet" type="text/css">



</head>

<body>

<?php 

$sorgu = $conn->query("SELECT * FROM makale"); 

while ($sonuc = $sorgu->fetch_assoc()) { 

$caption = $sonuc['caption']; 
$writer = $sonuc['writer'];
$content = $sonuc['content'];
$id = $sonuc['id'];


?>

<div class="card " style="width: 100%;">
  
  <div class="card-body ">
    <h3 class="card-title"><?php echo $caption; ?></h3>
    <p class="card-text"><?php echo $content; ?></p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><h5>Yazar</h5></li>
    <li class="list-group-item"><?php echo $writer; ?></li>
    
  </ul>
  
  </div>
</div>
<?php 
}
?>


 

</body>
</html>