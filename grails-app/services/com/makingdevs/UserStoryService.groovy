package com.makingdevs

import grails.transaction.Transactional

@Transactional
class UserStoryService {

  def serviceMethod() {
    log.debug "Tocando User Story Service"
  }
}
