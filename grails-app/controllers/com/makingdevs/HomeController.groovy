package com.makingdevs

class HomeController {

  def index() {
    log.debug "Hola mundo ${new Date()}"
    render "Hola mundo"
  }
}
