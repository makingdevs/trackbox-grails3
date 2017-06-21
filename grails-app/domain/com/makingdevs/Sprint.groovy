package com.makingdevs

class Sprint {

  Date startDate
  Date endDate
  String title
  String description
  Integer duracionEnDias

  Date dateCreated
  Date lastUpdated

  static transients = ['duracionEnDias']

  static constraints = {
    startDate()
    endDate()
    title blank:false, size:1..50
    description blank:true,size:1..1000
  }

  static hasMany = [
    sprintBacklog : UserStory
  ]

}
