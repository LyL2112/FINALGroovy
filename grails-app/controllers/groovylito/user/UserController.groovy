package groovylito.user

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured('permitAll')
@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    def getName(){
        def id = params.id
        def user = User.findWhere(id: id)
        [user: user]
    }

    def recoverPassword(){
        def dir_email = params.email
        def user = User.findWhere(email: dir_email)
        def new_pass = ""
        if(user!=null && user){
            user.password = ""
            while(!user.validate()){
                new_pass = 'Acceso'+ (new Random()).nextInt()
                user.password = new_pass
            }
            user.save(flush: true)
        }else{
            render view: '/login/denied'
            return
        }
        sendMail {
            to dir_email
            subject "[Groovylito] Nueva clave de acceso."
            body( view:"mail", model:[pass:new_pass])
        }
        redirect controller: 'perfil', action: 'index'
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }
        if (userInstance.validate()){
            userInstance.save flush: true
        }else{
            respond userInstance.errors, view: 'create'
            return
        }

        // Guardamos el rol que posee este usuario
        def roleUser = Role.findByAuthority('ROLE_USER')
        if(!roleUser){
            roleUser = new Role(authority: 'ROLE_USER').save(flush: true)
        }
        UserRole.create userInstance, roleUser, true


        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }


    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'edit'
            return
        }

        userInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
