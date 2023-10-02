<?php
session_start();
include('funcoesphp/conexao.php');

if (isset($_POST['estrela'])) {
    // Obtém o valor da avaliação do formulário
    $estrela = $_POST['estrela'];

    // Você também precisa obter o ID do usuário e do livro a partir do seu sistema,
    // pois essas informações não estão disponíveis no código fornecido.
    $usuario_id = 1; // Substitua 1 pelo ID do usuário correto
    $livro_id = 1; // Substitua 1 pelo ID do livro correto

    // Insere a avaliação no banco de dados
    $sql = "INSERT INTO comentario (usuario_id, livro_id, avaliacao) VALUES (?, ?, ?)";
    $stmt = mysqli_prepare($conn, $sql);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "iii", $usuario_id, $livro_id, $estrela);
        if (mysqli_stmt_execute($stmt)) {
            // Avaliação cadastrada com sucesso
            header("Location: pagina_de_avaliacao.php?success=1");
            exit();
        } else {
            // Erro na inserção da avaliação
            header("Location: pagina_de_avaliacao.php?error=Erro ao cadastrar a avaliação");
            exit();
        }
    } else {
        // Erro na preparação da consulta
        header("Location: pagina_de_avaliacao.php?error=Erro na preparação da consulta");
        exit();
    }
} else {
    // Nenhuma avaliação foi selecionada
    header("Location: pagina_de_avaliacao.php?error=Necessário selecionar uma avaliação");
    exit();
}
?>
