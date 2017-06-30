package com.makingdevs

class BacklogController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

  UserStoryService userStoryService

  def index() {
    Project project = Project.findByCodeName(params.codeName)
    List<UserStory> backlog = UserStory.findAllByProject(project)
    [project:project, backlog: backlog, userStory: new UserStory()]
  }

	def save(){
		UserStory userStory = new UserStory(params)
		log.debug "${userStory.validate()}"
		log.debug "${userStory.properties}"
		log.debug "${userStory.errors}"
		userStoryService.addUserStoryToProject(userStory, params.long('userStory.project.id'))
		redirect action: "index", params: params
	}
}
