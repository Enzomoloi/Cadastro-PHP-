<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Lista Usuário</title>
		<link rel="stylesheet" href="form.css"/>
	</head>
	<body>
	<div id=interface>
	<fieldset>
	<legend>Lista de Usuário</legend>
		<table>
			<tr>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Idade</th>
				<th>Sexo</th>
				<th>Estado Civil</th>
				<th>Humanas</th>
				<th>Exatas</th>
				<th>Biológicas</th>
				<th>Hash da Senha</th>
			</tr>
			<?php
			try
			{
				$connection = new PDO ("mysql:host=localhost;dbname=banco_dados", "root", "root");
				$connection->exec("set names utf8");
			}
			catch(PDOException $e)
			{
				echo "Falha: " . $e->getMessage();
				exit();
			}
			
			//exclusão
			if(isset($_REQUEST["excluir"]) && $_REQUEST["excluir"] == true)
			{
				$stmt = $connection->prepare("DELETE FROM usuarios WHERE id = ?");
				$stmt->bindParam(1, $_REQUEST["id"]);
				$stmt->execute();
			
				if($stmt->errorCode() != "00000")
				{	
					echo "Erro código" . $stmt->errorCode() . ": ";
					echo implode(", ", $stmt->errorInfo());
				}
				else
				{
					echo "Usuário removido com sucesso!!!<br/><br/>";
				}
			}
			
			//fim exclusão
		
		$rs = $connection->prepare("SELECT * FROM usuarios");
			
			if($rs->execute())
			{
				while($registro = $rs->fetch(PDO::FETCH_OBJ))
				{
				
					echo "<tr>";
						echo "<td>" . $registro->nome . "</td>";
						echo "<td>" . $registro->email . "</td>";
						echo "<td>" . $registro->idade . "</td>";
						echo "<td>" . $registro->sexo . "</td>";
						echo "<td>" . $registro->estadocivil . "</td>";
						echo "<td>" . $registro->humanas . "</td>";
						echo "<td>" . $registro->exatas . "</td>";
						echo "<td>" . $registro->biologicas . "</td>";
						echo "<td>" . $registro->senha . "</td>";
						
						echo "<tr>";
						echo "<td>";
						echo "<a href='?excluir=true&id=" . $registro->id ."'>Exclusão</a> | ";
						echo "<a href='alterar.php?id=" . $registro->id ."'>Alteração</a> | ";
						echo "<a href='senha?id=" . $registro->id ."'>Alteração de senha</a>";
						
						echo "</td>";
					echo "</tr>";
				}
			}else
				{
					echo "Falha na seleção de usuários <br/>";
				}
			?>
		</table>
		</fieldset>
		<p><a href="menu.php">Menu Principal</a></p>
	</div>
	</body>
</html>