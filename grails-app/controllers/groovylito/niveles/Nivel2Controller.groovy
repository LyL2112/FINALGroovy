package groovylito.niveles


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Nivel2Controller {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nivel2.list(params), model: [nivel2InstanceCount: Nivel2.count()]
    }

    def show(Nivel2 nivel2Instance) {
        respond nivel2Instance
    }

    def create() {
        respond new Nivel2(params)
    }

    @Transactional
    def save(Nivel2 nivel2Instance) {
        if (nivel2Instance == null) {
            notFound()
            return
        }

        if (nivel2Instance.hasErrors()) {
            respond nivel2Instance.errors, view: 'create'
            return
        }

        nivel2Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nivel2.label', default: 'Nivel2'), nivel2Instance.id])
                redirect nivel2Instance
            }
            '*' { respond nivel2Instance, [status: CREATED] }
        }
    }

    def edit(Nivel2 nivel2Instance) {
        respond nivel2Instance
    }

    @Transactional
    def update(Nivel2 nivel2Instance) {
        if (nivel2Instance == null) {
            notFound()
            return
        }

        if (nivel2Instance.hasErrors()) {
            respond nivel2Instance.errors, view: 'edit'
            return
        }

        nivel2Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nivel2.label', default: 'Nivel2'), nivel2Instance.id])
                redirect nivel2Instance
            }
            '*' { respond nivel2Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nivel2 nivel2Instance) {

        if (nivel2Instance == null) {
            notFound()
            return
        }

        nivel2Instance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nivel2.label', default: 'Nivel2'), nivel2Instance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivel2.label', default: 'Nivel2'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
