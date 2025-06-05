<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "leftjoin";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = "SELECT
        blog.id,
        blog.blog,
        users.name,
        categories.categories
    FROM
        blog
    LEFT JOIN
        users ON blog.autor = users.id
    LEFT JOIN
        blog_categories ON blog.id = blog_categories.blog_id
    LEFT JOIN
        categories ON blog_categories.category_id = categories.id";

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
    echo "Imię " . $value['name'] . " oraz jego blog ". $value['blog'] . " w kategorii " . $value['categories'] . "<br>";
}; ?>
</pre>
