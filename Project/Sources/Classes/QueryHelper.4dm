//Class constructor($dataClassName : Text)
//This.queryObject:=New object
//This.dataClass:=$dataClassName
////Fixme:check if dataclass exists?


//Function _attrType($attributePath : Text) : Text
//$dataClass:=This.dataClass
//$attributePathCol:=Split string($attributePath; ".")

//For each ($attribute; $attributePathCol)
//$dataClassAttr:=($dataClass) ? (ds[$dataClass][$attribute]) : Null

//If (Undefined($dataClassAttr) || ($dataClassAttr=Null))
//return "undefined"
//End if 

//$returnValue:=$dataClassAttr.type
//$dataClass:=$dataClassAttr.relatedDataClass

//End for each 

//return $returnValue

//Function _stripColByOperator($col : Collection; $operator : Text) : Collection
//$newCol:=New collection

//For each ($obj; $col)
//If ($obj.operator#$operator)
//$newCol.push($obj)
//End if 
//End for each 
//return $newCol

//Function _stripColByOperatorValue($col : Collection; $operator : Text; $value : Variant) : Collection
//$newCol:=New collection

//For each ($obj; $col)
//If ($obj.operator#$operator) && ($obj.value#$value)
//$newCol.push($obj)
//End if 
//End for each 
//return $newCol

//Function addCriteria($attribute : Text; $operator : Text; $value : Variant) : Object
//$attrType:=This._attrType($attribute)
//$quote:=""
//$wildcardLeft:=""
//$wildcardRight:=""

//Case of 
//: ($attrType="undefined")
//return This
//: ($attrType="string")
//$quote:="'"
//End case 

//Case of 
//: ($operator="contains")
//$wildcardLeft:="@"
//$wildcardRight:="@"
//$operator:="="
//: ($operator="startswith")
//$wildcardLeft:="@"
//$operator:="="
//: ($operator="endswith")
//$wildcardRight:="@"
//$operator:="="
//End case 

////If the attribute has no search criteria yet, we add an empty collection for it
//If (Undefined(This.queryObject[$attribute]))
//This.queryObject[$attribute]:=New collection
//End if 

////For these operators, only 1 criteria should be defined. If some criteria are already prsent, we strip it
//If (($operator="=") || ($operator="<=") || ($operator=">="))
//This.queryObject[$attribute]:=This._stripColByOperator(This.queryObject[$attribute]; $operator)
//End if 

//$criteria:=New object("operator"; $operator; "value"; $quote+$wildcardLeft+String($value)+$wildcardRight+$quote)
//This.queryObject[$attribute].push($criteria)
//return This

//Function deleteCriteria($attribute : Text; $operator : Variant; $value : Variant) : Object
//If (Not(Undefined(This.queryObject[$attribute])))
//If ($operator=Null) || ($operator="")
//OB REMOVE(This.queryObject; $attribute)
//Else 
//If ($value=Null) || ($value="")
//This.queryObject[$attribute]:=This._stripColByOperator(This.queryObject[$attribute]; $operator)
//Else 
//This.queryObject[$attribute]:=This._stripColByOperatorValue(This.queryObject[$attribute]; $operator; $value)
//End if 
//If (This.queryObject[$attribute].length=0)
//OB REMOVE(This.queryObject; $attribute)
//End if 
//End if 
//End if 

//return This

//Function getQueryString() : Text
//$queryString:=""
//If (This.queryObject=Null)
//return $queryString
//End if 

//$criterias:=OB Entries(This.queryObject)

//For each ($criteria; $criterias)
//$critString:=""

//For each ($filter; $criteria.value)
//$critString+=(($critString#"") ? " AND " : "")
//$critString+=$criteria.key\
+" "+$filter.operator\
+" "+String($filter.value)
//End for each 

//$queryString+=(($queryString#"") ? " AND " : "")
//$queryString+=$critString

//End for each 
//return $queryString

//Function applyFilter() : 4D.EntitySelection
//$queryString:=This.getQueryString()
//return ($queryString) ? (ds[This.dataClass].query(This.getQueryString())) : (ds[This.dataClass].all())

//Function getObject() : Object
//var $obj : Object

//$obj:=New object("queryObject"; This.queryObject; "dataClass"; This.dataClass)
//return $obj
