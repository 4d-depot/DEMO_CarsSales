Class extends DataStoreImplementation

//exposed Function newEntity($dataClass : Text) : 4D.Entity
//return ds[$dataClass].new()

//exposed Function returnEntity($entity : 4D.Entity) : 4D.Entity
//return $entity

//exposed Function getPrimaryKey($entity : 4D.Entity) : Variant
//return $entity.getKey(dk key as string)

////MARK: Query Helper wrapper on cs.QueryHelper...
//exposed Function createQueryHelper($dataclass : Text) : Object
//var $queryObject : cs.QueryHelper
//$queryObject:=cs.QueryHelper.new($dataclass)
//return $queryObject.getObject()

////FIXME: input parameter has to be an object, to recreate the cs.queryHelper afterwards...
////otherwise member function cannot be called: object received from studio is not casted into cs.queryhelper
//exposed Function queryHelperWrapper($queryHelper : Object; $function : Text; $attribute : Text; $operator : Text; $value : Variant) : Object
//var $qh : cs.QueryHelper
//var $check : Boolean

//$check:=($queryHelper && $queryHelper.dataClass) ? True : False
//If (Not($check))
//return Null
//End if 

//$qh:=cs.QueryHelper.new($queryHelper.dataClass)
//$qh.queryObject:=$queryHelper.queryObject

//Case of 
//: ($function="addCriteria")
//$qh.addCriteria($attribute; $operator; $value)
//: ($function="deleteCriteria")
//$qh.deleteCriteria($attribute; $operator; $value)

//End case 

//return $qh.getObject()

//exposed Function queryHelperApply($queryHelper : Object) : 4D.EntitySelection
//var $qh : cs.QueryHelper

//$check:=($queryHelper && $queryHelper.dataClass) ? True : False
//If (Not($check))
//return Null
//End if 

//$qh:=cs.QueryHelper.new($queryHelper.dataClass)
//$qh.queryObject:=$queryHelper.queryObject

//return $qh.applyFilter()

//exposed Function queryHelperGetString($queryHelper : Object) : Text
//var $qh : cs.QueryHelper

//$check:=($queryHelper && $queryHelper.dataClass) ? True : False
//If (Not($check))
//return ""
//End if 

//$qh:=cs.QueryHelper.new($queryHelper.dataClass)
//$qh.queryObject:=$queryHelper.queryObject

//return $qh.getQueryString()

