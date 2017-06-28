package com.makingdevs

import grails.transaction.Transactional

class HomeController {

  ProjectService projectService

  def index() {
    def projectsFromGithub = projectService.projectsFromGithub()
    [ projects : Project.list(), project: new ProjectCommand(), projectsFromGithub: projectsFromGithub ]
  }

  def createProject(ProjectCommand projectCommand){
    log.debug "${projectCommand.validate()}"
    if(projectCommand.validate()){
      Project p = projectCommand.createProject()
      projectService.startNewProject(p)
      flash.message = "El proyecto ${p.codeName} se ha creado!"
      redirect action:'index'
    }else{
      render view:'index', model:[projects : Project.list(), project: projectCommand]
    }
  }

  def create(Project project){
    log.debug "${project.validate()}"
    log.debug "${project.errors}"
    log.debug "${project.properties}"
    project.save(flush: true)
    render project
  }

  def validate(ProjectCommand projectCommand){
    log.debug "${projectCommand.validate()}"
    log.debug "${projectCommand.errors}"
    log.debug "${projectCommand.properties}"
    render projectCommand
  }

}

class ProjectCommand {
  String owner
  String codeName
  String description
  Boolean publicVisible
  //List sprints = []
  //List backlog = []

  static constraints = {
    owner blank:false,size:5..100
    codeName blank:false,size:5..50,unique:true
    description blank:false, size:1..1000
    publicVisible()
    //sprints minSize:1
    //backlog minSize:1
  }

  Project createProject(){
    new Project(
      owner:owner,
      codeName:codeName,
      description:description,
      publicVisible:publicVisible
    )
  }
}
