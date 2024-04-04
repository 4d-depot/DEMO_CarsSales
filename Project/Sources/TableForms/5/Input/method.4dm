Case of 
		
	: (Form event code=On Load)
		
		Form.wpArea:=[Templates4DWP]wp
		$o:={}
		$o[wk visible references]:=True
		$o[wk display formula as symbol]:=True
		WP SET VIEW PROPERTIES(*; "wpArea"; $o)
		
		
		
End case 

