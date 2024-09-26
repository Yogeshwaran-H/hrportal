<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Portal</title>
    <link rel="stylesheet" href="${resource(dir:'stylesheet',file:'getRoleDetails.css')}" type="text/css">
</head>

<body>
    <div class="whole">
        <form action="${createLink(controller: 'role', action: 'addRole')}" method="post">
            <h1>Role Information</h1>
            <input type="text" id="roleName" name="roleName" placeholder="Role" required>
            <input type="text" id="maxSalary" name="maxSalary" placeholder="Maximum Salary" required>
            <button>Submit</button>
        </form>
    </div>
</body>

</html>