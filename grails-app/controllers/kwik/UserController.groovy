package kwik

import grails.plugins.springsecurity.ui.AbstractS2UiController
import grails.util.GrailsNameUtils

import org.codehaus.groovy.grails.plugins.springsecurity.NullSaltSource
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class UserController extends AbstractS2UiController {
	def saltSource
	def userCache
	
	def create = {
		def user = lookupUserClass().newInstance(params)
		[user: user, authorityList: sortedRoles()]
	}

	def save = {
		def user = lookupUserClass().newInstance(params)
		if (params.password) {
			saltUserPassword(user)
		}
		if (!user.save(flush: true)) {
			render view: 'create', model: [user: user, authorityList: sortedRoles()]
			return
		}

		addRoles(user)
		flash.message = "User $user.username created! Please login and buy a lot of stuff."
		redirect controller:"login", action: "auth"
	}
	
	private saltUserPassword(User user) {
		String salt = saltSource instanceof NullSaltSource ? null : user.username
		user.password = springSecurityUiService.encodePassword(user.password, salt)
	}
	
	def resetPassword = {
		if(params.username) {
			def user = User.findByUsername(params.username)
			
			if(!user) {
				flash.message = "This user doesn't exist"
			} else {
				def newPassword = new Random().nextInt(999999).toString()
				user.password = newPassword
				saltUserPassword(user)
				user.save()
				
				flash.message = "We trust you are in fact $user.username and thus we are reseting your password. Now it is '$newPassword'"
				redirect controller:"login", action: "auth"
			}
		}
	}
	
	protected void addRoles(user) {
		String upperAuthorityFieldName = GrailsNameUtils.getClassName(
			SpringSecurityUtils.securityConfig.authority.nameField, null)

		for (String key in params.keySet()) {
			if (key.contains('ROLE') && 'on' == params.get(key)) {
				lookupUserRoleClass().create user, lookupRoleClass()."findBy$upperAuthorityFieldName"(key), true
			}
		}
	}

	protected Map buildUserModel(user) {

		String authorityFieldName = SpringSecurityUtils.securityConfig.authority.nameField
		String authoritiesPropertyName = SpringSecurityUtils.securityConfig.userLookup.authoritiesPropertyName

		List roles = sortedRoles()
		Set userRoleNames = user[authoritiesPropertyName].collect { it[authorityFieldName] }
		def granted = [:]
		def notGranted = [:]
		for (role in roles) {
			String authority = role[authorityFieldName]
			if (userRoleNames.contains(authority)) {
				granted[(role)] = userRoleNames.contains(authority)
			}
			else {
				notGranted[(role)] = userRoleNames.contains(authority)
			}
		}

		return [user: user, roleMap: granted + notGranted]
	}

	protected findById() {
		def user = lookupUserClass().get(params.id)
		if (!user) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
			redirect action: search
		}

		user
	}

	protected List sortedRoles() {
		lookupRoleClass().list().sort { it.authority }
	}
}
