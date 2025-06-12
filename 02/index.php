<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "leftjoin";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = "SELECT b.id, b.blog, u.name, c.name AS category
    FROM blog b
    LEFT JOIN users u ON b.user_id = u.id
    LEFT JOIN blog_categories bc ON b.id = bc.blog_id
    LEFT JOIN categories c ON bc.category_id = c.id";

    $stmt = $conn->query($query);
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}

?>
<pre>
<?php 
foreach ($results as $key => $value) {
    echo "Imię " . $value['name'] . " oraz jego blog ". $value['blog'] . " w kategorii " . $value['category'] . "<br>";
}; ?>
</pre>
