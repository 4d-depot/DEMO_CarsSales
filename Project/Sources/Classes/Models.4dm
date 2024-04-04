Class extends DataClass

//exposed Function fuelList() : Collection
//return This.all().distinct("fuel")


//exposed Function searchByName($search : Text)->$result : cs.CarModelSelection

//$search:="@"+$search+"@"
//$result:=This.query("brand = :1 or model = :1"; $search)


//exposed Function searchByCriterias($search : Text; $gearSearch : Text; $fuelSearch : Text)->$result : cs.CarModelSelection

//$result:=This.searchByName($search)

//If ($gearSearch#"All")
//$result:=$result.query("gearbox=:1"; $gearSearch)
//End if 

//If ($fuelSearch#"All")
//$result:=$result.query("fuel=:1"; $fuelSearch)
//End if 



