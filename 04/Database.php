<?php

class Database {
    
    public $connection;

    public function __construct($config, $username = 'root', $password = '')
    {
        $dsn = 'mysql:' . http_build_query($config,'',';');
        $this->connection = new PDO($dsn, $username, $password, [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }

    //select 10 records
    public function select($tableName,$page) 
    {
        $page = $page*10-10;
        $statment = $this->connection->prepare("SELECT * FROM $tableName LIMIT $page, 10");
        $statment->execute();
        return $statment;
    }
}