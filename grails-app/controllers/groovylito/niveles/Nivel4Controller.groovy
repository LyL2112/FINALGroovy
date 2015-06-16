package groovylito.niveles



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Nivel4Controller {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nivel4.list(params), model:[nivel4InstanceCount: Nivel4.count()]
    }

    def show(Nivel4 nivel4Instance) {
        respond nivel4Instance
    }

    def create() {
        respond new Nivel4(params)
    }

    @Transactional
    def save(Nivel4 nivel4Instance) {
        if (nivel4Instance == null) {
            notFound()
            return
        }

        if (nivel4Instance.hasErrors()) {
            respond nivel4Instance.errors, view:'create'
            return
        }

        nivel4Instance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nivel4.label', default: 'Nivel4'), nivel4Instance.id])
                redirect nivel4Instance
            }
            '*' { respond nivel4Instance, [status: CREATED] }
        }
    }

    def edit(Nivel4 nivel4Instance) {
        respond nivel4Instance
    }

    @Transactional
    def update(Nivel4 nivel4Instance) {
        if (nivel4Instance == null) {
            notFound()
            return
        }

        if (nivel4Instance.hasErrors()) {
            respond nivel4Instance.errors, view:'edit'
            return
        }

        nivel4Instance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nivel4.label', default: 'Nivel4'), nivel4Instance.id])
                redirect nivel4Instance
            }
            '*'{ respond nivel4Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nivel4 nivel4Instance) {

        if (nivel4Instance == null) {
            notFound()
            return
        }

        nivel4Instance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nivel4.label', default: 'Nivel4'), nivel4Instance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivel4.label', default: 'Nivel4'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
