package groovylito.foro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ForumController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Forum1.list(params), model:[forumInstanceCount: Forum1.count()]
    }

    def show(Forum1 forumInstance) {
        respond forumInstance
    }

    def create() {
        respond new Forum1(params)
    }

    @Transactional
    def save(Forum1 forumInstance) {
        if (forumInstance == null) {
            notFound()
            return
        }

        if (forumInstance.hasErrors()) {
            respond forumInstance.errors, view:'create'
            return
        }

        forumInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'forum.label', default: 'Forum'), forumInstance.id])
                redirect forumInstance
            }
            '*' { respond forumInstance, [status: CREATED] }
        }
    }

    def edit(Forum1 forumInstance) {
        respond forumInstance
    }

    @Transactional
    def update(Forum1 forumInstance) {
        if (forumInstance == null) {
            notFound()
            return
        }

        if (forumInstance.hasErrors()) {
            respond forumInstance.errors, view:'edit'
            return
        }

        forumInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Forum.label', default: 'Forum'), forumInstance.id])
                redirect forumInstance
            }
            '*'{ respond forumInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Forum1 forumInstance) {

        if (forumInstance == null) {
            notFound()
            return
        }

        forumInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Forum.label', default: 'Forum'), forumInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'forum.label', default: 'Forum'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
