package com.makingdevs

class HomeController {

  def index() {
    log.debug "Hola mundo ${new Date()}"
    log.debug "${params}"
    params.each { k,v ->
      log.debug "${v?.class}"
    }
    log.debug "${request}"
    log.debug "${session.properties}"
    render "Hola mundo"
  }

  def accion1(){
    flash.variable = "Estaré disponible en el siguiente request"
    //redirect action:"accion2" // Generando un nuevo request
    redirect controller: 'project', action: 'create'
  }

  def accion2(){
    log.debug flash.variable // "Estaré disponible en el siguiente request"
    render "Terminado"
  }
}
