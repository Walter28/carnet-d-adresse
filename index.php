<?php
    require('conn.php'); //la var s'appel conn aussi
    $req = $conn->query('SELECT * FROM contact');
    
    // $req1 = $conn->query('SELECT * FROM chambre LIMIT 4');
    // $msg1 = $req1->fetch();
    // $req2 = $conn->query('SELECT cl.nomClient FROM client as cl,chambre as ch WHERE ch.numero=cl.chambreID');
    // $msg2=$req2->fetch();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <title>TheHostel</title>
</head>
<body>

<!-- The body of the web site  -->
<main>

    <?php include('modalCreeContact.php') ?>

    <div class="d-flex justify-content-center">

        <div class="bg-light p-5 rounded w-50">

            <h1>CARNET D'ADRESSE</h1>
            <p class="lead">Simple carnet d'adresse, enregistrer vos contact en toute securite</p>
            <a class="btn btn-lg btn-primary" href="#" role="button" data-bs-toggle="modal" data-bs-target="#exampleModal2">Cree contact</a>
            <a class="btn btn-lg btn-outline-primary mail-btn" href="#" role="button">Liste de contact</a>

            <div class="mail-zone" style="display: none;">

                <hr></hr>

                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nom</th>
                            <th>Phone</th>
                            <th>Mail</th>
                            <th>Adresse</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php while($msg=$req->fetch()) { ?>

                            <tr>
                                <td><?= $msg['id'] ?></td>
                                <td><?= $msg['nom'] ?></td>
                                <td><?= $msg['phone'] ?></td>
                                <td><?= $msg['mail'] ?></td>
                                <td><?= $msg['adresse'] ?></td>
                            </tr>

                        <?php } ?>

                    </tbody>
                </table>

            </div>
            

        </div>

    </div>
    
</main>



<script src="js/bootstrap.js"></script>
<script src="js/jquery.js"></script>
<script src="js/main.js"></script>
<script>
    function idk(a) {
        var form=document.getElementById('form')
        form.setAttribute('action','faireReservation.php?idk='+a);
    }
</script>
</body>
</html>