package mx.edu.ebc

import grails.transaction.Transactional

@Transactional
class CommentService {

  def serviceMethod() {
    log.debug "Comment service ${new Date()}"
  }
}
