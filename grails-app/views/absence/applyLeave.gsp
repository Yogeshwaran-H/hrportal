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
        <form action="${createLink(controller: 'absence', action: 'addLeave')}" method="post">
            <h1>Leave Details</h1>
            <input type="date" id="leaveDate" name="leaveDate" placeholder="Leave Date" required>
            <!-- <input type="text" id="empId" name="empId" placeholder="Employee ID" required> -->
            <input type="text" id="leaveDays" name="leaveDays" placeholder="Leave Days" required>
            <button>Submit</button>
        </form>
    </div>
</body>
</html>