package com.makingdevs

import grails.transaction.Transactional

class HomeController {

  def index() {
    [ projects : Project.list() ]
  }

  def create(){
    def project = new Project(params)
    log.debug "${project.validate()}"
    log.debug "${project.errors}"
    project.save(flush: true)
    render project
  }

}
