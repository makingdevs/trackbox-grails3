package com.makingdevs

import grails.transaction.Transactional

@Transactional
class ProjectService {

  UserStoryService userStoryService

  def startNewProject(Project project) {
    log.debug "Guardando el project"
    project.save()
    userStoryService.serviceMethod()
    project
  }
}
