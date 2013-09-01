package kwik

class SignupController {
	
	def springSecurityService

    def create(String username, String password) {
		def user = User.findByUsername(username) ?: new User(
			username: username,
			password: springSecurityService.encodePassword(password),
			enabled: true).save(failOnError: true)

//		UserRole.create user, userRole
	}
	
	private getUserRole() {
//		Role.findByAuthority('ROLE_USER')
	}
}
