<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
  <meta name="layout" content="materialize"/>
</head>
<body>
  <h1>Nuevo proyecto</h1>

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
  <g:if test="${flash.message}">
    <h4>${flash.message}</h4>
  </g:if>

  <table border="1px">
    <g:each var="p" in="${projects}">
      <tr>
        <td>${p.owner}</td>
        <td>
          <a href="/projects/${p.codeName}">
            ${p.codeName}
          </a>
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

  <div>
    <g:hasErrors bean="${project}">
    <g:eachError><p><g:message error="${it}"/></p></g:eachError>
    </g:hasErrors>
  </div>

  <div class="row">
    <g:form url="[action: 'createProject']" class="col s12">
      <g:render template="projectForm"/>
      <input type="submit" value="Enviar" class="waves-effect waves-light btn"/>
      <button type="submit" class="waves-effect waves-light btn">Botón con icono</button>
    </g:form>
  </div>

  <div class="row">
    <ul>
    <g:each in="${projectsFromGithub}" var="p">
      <li>${p.name}</li>
    </g:each>
    </ul>
  </div>

  <trk:repeat times="7">
    Hola ${it}
  </trk:repeat>

  <trk:appStatus />

</body>
</html>
