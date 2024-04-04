Case of 
	: (Form event code=On Load)
		
		Form.invoices:=ds.Invoices.all()
		LISTBOX SELECT ROW(*; "LB_Invoices"; 1)
		
		Form.cars:=ds.Cars.all()
		LISTBOX SELECT ROW(*; "LB_Cars"; 1)
		
		Form.companies:=ds.Company.all()
		LISTBOX SELECT ROW(*; "LB_Companies"; 1)
		
		Form.chosenOptions:=ds.ChosenOptions.all()
		LISTBOX SELECT ROW(*; "LB_ChosenOptions"; 1)
		
End case 
