<?php
$url = file_get_contents('https://www.sportsmith.com/battery-6-volt-25-amp-hr-lifefitness/product/P01001700030685');
// preg_match( '/name: templateUrl\(\),templateSrc: templateSrc\(\)/', $url, $matched);

var_dump($url);
// '/application\/ld\+json">(.*)<\//'
?>