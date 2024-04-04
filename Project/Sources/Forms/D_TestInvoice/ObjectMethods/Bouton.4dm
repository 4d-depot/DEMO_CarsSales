

Case of 
	: (Shift down)
		ds.Company.query("name=:1"; "gare@").drop()
	: (Macintosh option down)
		ds.Company.query("name=:1"; "Aéroport@").drop()
	Else 
		Form.companies:=ds.Company.all()
		
End case 


LISTBOX SELECT ROW(*; "LB_Companies"; 1)
Form.companiesCount:=Form.companies.length