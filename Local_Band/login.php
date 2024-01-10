<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('Local Band SQL.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: '微軟黑正體', sans-serif;
           
        }

        .form-container {
            background-color: #E8E7D2;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-top: 200px; /* 使表单容器向下偏移 50px */
        }
   
    /* 其他样式保持不变 */

        form p {
            margin-top: 3px; /* 减小上边距 */
            margin-bottom: 3px; /* 减小下边距 */
        }

    /* 其他样式保持不变 */


        form {

            max-width: 300px;
            margin: 0 auto;
        }

        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #D2D5B8;
            color: black;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #C9BA9B;
            color: white;
        }

        .message {
            text-align: center;
            color: red;
            margin-top: 10px;
        }
    </style>
    <title>Login Page</title>
</head>
<body>

<div class="form-container">
    <form method="get" action="main.php">
        <p>請輸入帳號: <input type="text" name="account"></p>
        <p>請輸入密碼: <input type="text" name="password"></p>
        <p>
            <input type="submit" name="action" value="登入">
            <input type="submit" name="action" value="創建帳號">
        </p>
    </form>

    <div class="message">
        <?php
        $null_fail = $_GET["null_fail"];
        if ($null_fail) echo '帳密不得為空!<br>';

        $login_fail = $_GET["login_fail"];
        if ($login_fail) echo '帳密錯誤，請重新輸入!<br>';

        $create_fail = $_GET["create_fail"];
        if ($create_fail) echo '已有此帳號，請輸入不同帳號名稱!<br>';

        $create_success = $_GET["create_success"];
        if ($create_success) echo '帳號創建成功!<br>';
        ?>
    </div>
</div>

</body>
</html>
