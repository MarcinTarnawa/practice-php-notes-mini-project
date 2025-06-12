<?php
$config = [
    'database' => [
        'host' => 'localhost',
        'port' => '3306',
        'dbname' => 'db',
        'charset' => 'utf8mb4'
    ]
];

require 'Database.php';

$text = $_POST['text'] ?? NULL;
$author = $_POST['author'] ?? NULL;
$tableName = 'comments';
try 
    {
        $db = new Database($config['database']);
        $posts = $db->select($tableName)->fetchAll();
    }
catch(PDOException $e)
    {
        die("Error: ".$e->getMessage());
    }

function decodeBBCode($content) {
    $content = preg_replace('/\[b\](.*?)\[\/b\]/s', '<strong>$1</strong>', $content);
    $content = preg_replace('/\[quote\](.*?)\[\/quote\]/s', '<blockquote>$1</blockquote>', $content);
    return $content;
}

function display($posts) {
    foreach ($posts as $post) {
        echo decodeBBCode($post['author']). " " . decodeBBCode($post['comments']) . "<br>";
    };
}

require 'index.view.php';

// insert inputs into db
if(!empty($text) && !empty($author)) {
    $sql = "INSERT INTO comments (author, comments) VALUES (:author, :text)";
    $params = [':author' => $author, ':text' => $text];
    $post = $db->query($sql, $params);
    header("Location: /");
    exit();
}