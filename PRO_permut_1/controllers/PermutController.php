<?php

namespace Controllers;

use \Router;

class PermutController extends router {

    /**
     * Retrieves all permutations, triangulations, and quadripartites and renders the 'combinations' view.
     *
     * @param void
     * @return void
     */
    public function getAllPermut() {

        $usersManager = new \Models\PermutManager();        
        $alls = $usersManager->getAllPermutations();

        // decrypt datas
        foreach ($alls as &$all) {
            if (isset($all['firstname1'])) $all['firstname1'] = $this->decrypt($all['firstname1']);
            if (isset($all['lastname1'])) $all['lastname1'] = $this->decrypt($all['lastname1']);
            if (isset($all['firstname2'])) $all['firstname2'] = $this->decrypt($all['firstname2']);
            if (isset($all['lastname2'])) $all['lastname2'] = $this->decrypt($all['lastname2']);
            if (isset($all['firstname3'])) $all['firstname3'] = $this->decrypt($all['firstname3']);
            if (isset($all['lastname3'])) $all['lastname3'] = $this->decrypt($all['lastname3']);
            if (isset($all['firstname4'])) $all['firstname4'] = $this->decrypt($all['firstname4']);
            if (isset($all['lastname4'])) $all['lastname4'] = $this->decrypt($all['lastname4']);
        }
        
        foreach ($alls as &$item) {
            $item = $this->escapeData($item);
        }
        
        $this->render('combinations', 'layout', [
            'page'              => "Combinaisons",
            'alls'              => $alls
        ]);
    }

    
    public function getCombinations() {
        
        $content = file_get_contents("php://input");
        $data = json_decode($content, true);

        $usersManager = new \Models\PermutManager();


        if ($data['ref'] == "permutations") {
            $alls = $usersManager->getAllPermutations();
        } else if ($data['ref'] == "triangulations") {
            $alls = $usersManager->getAllTriangulations();
        } else {
            $alls = $usersManager->getAllQuadripartites();
        }

        foreach ($alls as &$all) {
            if (isset($all['firstname1'])) $all['firstname1'] = $this->decrypt($all['firstname1']);
            if (isset($all['lastname1'])) $all['lastname1'] = $this->decrypt($all['lastname1']);
            if (isset($all['firstname2'])) $all['firstname2'] = $this->decrypt($all['firstname2']);
            if (isset($all['lastname2'])) $all['lastname2'] = $this->decrypt($all['lastname2']);
            if (isset($all['firstname3'])) $all['firstname3'] = $this->decrypt($all['firstname3']);
            if (isset($all['lastname3'])) $all['lastname3'] = $this->decrypt($all['lastname3']);
            if (isset($all['firstname4'])) $all['firstname4'] = $this->decrypt($all['firstname4']);
            if (isset($all['lastname4'])) $all['lastname4'] = $this->decrypt($all['lastname4']);
        }

        header('Content-Type: application/json');
        $jsonAlls = json_encode($alls, JSON_PRETTY_PRINT);
        // file_put_contents('result.txt', $jsonAlls);

        echo $jsonAlls;
        exit;
    }
}