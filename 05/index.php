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
$autor = $_POST['autor'] ?? NULL;

try 
    {
        $db = new Database($config['database']);
        $posts = $db->query('select * from blog')->fetchAll();
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
        echo decodeBBCode($post['autor']). " " . decodeBBCode($post['blog']) . "<br>";
    };
}

require 'index.view.php';

// insert inputs into db
if(!empty($text) && !empty($autor)) {
    $sql = "INSERT INTO blog (autor, blog) VALUES (:autor, :text)";
    $params = [':autor' => $autor, ':text' => $text];
    $post = $db->query($sql, $params);
    header("Location: /");
    exit();
}