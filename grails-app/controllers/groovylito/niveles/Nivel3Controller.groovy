package groovylito.niveles


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Nivel3Controller {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nivel3.list(params), model: [nivel3InstanceCount: Nivel3.count()]
    }

    def show(Nivel3 nivel3Instance) {
        respond nivel3Instance
    }

    def create() {
        respond new Nivel3(params)
    }

    @Transactional
    def save(Nivel3 nivel3Instance) {
        if (nivel3Instance == null) {
            notFound()
            return
        }

        if (nivel3Instance.hasErrors()) {
            respond nivel3Instance.errors, view: 'create'
            return
        }

        nivel3Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nivel3.label', default: 'Nivel3'), nivel3Instance.id])
                redirect nivel3Instance
            }
            '*' { respond nivel3Instance, [status: CREATED] }
        }
    }

    def edit(Nivel3 nivel3Instance) {
        respond nivel3Instance
    }

    @Transactional
    def update(Nivel3 nivel3Instance) {
        if (nivel3Instance == null) {
            notFound()
            return
        }

        if (nivel3Instance.hasErrors()) {
            respond nivel3Instance.errors, view: 'edit'
            return
        }

        nivel3Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nivel3.label', default: 'Nivel3'), nivel3Instance.id])
                redirect nivel3Instance
            }
            '*' { respond nivel3Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nivel3 nivel3Instance) {

        if (nivel3Instance == null) {
            notFound()
            return
        }

        nivel3Instance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nivel3.label', default: 'Nivel3'), nivel3Instance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivel3.label', default: 'Nivel3'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
