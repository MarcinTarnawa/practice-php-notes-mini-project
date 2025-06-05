<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action ="posts" method="get">
    <input type="number" name="page" min="1" value="<?= $_GET['page'] ?? 1?>">
    <input type="submit" value="Go to page">
</form>  
       <?php display($results); ?> 
</body>
</html>