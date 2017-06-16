package com.makingdevs

class Task {

  String description

  Date dateCreated
  Date lastUpdated

  static constraints = {
    description blank:false, size:1..1000
  }
}
