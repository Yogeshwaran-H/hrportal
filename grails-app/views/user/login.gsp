<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Portal</title>
    <link rel="stylesheet" href="${resource(dir:'stylesheet',file:'login.css')}" type="text/css">
</head>

<body>
    <div class="whole">
        <form action="${createLink(controller: 'user', action: 'login')}" method="post">
            <h1>Login</h1>
            <input type="text" id="userName" name="userName" placeholder="Username" required>
            <input type="password" id="passWord" name="passWord" placeholder="Password" required>
            <button>Submit</button>
        </form>
    </div>
</body>

</html>