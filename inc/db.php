<?php
	//Connexion à la base de données
	try{
		$host = 'localhost';
		$user = 'root';
		$pass = '';
		$base = 'c2is';

		$pdo = new PDO("mysql:host=$host;dbname=$base", "$user", "$pass");
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(Exception $e)
	{
		die('Erreur : '.$e->getMessage());
	}