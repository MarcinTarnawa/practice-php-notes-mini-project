<?php

class PageController {

    public function display($results){
        $output = "";
        if (empty($results)) {
            $output = 'No data to display';
        } else {
            foreach ($results as $key) {
                $output .= htmlspecialchars($key['id']) . " " . htmlspecialchars($key['name']) . "<br>";
            }; 
        }
        return $output;
    }
}