package com.makingdevs

class User {

  String username
  String password

  Date dateCreated
  Date lastUpdated

  static constraints = {
    username blank:false, size:1..50, unique:true
    password blank:false, size:1..50, validator: { val, obj ->
      if(val == obj.username) {
        return false
      }
    }
  }
}
