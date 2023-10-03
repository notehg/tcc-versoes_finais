<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./css/menu-nav.css">
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Community book pleiades</title>
</head>
<body>
</body>
</html>

<?php
include 'conexao.php';

// Inicializar a sessão (se já não estiver inicializada)
session_start();

// Verificar se o usuário está autenticado
if (!isset($_SESSION["authenticated"]) || $_SESSION["authenticated"] !== true) {
    // Se não estiver autenticado, redirecione para a página de login
    header("Location: http://localhost:8012/tcc/index.php");
    exit;
}

// Defina a quantidade de livros a serem exibidos por página
$livrosPorPagina = 7;

// Determine a página atual com base em um parâmetro na URL
$pagina = isset($_GET['pagina']) ? $_GET['pagina'] : 1;

// Calcule o deslocamento para a consulta SQL
$offset = ($pagina - 1) * $livrosPorPagina;

// Consulta para obter os livros com base na página atual
$sql = "SELECT * FROM files LIMIT $offset, $livrosPorPagina";
$result = mysqli_query($conn, $sql);

if ($result && mysqli_num_rows($result) > 0) {
    echo "<h2>Livros Disponíveis:</h2>";

    while ($row = mysqli_fetch_assoc($result)) {
        $fileId = $row["id"];
        $fileTitle = $row["title"];
        $imageFilename = $row["image_filename"];

        // Exibe a imagem como um link para a página de detalhes
        echo "<a href='det.php?id=$fileId'>";
        echo "<img src='uploads/images/$imageFilename' alt='$fileTitle' width='100'>";
        echo "</a><br>";
        echo "Título: $fileTitle<br>";
    }
} else {
    echo "Nenhum livro encontrado.";
}

// Crie links para navegar entre as páginas
$totalLivros = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM files")); // Total de livros
$totalPaginas = ceil($totalLivros / $livrosPorPagina); // Total de páginas

echo "<div class='pagination'>";
for ($i = 1; $i <= $totalPaginas; $i++) {
    echo "<a  href='?pagina=$i'>$i</a> ";
}
echo "</div>";

mysqli_close($conn);
?>
