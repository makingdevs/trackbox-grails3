package com.makingdevs

class Project {

  String owner
  String codeName
  String description
  Boolean publicVisible

  Date dateCreated
  Date lastUpdated

  static constraints = {
    owner blank:false, size: 5..100
    codeName blank:false, size: 5..20, unique: true
    description nullable:true, blank:true, size: 1..5000
    publicVisible()
  }
}
