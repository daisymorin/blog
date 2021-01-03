<?php

namespace App\src\DAO;

use PDO;
use Exception;

abstract class DAO {

    private $connection;

    private function checkConnection() {

         //Vérifie si la connexion est nulle et fait appel à getConnection()
         if($this->connection === null) {
             return $this->getConnection();
         }

          //Si la connexion existe, elle est renvoyée, inutile de refaire une connexion
          return $this->connection;
    }

     //Méthode de connexion à notre base de données
    public function getConnection() {

        try {
            $this->connection = new PDO(DB_HOST, DB_USER, DB_PASS);

            return $this->connection;
        }

        catch (Exception $errorConnection) {
            die('Erreur de connection : ' . $errorConnection->getMessage());
        }
       
    }

    protected function createQuery($sql, $parameters = null)
    {
        if($parameters)
        {
            $result = $this->checkConnection()->prepare($sql);
            $result->execute($parameters);
            
            return $result;
        }
        $result = $this->checkConnection()->query($sql);
        return $result;
    }
}