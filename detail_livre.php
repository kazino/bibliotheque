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
		$idlivre = intval($_GET['id']);
		$req = $pdo->prepare("SELECT l.id as idlivre, l.titre, l.image, l.description, a.id as idauteur, l.id_auteur as id_auteur2, a.prenom, a.nom FROM livres l, auteurs a WHERE l.id = $idlivre AND l.id_auteur = a.id");
		$req->execute();
		$livre = $req->fetch();
		echo '<h2>'.utf8_encode($livre['titre']).'</h2>';
		echo '<p><img src="'.$livre['image'].'"></p>';
		echo '<p>'.utf8_encode($livre['description']).'</p>';
		echo '<p>'.utf8_encode($livre['prenom']).' '.utf8_encode($livre['nom']).'</p>';
	}
?>

<p><a class="btn btn-danger" href="detail_auteur.php?id=<?php echo $livre['id_auteur2']; ?>">Détail auteur</a></p>
<p><a class="btn btn-info" href="index.php">Tous les livres</a></p>
</div>

</body>
</html>

341€ 36.99€ 3Go 
491€  