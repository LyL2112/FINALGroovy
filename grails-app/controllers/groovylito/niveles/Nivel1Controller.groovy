package groovylito.niveles

import grails.plugin.springsecurity.annotation.Secured
import groovylito.niveles.Nivel1
import groovylito.user.Role

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured('permitAll')
@Transactional(readOnly = true)
class Nivel1Controller {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nivel1.list(params), model: [nivel1InstanceCount: Nivel1.count()]
    }

    def show(Nivel1 nivel1Instance) {
        respond nivel1Instance
    }

    def create() {
        respond new Nivel1(params)
    }

    @Transactional
    def save(Nivel1 nivel1Instance) {
        if (nivel1Instance == null) {
            notFound()
            return
        }

        if (nivel1Instance.hasErrors()) {
            respond nivel1Instance.errors, view: 'create'
            return
        }

        nivel1Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nivel1.label', default: 'Nivel1'), nivel1Instance.id])
                redirect nivel1Instance
            }
            '*' { respond nivel1Instance, [status: CREATED] }
        }
    }

    def edit(Nivel1 nivel1Instance) {
        respond nivel1Instance
    }

    @Transactional
    def update(Nivel1 nivel1Instance) {
        if (nivel1Instance == null) {
            notFound()
            return
        }

        if (nivel1Instance.hasErrors()) {
            respond nivel1Instance.errors, view: 'edit'
            return
        }

        nivel1Instance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nivel1.label', default: 'Nivel1'), nivel1Instance.id])
                redirect nivel1Instance
            }
            '*' { respond nivel1Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nivel1 nivel1Instance) {

        if (nivel1Instance == null) {
            notFound()
            return
        }

        nivel1Instance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nivel1.label', default: 'Nivel1'), nivel1Instance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivel1.label', default: 'Nivel1'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
