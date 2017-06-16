package com.makingdevs

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SprintController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sprint.list(params), model:[sprintCount: Sprint.count()]
    }

    def show(Sprint sprint) {
        respond sprint
    }

    def create() {
        respond new Sprint(params)
    }

    @Transactional
    def save(Sprint sprint) {
        if (sprint == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (sprint.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond sprint.errors, view:'create'
            return
        }

        sprint.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sprint.label', default: 'Sprint'), sprint.id])
                redirect sprint
            }
            '*' { respond sprint, [status: CREATED] }
        }
    }

    def edit(Sprint sprint) {
        respond sprint
    }

    @Transactional
    def update(Sprint sprint) {
        if (sprint == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (sprint.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond sprint.errors, view:'edit'
            return
        }

        sprint.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sprint.label', default: 'Sprint'), sprint.id])
                redirect sprint
            }
            '*'{ respond sprint, [status: OK] }
        }
    }

    @Transactional
    def delete(Sprint sprint) {

        if (sprint == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        sprint.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sprint.label', default: 'Sprint'), sprint.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sprint.label', default: 'Sprint'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
