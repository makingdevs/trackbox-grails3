package com.makingdevs

import grails.transaction.Transactional

@Transactional
class ProjectService {

  def startNewProject(Project project) {
    log.debug "Guardando el project"
    project.save()
    project
  }
}
