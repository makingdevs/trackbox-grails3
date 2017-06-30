<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
  <meta name="layout" content="materialize"/>
</head>
<body>
  <h1>${project.codeName}</h1>
  <h2>${project.description}</h2>

	<g:form url="save" method="post">
		<g:render template="userStoryForm" />
		<button class="btn waves-effect waves-light" type="submit" name="action">Nueva US
		</button>
	</g:form>

	<hr>

  <table>
    <thead>
      <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Priority</th>
        <th>Effort</th>
      </tr>
    </thead>
    <tbody>
      <g:each in="${backlog}" var="userStory">
      <tr>
        <td>${userStory.title}</td>
        <td>${userStory.description}</td>
        <td>${userStory.prioridad}</td>
        <td>${userStory.esfuerzoEnPuntos}</td>
      </tr>
      </g:each>
    </tbody>
  </table>

</body>
</html>
