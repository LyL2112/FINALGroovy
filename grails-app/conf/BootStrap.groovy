import groovylito.user.*

class BootStrap {

    def init = { servletContext ->
        /*def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def testUser = new User(username: 'vmmz', password: 'pass', email: 'vmmzn20@gmail.com', firstName: 'first', lastName: 'last')
        testUser.save(flush: true)

        UserRole.create testUser, userRole, true
        println 'usuario creado bootstrap'*/

    }
    def destroy = {
    }
}
