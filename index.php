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
					<li class="active"><a href="#">Livres</a></li> 
				</ul>
			</div>
			<a class="navbar-brand" href="#">Gestion de bibliothèque</a>
		</div>
	</nav>
</div>


<?php  
if (isset($_POST['trier'])) {
	$id_auteur = $_POST['idauteur'];
}
?>

	<div class="container content">
		<div class="row content">
        	<div class="col-xs-12">
				<table class="table table-bordered">
				<caption>Liste de livres</caption>
					<thead>
						<tr>
							<th>Identifiant</th>
							<th>Titre</th>
							<th>Auteur</th>
							<th>Lien vers livre</th>
							<th>Lien vers auteur</th>
						</tr>
					</thead>
					<tbody>

						<?php
						if(isset($id_auteur)){
							$req = $pdo->prepare("SELECT l.id as idlivre, l.titre, a.id as idauteur, a.prenom, a.nom FROM livres l, auteurs a WHERE l.id_auteur = $id_auteur AND a.id = $id_auteur GROUP BY l.titre");
						}else{
							$req = $pdo->prepare('SELECT l.id as idlivre, l.titre, a.id as idauteur, a.prenom, a.nom FROM livres l, auteurs a WHERE l.id_auteur = a.id');
						}

						$req->execute();

						while($livre = $req->fetch()){
							?>
								<tr>
									<td><?php echo utf8_encode($livre['idlivre']); ?></td>
									<td><?php echo utf8_encode($livre['titre']); ?></td>
									<td><?php echo utf8_encode($livre['prenom']); ?> <?php echo utf8_encode($livre['nom']); ?></td>
									<td><a class="btn btn-warning" href="detail_livre.php?id=<?php echo $livre['idlivre']; ?>">Info Livres</a></td>
									<td><a class="btn btn-primary"  href="detail_auteur.php?id=<?php echo $livre['idauteur']; ?>">Info Auteur</a></td>
								</tr>			
							<?php
						}
						?>

					</tbody>
				</table>
			</div>
		</div><!-- /row content -->
	</div>
	<div class="container">
		<form method="POST">
			<select name="idauteur">
			<?php $req =$pdo->prepare('SELECT id, prenom, nom FROM auteurs');
			$req->execute();
			while($auteur = $req->fetch()){
				?>
				<option value="<?php echo utf8_encode($auteur['id']); ?>" <?php if (isset($id_auteur) AND $id_auteur==$auteur['id']){ echo 'selected="selected"'; }?>><?php echo utf8_encode($auteur['prenom']); ?> <?php echo utf8_encode($auteur['nom']); ?></option>				
				<?php
			}
			?>
			</select>
			<input type="submit" name="trier" value="Trier"></input>
		</form>
	</div>

</body>
</html>