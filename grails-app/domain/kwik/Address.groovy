package kwik

class Address {

	String zip
	String street
	String number
	String city
	String state
	String country
	
    static constraints = {
		zip blank:false, number:true
		street blank:false
		number blank:false, number:true
		city  blank:false
		state blank:false
		country blank:false
    }
	
}
