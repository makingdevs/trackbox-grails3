package com.makingdevs

class BacklogController {

  UserStoryService userStoryService

  def index() {
    Project project = Project.findByCodeName(params.codeName)
    List<UserStory> backlog = UserStory.findAllByProject(project)
    [project:project, backlog: backlog, userStory: new UserStory()]
  }
}
