<?php require 'inc/db.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Gestion bibliothèque</title>
	<link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="src/css/app.css">
</head>
<body>

<!-- NAV -->
<div class="container navigation">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-collapse collapse navbar-right">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.php">Livres</a></li> 
				</ul>
			</div>
			<a class="navbar-brand" href="#">Gestion de bibliothèque</a>
		</div>
	</nav>
</div>

<div class="container">
<?php
	if (isset($_GET['id'])){
		$idauteur = intval($_GET['id']);
		$req = $pdo->prepare("SELECT * FROM auteurs WHERE id = $idauteur");
		$req->execute();
		$livre = $req->fetch();
		echo '<h2>'.utf8_encode($livre['prenom']).' '.utf8_encode($livre['nom']).'</h2>';
		echo '<p><img src="'.$livre['image'].'"></p>';
		echo "<u>Description de l'auteur</u>";
		echo '<p>'.utf8_encode($livre['description']).'</p>';
	}
?>

<?php 
	$req = $pdo->prepare("SELECT * FROM livres WHERE id_auteur = $idauteur");
	$req->execute();
	$leslivres = $req->fetch();
	echo "<u>Autre livre de l'auteur</u>";
	echo '<p>'.utf8_encode($leslivres['titre']).'</p>';
	echo '<p><a class="btn btn-success"href="detail_livre.php?id='.$leslivres['id'].'">Détail du livre</a></p>';
?>

<p><a class="btn btn-info" href="index.php">Liste des livres</a></p>
</div>
</body>
</html>