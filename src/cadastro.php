<?php
    require_once "conecta.php";

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $stmt = $pdo->prepare("INSERT INTO login (EMAIL, SENHA) VALUES (?, ?)");
        $stmt->execute([$_POST['EMAIL'], password_hash($_POST['SENHA'], PASSWORD_DEFAULT)]);
        header("Location: form.php?msg=sucesso");
        exit;
    } catch (Exception $e) {
        header("Location: form.php?msg=falha ao cadastrar");
    }
}
?>
<h2>Cadastro funcionario</h2>
<form method="POST">
    <input type="text" name="EMAIL" placeholder="EMAIL" required><br><br>
    <input type="password" name="SENHA" placeholder="SENHA" required><br><br>
    <div class= 'salvar'><button type="submit">Cadastrar</button></div>
</form>