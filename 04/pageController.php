<?php
// default value
$page = $_GET['page'] ?? 1;

//check number of page
if($_GET['page'] === Null){
  $page = 1*10-10;
} else {
  $page = $_GET['page']*10-10;
}

// display data on view
function display($results){
    if (empty($results)) {
        echo 'No data to display';
    } else {
    foreach ($results as $key) {
            echo $key['id'] . " " . $key['name'] . "<br>";
        }; 
    }
}