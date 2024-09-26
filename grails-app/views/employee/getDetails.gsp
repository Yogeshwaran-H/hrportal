<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Portal</title>
    <link rel="stylesheet" href="${resource(dir:'stylesheet',file:'getDetails.css')}">
</head>

<body>
    <div class="whole">
        <form action="${createLink(controller: 'employee', action: 'addEmployee')}" method="post">
            <h1>Employee Details</h1>
            <input type="text" id="name" name="name" placeholder="Name" required>
            <input type="text" id="role" name="role" placeholder="Role" required>
            <input type="text" id="salary" name="salary" placeholder="Salary" required>
            <input type="text" id="imageSrc" name="imageSrc" placeholder="Image Source" required>
            <input type="text" id="userName" name="userName" placeholder="Username" required>
            <input type="text" id="passWord" name="passWord" placeholder="Password" required>
            <div id="btns">
                <a href="${createLink(controller:'role',action:'getRoleDetails')}" id="addBtn">Add Role</a>
                <button>Submit</button>
            </div>
        </form>
    </div>
</body>

</html>