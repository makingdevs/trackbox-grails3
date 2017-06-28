package com.makingdevs

class ProjectController {

  static scaffold = Project

  def byCodeName(){
    Project p = Project.findByCodeName(params.codeName)
    redirect action:"show", id: p.id
  }

}
