    <g:hiddenField name="userStory.project.id" value="${userStory.project.id}" />
		<div class="row">
			<div class="input-field col s4">
				<div>
					<label for="title">Title :</label>
					<g:textField name="userStory.title" value="${userStory.title}" />
				</div>
			</div>
			<div class="input-field col s4">
				<div>
					<label for="description">Description :</label>
					<g:textField name="userStory.description" value="${userStory.description}" />
				</div>
			</div>
			<div class="input-field col s4">
				<g:select name="userStory.prioridad" from="${1..10}" value="" noSelection="['':'Priority']"/>
				<label>Priority</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s6">
				Effort in points:
				<p class="range-field">
					<input type="range" name="userStory.esfuerzoEnPuntos" min="1" max="5" />
				</p>
			</div>
			<div class="input-field col s6">
				<div>
					<label for="criteriosDeAceptacion">Acceptance Criteria :</label>
					<g:textArea class="materialize-textarea" name="userStory.criteriosDeAceptacion" value="${userStory.criteriosDeAceptacion}" />
				</div>
			</div>
		</div>

