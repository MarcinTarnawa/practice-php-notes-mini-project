<?php

class Database {
    
    public $connection;

    public function __construct($config, $username = 'root', $password = '')
    {
        // $dsn = "mysql:host={$config['host']};port={$config['port']};dbname='{$config['dbname']}';charset={$config['charset']}";
        $dsn = 'mysql:' . http_build_query($config,'',';');
        $this->connection = new PDO($dsn, $username, $password, [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }
    
    // universal query
    public function query($query, $params =[])
    {       
        $statment = $this->connection->prepare($query);
        $statment->execute($params);
        return $statment;
    }
    
    //select
    public function select($tableName) 
    {
        $statment = $this->connection->prepare("SELECT * FROM $tableName");
        $statment->execute();
        return $statment;
    }
}