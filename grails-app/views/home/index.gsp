<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<body>
  <h1>Mostrando ${projects?.size() ?: 0} proyectos</h1>

  <% now = new Date() %>
  <g:set var="tomorrow" value="${new Date() +  1}"/>

  <div>
    <%=now%>
    <br/>
    ${tomorrow}
    <br/>
    ${application}
    <br/>
    ${flash}
    <br/>
    ${params}
    <br/>
    ${session}
    <br/>
    ${request}
  </div>

  <table border="1px">
    <g:each var="p" in="${projects}">
      <tr>
        <td>${p.owner}</td>
        <td>
          <g:link controller="project" action="show" id="${p.id}">
            ${p.codeName}
          </g:link>
        </td>
        <td>${p.description}</td>
        <td>
          <g:if test="${p.publicVisible}">
            Es público
          </g:if>
          <g:else>
            NO es público
          </g:else>
        </td>
      </tr>
    </g:each>
  </table>

  <hr>

  <g:form url="[action: 'createProject']">
    <div>
      <label for="owner">Owner:</label>
      <g:textField name="owner" value="${project.owner}" />
    </div>
    <div>
      <label for="codeName">Code Name:</label>
      <g:textField name="codeName" value="${project.codeName}"/>
    </div>
    <div>
      <label for="description">Description:</label>
      <g:textField name="description" value="${project.description}" />
    </div>
    <div>
      <label for="publicVisible">Public Visible:</label>
      <g:checkBox name="publicVisible" value="${project.publicVisible}"/>
    </div>
    <input type="submit" value="Enviar"/>
    <button type="submit">Botón con icono</button>
  </g:form>

</body>
</html>
