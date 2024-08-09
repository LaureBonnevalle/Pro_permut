<?php

session_start();

$code = rand(10000,99999);

$_SESSION['codeCaptcha'] = $code;

$image = imagecreatetruecolor(50, 24);

// List of possible colors for the background
$colors = [
    [0, 150, 0],   // Green
    [150, 0, 0],   // Red
    [0, 0, 150],   // Blue
    [150, 0, 150], // Magenta
    //[0, 150, 150], // Cyan
    [0, 0, 0],     // Black
];

// Choose a random color from the predefined colors
$randomIndex = rand(0, count($colors) - 1);
$selectedColor = $colors[$randomIndex];

// Set the chosen background color
$background = imagecolorallocate($image, $selectedColor[0], $selectedColor[1], $selectedColor[2]);


$forground = imagecolorallocate($image, 255, 255, 255);

imagefill($image, 0, 0, $background);
imagestring($image, 5, 5, 5, $code, $forground);

header("Cache-Control: no-cache, must-revalidate");
header('Content-type: image/png');

imagepng($image);
imagedestroy($image);