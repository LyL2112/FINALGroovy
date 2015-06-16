package groovylito.user

class User {

	transient springSecurityService

	String firstName
	String lastName
	String email
	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		firstName blank: false, minSize: 3, maxSize: 50
        lastName blank: false, minSize: 3, maxSize: 50
        email blank:false, email:true, unique: true
        username blank: false, unique: true
        password blank: false, password: true,  minSize: 8,matches: "((?=.*[0-9])(?=.*[A-Z])(?=.*[a-z]).*\$)"
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
