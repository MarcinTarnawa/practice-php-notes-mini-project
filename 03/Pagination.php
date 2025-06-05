<?php

class Pagination {
    public $limit;
    public $page;

    public function __construct($limit, $page) {
        $this->limit = $limit;
        $this->page = $page;
    }

    public function prepare() {
        $limit = $this->limit;
        $page = $this->page;
        $start = 0;
        $output = [];
        do {
            $output[] = $start;
            $start += $page;
        } while ($start < $limit);
        
        echo "[" . implode(', ', $output) . "] <br>";
        }
}