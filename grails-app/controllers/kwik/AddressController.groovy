package kwik

import grails.converters.JSON
import grails.plugins.springsecurity.Secured
import groovyx.net.http.RESTClient

class AddressController {

	def springSecurityService
	
	def beforeInterceptor = {
		flash.message = ""
	}
	
	private getCurrentUserAddress() {
		springSecurityService.currentUser?.address
	}
	
    def index() {
		if(!springSecurityService.currentUser) {
			redirect controller:"login", action: "auth"
		}
		
		def address = currentUserAddress
        
		if (address) {
			flash.message = getVeryHilariousMessage(address)
			return [address: address]
        } else {
			flash.message = "No address yet. Why don't you add an address so we can send you a Christmas card?"
        }
    }

    def create() {
		if(!springSecurityService.currentUser) {
			redirect controller:"login", action: "auth"
		}
		
        [addressInstance: new Address(params)]
    }

    def save() {
		if(!springSecurityService.currentUser) {
			redirect controller:"login", action: "auth"
		}
		
		def address = new Address(getAddress(params.zip))
		address.number = params.number;
		
        if (!address.save(flush: true, failOnError:true)) {
            flash.message = "Something went wrong. Run for you life!!!!"
        }
		
		springSecurityService.currentUser.address = address
		springSecurityService.currentUser.save(flush:true)

        flash.message = getVeryHilariousMessage(address)
    }
	
	private getAddress(zip) {
		def correiosApi = new RESTClient('http://correiosapi.apphb.com/cep/')
		def response = correiosApi.get path:zip
		
		def addressFromCorreios = response.data
		
		return [
				zip : zip,
				street : addressFromCorreios.logradouro,
				city : addressFromCorreios.cidade,
				state : addressFromCorreios.estado,
				country : "Brasil"
			]
	}
	
	def fill() {
		try {
			def address =  getAddress(params.cep)
			
			response.status = 200
			render address as JSON 
		} catch(IOException e) {
			e.printStackTrace()
			response.status = 404
		}		
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
