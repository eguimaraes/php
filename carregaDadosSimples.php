<!DOCTYPE html>
<html>
<body>

<?php
echo "Pagina gerada com PHP isolada do wordpress";

$fp = fopen('dados.csv', 'r');
$headers = fgetcsv($fp); 


$data = array();
while (($row = fgetcsv($fp))) {
    $data[] = array_combine($headers, $row);
}
fclose($fp);
echo $data[0];




?>

</body>
</html>
