Class extends Entity

Function get fullAddress()->$address : Text
	
	$address:=""
	$address:=$address+This.address.street+"\r"
	$address:=$address+This.address.city+" "+This.address.zipCode+"\r"
	$address:=$address+This.address.state+"\r"
	$address:=$address+This.address.country
	
	