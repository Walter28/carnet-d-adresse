<?php

class Element {

    public function connexion($bdd){
        $server="127.0.0.1";
        $username="root";
        $pwd="";
        $db_name=$bdd;
        $db="mysql:host=$server;dbname=$bdd;charset=utf8mb4";
        $option=array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
        return new PDO($db,$username,$pwd,$option);
    }

    public function afficher($tablename,$donne,$conn) {

        $req=$conn->prepare("SELECT $donne FROM $tablename WHERE pwd=?");
        $req->execute('1234');
        
        

    }

    public function ajouter() {
        # code...
    }

}