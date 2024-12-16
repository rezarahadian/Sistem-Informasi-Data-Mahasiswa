<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Sistem Informasi Data Mahasiswa</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="loginn.css">
</head>
<body>
    <div class="container">
        <form class="login-form" action="proses_login.php" method="POST">
            <h1>Selamat Datang</h1>
            <p class="subtitle">Sistem Informasi Data Mahasiswa</p>
            <div class="input-group">
                <input type="text" name="username" required>
                <label for="username">Username</label>
            </div>
            <div class="input-group">
                <input type="password" name="password" required>
                <label for="password">Password</label>
            </div>
            <button type="submit">Masuk</button>
          
        </form>
    </div>
</body>
</html>
