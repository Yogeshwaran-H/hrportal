<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Portal</title>
    <link rel="stylesheet" href="${resource(dir:'stylesheet',file:'leave.css')}">
</head>

<body>
    <div class="whole">
        <h1>Leave Data</h1>
        <table>
            <tr>
                <th>Employee Name</th>
                <th>Role</th>
                <th>Leave Date</th>
                <th>Days</th>
                <th>status</th>
            </tr>
            <g:each in="${leaveList}" var="${leave}">
                <tr>
                    <td>${leave.empid.name}</td>
                    <td>${leave.empid.role.role}</td>
                    <td><g:formatDate date="${leave.leaveDate}" format="dd/MM/yyyy"></g:formatDate></td>
                    <td>${leave.leaveDays}</td>
                    <g:if test="${leave.status=='approved'}">
                        <td><span id="approved">${leave.status}</span></td>
                    </g:if>
                    <g:elseif test="${leave.status=='rejected'}">
                        <td><span id="rejected">${leave.status}</span></td>
                    </g:elseif>
                    <g:else>
                       <td>
                            <a href="${createLink(controller:'absence',action:'updateStatus',params:[leaveId:leave.id,status:'approved'])}" id="acceptBtn">Accept</a>
                            <a href="${createLink(controller:'absence',action:'updateStatus',params:[leaveId:leave.id,status:'rejected'])}" id="rejectBtn">Reject</a>
                       </td>
                    </g:else>
                </tr>
            </g:each>
        </table>
    </div>
</body>

</html>