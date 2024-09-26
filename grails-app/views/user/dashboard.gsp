<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Portal</title>
    <link rel="stylesheet" href="${resource(dir:'stylesheet',file:'dashboard.css')}">
</head>

<body>
    <div class="whole">
        <g:if test="${session.role=='HR'}">
            <a href="${createLink(controller:'employee',action:'info')}">
                <h1>Employee Information</h1>
            </a>
            <a href="${createLink(controller:'absence',action:'leave')}">
                <h1>Absence Data</h1>
            </a>
        </g:if>
        <g:else>
            <a href="${createLink(controller:'absence',action:'applyLeave')}">
                <h1>Apply Leave</h1>
            </a>
        </g:else>
    </div>
</body>

</html>