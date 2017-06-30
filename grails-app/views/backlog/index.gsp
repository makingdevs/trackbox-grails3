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
        <div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Card Title</span>
              <p>I am a very simple card. I am good at containing small bits of information.
              I am convenient because I require little markup to use effectively.</p>
            </div>
            <div class="card-action">
              <a href="#">This is a link</a>
              <a href="#">This is a link</a>
            </div>
          </div>
        </div>
      </div>


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
