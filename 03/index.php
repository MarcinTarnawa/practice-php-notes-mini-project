<?php

require 'Pagination.php';

$result = new Pagination(9,8);
$result->prepare();


$result2 = new Pagination(40,10);
$result2->prepare();


$result3 = new Pagination(10,3);
$result3->prepare();