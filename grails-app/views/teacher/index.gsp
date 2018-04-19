<%--
  Created by IntelliJ IDEA.
  User: raman
  Date: 4/18/18
  Time: 12:54 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<br>
<div class=" container">
    <div class="text-right">
        <g:link class="btn btn-primary "  controller="teacher" action="create">Add Teacher</g:link><br><br>
    </div>

    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>S.N.</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact Number</th>
                <th>Email</th>
                <th>Edit</th>
                <th>Delete</th>

            </tr>
            </thead>
            <g:each in="${teacherList}" status="i" var="teacherInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${teacherInstance?.teacherName}</td>
                    <td>${teacherInstance?.address}</td>
                    <td>${teacherInstance?.contactNumber}</td>
                    <td>${teacherInstance?.email}</td>
                    <td><g:link action="edit" id="${teacherInstance.id}">Edit</g:link> </td>
                    <td><g:link action="delete" id="${teacherInstance.id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>
                    %{--<td><g:link controller="student" action="edit" params="[id:${studentInstance.id}]" >EDit</g:link> </td>--}%
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>