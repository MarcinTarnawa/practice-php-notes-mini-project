<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="/" method="post">
        Autor: <input type="text" name="autor" value="[b]marcin[/b]" required>
        Text: <input type="text" name="text" value="[quote]tekst[/quote]" required>
        <input type="submit" value="Add">
    </form>

    <?php display($posts); ?>
</body>
</html>