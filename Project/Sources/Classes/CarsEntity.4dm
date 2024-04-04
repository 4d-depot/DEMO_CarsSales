Class extends Entity

Alias modelPrice model.price

Function get optionsList()->$optionsList : Text
	
	$optionsList:=""
	For each ($option; This.chosenOptions)
		$optionsList:=$optionsList+$option.option.label+", "
	End for each 
	$optionsList:=Substring($optionsList; 1; Length($optionsList)-2)
	If ($optionsList="")
		$optionsList:="None"
	End if 
	
Function get optionsPrice()->$optionsPrice : Real
	For each ($option; This.chosenOptions)
		$optionsPrice:=$optionsPrice+$option.option.price
	End for each 
	
	
Function get totalPrice()->$price : Real
	
	$price:=This.model.price+This.optionsPrice
	
	
	
	