<?php  


	class ConnectionFactory{


		public function getConnection(){

			$dbHost = "localhost";
			$dbUser = "root";
			$dbPass = "";
			$dbDatabase = "comicsnews";

			$connection = mysqli_connect($dbHost,$dbUser,$dbPass,$dbDatabase);
			$charset = mysqli_query($connection,"SET NAMES 'utf8' ");

			return $connection;

		}


	}


?>