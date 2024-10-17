<?php 
include("dbconnect.php"); 
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Karaçam Hukuk</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<div class="container">




<div class="col-md-7">
<table class="table">
    
    <tr>
        <th>No</th>
        <th>Kullanıcı</th>
        <th>Ünvan</th>
        <th></th>
        <th></th>
    </tr>



<?php 

$sorgu = $conn->query("SELECT * FROM accounts"); 

while ($sonuc = $sorgu->fetch_assoc()) { 

$id = $sonuc['id']; 
$name = $sonuc['user_name'];
$title = $sonuc['title'];


?>
    
    <tr>
        <td><?php echo $id;  ?></td>
        <td><?php echo $name; ?></td>
        <td><?php echo $title; ?></td>
        
        <td><a href="delete.php?id=<?php echo $id; ?>" class="btn btn-danger">Sil</a></td>
    </tr>

<?php 
} 

?>

</table>
</div>
</div>
</body>
</html>