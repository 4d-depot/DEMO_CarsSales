Class extends DataClass

//exposed Function getNewSelection() : cs.OptionAvailableSelection
//return ds.OptionAvailable.newSelection()

//exposed Function searchByCriterias($optionName : Text; $optionCategory : Text; $cleanOptions : cs.OptionAvailableSelection) : cs.OptionAvailableSelection
//var $result : cs.OptionAvailableSelection

//If ($optionCategory="99")
//$result:=ds.OptionAvailable.query("label == :1"; "@"+$optionName+"@")
//Else 
//$result:=ds.OptionAvailable.query("label == :1 AND category.ID == :2"; "@"+$optionName+"@"; Num($optionCategory))
//End if 

//return ($cleanOptions=Null) ? $result : $result.cleanAvailableOptions($cleanOptions)
