package com.makingdevs

import grails.transaction.Transactional
import wslite.rest.*

@Transactional
class ProjectService {

  UserStoryService userStoryService
  RESTClient restClient

  def projectsFromGithub() {
    def response = restClient.get(path:'/orgs/makingdevs/repos')
    // log.debug "${response}"
    // log.debug "${response.json}"
    response.json.collect { project ->
      [id: project.id, name: project.name]
    }
  }

  def startNewProject(Project project) {
    log.debug "Guardando el project"
    project.codeName = project.codeName.toUpperCase()
    project.save()
    userStoryService.serviceMethod()
    project
  }
}
