Class extends EntitySelection


exposed Function printInvoices($template : Object)
	
	For each ($invoice; This)
		
		$context:={}
		$context.invoice:=$invoice
		$context.buyer:=$invoice.buyer
		$context.seller:=$invoice.seller
		$context.cars:=$invoice.cars.orderBy("model.brand asc, model.model asc")
		
		// set context and compute formulas
		WP SET DATA CONTEXT($template; $context)
		WP PRINT($template)
		
	End for each 
	
	
exposed Function exportInvoices($template : Object)
	
	var path; finalPath : Text
	$path:=Folder(fk data folder).platformPath
	
	$i:=1
	For each ($invoice; This)
		
		$context:={}
		$context.invoice:=$invoice
		$context.buyer:=$invoice.buyer
		$context.seller:=$invoice.seller
		$context.cars:=$invoice.cars.orderBy("model.brand asc, model.model asc")
		
		finalPath:=$path+"invoice_"+String($i)+".pdf"
		// set context and compute formulas
		WP SET DATA CONTEXT($template; $context)
		WP EXPORT DOCUMENT($template; finalPath; wk pdf)
		
		$i+=1
	End for each 
	
	