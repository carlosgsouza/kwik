package kwik

import org.springframework.dao.DataIntegrityViolationException

class AddressController {

	def springSecurityService
	
	def beforeInterceptor = {
		flash.message = ""
	}
	
	private getCurrentUserAddress() {
		springSecurityService.currentUser?.address
	}
	
    def index() {
		def address = currentUserAddress
        
		if (address) {
			flash.message = getVeryHilariousMessage(address)
			return [address: address]
        } else {
			flash.message = "No address yet. Why don't you add an address so we can send you a Christmas card?"
        }
    }

    def create() {
        [addressInstance: new Address(params)]
    }

    def save() {
        def address = new Address(params)
        if (!address.save(flush: true, failOnError:true)) {
            flash.message = "Something went wrong. Run for you life!!!!"
        }
		
		springSecurityService.currentUser.address = address
		springSecurityService.currentUser.save(flush:true)

        flash.message = getVeryHilariousMessage(address)
    }
	
	def getVeryHilariousMessage(address) {
		"""
We know you live at: <br />
<br />
$address.number, $address.street <br />
$address.city, $address.state, $address.country <br />
$address.zip <br />
 <br />
We will show up soon
"""
	}
}
