<?php
require_once "conecta.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['EMAIL'];
    $senha = $_POST['SENHA'];

    $stmt = $pdo->prepare("SELECT * FROM login WHERE EMAIL = ?");
    $stmt->execute([$email]);
    $usuario = $stmt->fetch();

    if ($usuario && password_verify($senha, $usuario['SENHA'])) {
        header("Location: relatorio.php");
        exit;
    } else {
        header("Location: form.php?msg=erro");
        exit;
    }
}
?>