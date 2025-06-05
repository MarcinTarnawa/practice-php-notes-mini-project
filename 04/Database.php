<?php
$servername = 'localhost';
$dbname = 'posts';
$username = 'root';
$password = '';

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->query("SELECT * FROM posts LIMIT $page, 10");
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch  (PDOException $e){
    echo "Error: " . $e->getMessage();
}