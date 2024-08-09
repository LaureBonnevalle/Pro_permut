<?php

// Activer l'affichage des erreurs
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

// Générer une chaîne aléatoire de 5 caractères (chiffres et lettres)
$characters = '0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ';
$codeLength = 6;
$code = '';

for ($i = 0; $i < $codeLength; $i++) {
    $code .= $characters[rand(0, strlen($characters) - 1)];
}

$_SESSION['codeCaptcha'] = $code;

// Définir les dimensions de l'image
$imageWidth = 180;
$imageHeight = 60;

// Créer une image vraie couleur
$image = imagecreatetruecolor($imageWidth, $imageHeight);

// Définir les couleurs
$background = imagecolorallocate($image, 255, 255, 255); // Blanc
$foreground = imagecolorallocate($image, 0, 0, 0); // Noir
$lineColor = imagecolorallocate($image, 64, 64, 64); // Gris pour les lignes de bruit

// Remplir l'arrière-plan
imagefill($image, 0, 0, $background);

// Ajouter des lignes de bruit
for ($i = 0; $i < 6; $i++) {
    imageline($image, rand(0, $imageWidth), rand(0, $imageHeight), rand(0, $imageWidth), rand(0, $imageHeight), $lineColor);
}

// Dessiner le texte
$font = 5; // Taille de la police intégrée de GD
$x = 10; // Position X de départ
$y = 15; // Position Y de départ

imagestring($image, $font, $x, $y, $code, $foreground);

// Envoyer l'image au navigateur
header("Cache-Control: no-cache, must-revalidate");
header('Content-type: image/png');

imagepng($image);
imagedestroy($image);