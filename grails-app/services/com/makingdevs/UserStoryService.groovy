package com.makingdevs

import grails.transaction.Transactional
import org.springframework.transaction.annotation.Propagation

@Transactional
class UserStoryService {

  @Transactional(propagation = Propagation.REQUIRES_NEW)
  def serviceMethod() {
    log.debug "Tocando User Story Service"
  }
}
