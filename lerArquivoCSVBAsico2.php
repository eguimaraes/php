<?
fp = fopen("data.csv", "r");
$headers = fgetcsv($fp); // Get column headers

echo $headers;

$data = array();
while (($row = fgetcsv($fp))) {
    $data[] = array_combine($headers, $row);
}
fclose($fp);

$myJSON = json_encode($headers);

echo $myJSON;


?>
