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

  <!--
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
  -->

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

  <div>
    <g:hasErrors bean="${project}">
    <g:eachError><p><g:message error="${it}"/></p></g:eachError>
    </g:hasErrors>
  </div>

  <g:form url="[action: 'createProject']">
    <g:render template="projectForm"/>
    <input type="submit" value="Enviar"/>
    <button type="submit">Botón con icono</button>
  </g:form>

  <trk:repeat times="7">
    Hola ${it}
  </trk:repeat>

  <trk:appStatus />

</body>
</html>
