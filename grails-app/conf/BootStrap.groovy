import kwik.Role

class BootStrap {

    def init = { servletContext ->
		Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
    }
    def destroy = {
    }
}
