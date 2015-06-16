package groovylito.foro


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Forum1Controller {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Forum1.list(params), model: [forum1InstanceCount: Forum1.count()]
    }

    def show(Forum1 forum1Instance) {
        respond forum1Instance
    }

    def create() {
        respond new Forum1(params)
    }

    @Transactional
    def save(Forum1 forum1Instance) {
        if (forum1Instance == null) {
            notFound()
            return
        }

        if (forum1Instance.hasErrors()) {
            respond forum1Instance.errors, view: 'create'
            return
        }

        forum1Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'forum1.label', default: 'Forum1'), forum1Instance.id])
                redirect forum1Instance
            }
            '*' { respond forum1Instance, [status: CREATED] }
        }
    }

    def edit(Forum1 forum1Instance) {
        respond forum1Instance
    }

    @Transactional
    def update(Forum1 forum1Instance) {
        if (forum1Instance == null) {
            notFound()
            return
        }

        if (forum1Instance.hasErrors()) {
            respond forum1Instance.errors, view: 'edit'
            return
        }

        forum1Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Forum1.label', default: 'Forum1'), forum1Instance.id])
                redirect forum1Instance
            }
            '*' { respond forum1Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(Forum1 forum1Instance) {

        if (forum1Instance == null) {
            notFound()
            return
        }

        forum1Instance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Forum1.label', default: 'Forum1'), forum1Instance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'forum1.label', default: 'Forum1'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
