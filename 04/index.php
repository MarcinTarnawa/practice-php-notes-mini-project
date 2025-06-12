<?php

$config = [
    'database' => [
        'host' => 'localhost',
        'port' => '3306',
        'dbname' => 'posts',
        'charset' => 'utf8mb4'
    ]
];
$tableName = 'posts';

require 'Database.php';

$page = $_GET['page'] ?? 1;

try 
    {
        $db = new Database($config['database']);
        $results = $db->select($tableName,$page)->fetchAll();
    }
catch(PDOException $e)
    {
        die("Error: ".$e->getMessage());
    }

require 'PageController.php';

$pageController = new PageController();
$display = $pageController->display($results);

require 'posts.php';