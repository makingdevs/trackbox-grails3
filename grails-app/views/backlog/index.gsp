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

	<g:form url="" method="post">
		<div class="row">
			<div class="input-field col s4">
				<div>
					<label for="title">Title :</label>
					<g:textField name="title" value="${userStory.title}" />
				</div>
			</div>
			<div class="input-field col s4">
				<div>
					<label for="description">Description :</label>
					<g:textField name="description" value="${userStory.description}" />
				</div>
			</div>
			<div class="input-field col s4">
				<g:select name="prioridad" from="..10" value="" noSelection="['':'Priority']"/>
				<label>Priority</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s6">
				Effort in points:
				<p class="range-field">
					<input type="range" id="esfuerzoEnPuntos" min="1" max="5" />
				</p>
			</div>
			<div class="input-field col s6">
				<div>
					<label for="criteriosDeAceptacion">Acceptance Criteria :</label>
					<g:textArea class="materialize-textarea" name="criteriosDeAceptacion" value="${userStory.criteriosDeAceptacion}" />
				</div>
			</div>
		</div>
		<button class="btn waves-effect waves-light" type="submit" name="action">Nueva US
		</button>
	</g:form>


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
