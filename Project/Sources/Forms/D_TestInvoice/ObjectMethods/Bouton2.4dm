$esInvoices:=ds.Invoices.all()

$esCars:=ds.Cars.all()
$length:=$esCars.length


For each ($invoice; $esInvoices)
	$rnd:=20+(Random%21)  //20…40
	
	For ($i; 1; $rnd)
		$car:=$esCars[Random%$length]  // 0 … (length-1)
		
		$car.invoice:=$invoice
		$car.save()
		
		$esCars:=$esCars.minus($car)
		$length:=$esCars.length
	End for 
	
End for each 


