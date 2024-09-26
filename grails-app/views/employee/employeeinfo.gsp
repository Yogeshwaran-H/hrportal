<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Portal</title>
    <link rel="stylesheet" href="${resource(dir:'stylesheet',file:'employeeinfo.css')}">
</head>

<body>
    <div class="whole">
        <div id="menu">
            <img src="https://static.vecteezy.com/system/resources/thumbnails/021/187/437/small/flat-icon-modesrn-company-logo-business-logo-red-and-navy-iconic-logo-vector.jpg" alt="Company Logo">
            <h1>Employee Information</h1>
            <a href="${createLink(controller:'employee',action:'getDetails')}" id="addBtn">Add Employee</a>
        </div>
        <div class="cardSection">
            <g:each in="${employeeDetail}" var="employee">
                <div id="card">
                    <img src="${employee.imageSrc}" alt="${employee.name}">
                    <h2>${employee.name}</h2>
                    <p>${employee.role.role}</p>
                    <p>${employee.salary}</p>
                </div>
            </g:each>
        </div>
    </div>
</body>

</html>