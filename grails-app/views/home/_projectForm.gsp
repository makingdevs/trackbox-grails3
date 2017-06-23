    <div class="row">
      <div class="input-field col s6">
        <div>
          <label for="owner">Owner :</label>
          <g:textField name="owner" value="${project.owner}" />
        </div>
      </div>
      <div class="input-field col s6">
        <div>
          <label for="codeName">Code Name :</label>
          <g:textField name="codeName" value="${project.codeName}"/>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="input-field col s12">
        <div>
          <label for="description">Description :</label>
          <g:textField name="description" value="${project.description}" />
        </div>
      </div>
    </div>
    <div>
      <g:checkBox name="publicVisible" value="${project.publicVisible}"/>
      <label for="publicVisible">Public Visible</label>
      <br>
    </div>

