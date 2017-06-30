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


	<div class="row">
	<g:each in="${backlog}" var="userStory">
		<div class="col s4">
			<div class="card small blue-grey darken-1">
				<div class="card-content white-text">
					<b>${userStory.title}</b>
					<p>${userStory.description}</p>
					<ul>
						<li>Priority: ${userStory.prioridad}</li>
						<li>Effort: ${userStory.esfuerzoEnPuntos}</li>
					</ul>
				</div>
				<div class="card-action">
					<a href="#">Add task</a>
				</div>
			</div>
		</div>
	</g:each>
	</div>

</body>
</html>
