<?php
    require('conn.php'); //la var s'appel conn aussi

	//ajout chambre
	if (isset($_POST['reservBtn'])) {
		
		$nom= htmlspecialchars($_POST['nom']);
		$adresse= htmlspecialchars($_POST['addr']);
		$phone=$_POST['phone'];
		$mail= $_POST['mail'];

		$conn->exec("INSERT INTO contact (nom, adresse, phone, mail) VALUES('$nom','$adresse','$phone','$mail') ");
		// $conn->exec("INSERT INTO contact (nom, adresse, phone, mail) VALUES('jul','goma','222','jul@gmail' ");
		// print_r($conn->exec("INSERT INTO contact (nom, adresse, phone, mail) VALUES('jul','goma','222','jul@gmail') "));
		header('location:./index.php?flag');
		
	}
?>