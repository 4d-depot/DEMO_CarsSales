$esInvoices:=ds.Invoices.all()
$invoiceLength:=$esInvoices.length

$esCars:=ds.Cars.query("invoice= null")



For each ($car; $esCars)
	
	
	$car.invoice:=$esInvoices[Random%$invoiceLength]
	$car.save()
	
End for each 


