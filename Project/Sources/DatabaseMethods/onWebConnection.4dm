var $user : cs.UserEntity
var $indexIdentifier; $indexPassword : Integer
var $identifier; $password : Text
var $url : Text

$url:=$1

Case of 
	: ($url="/")
		WEB SEND HTTP REDIRECT("/authenticate")
		
	: (Position("authenticate"; $url)#0)
		
		WEB GET HTTP HEADER($anames; $avalues)
		$indexIdentifier:=Find in array($anames; "identifier")
		$identifier:=$avalues{$indexIdentifier}
		
		$indexPassword:=Find in array($anames; "password")
		$password:=$avalues{$indexPassword}
		
		$user:=ds.User.query("mail = :1"; $identifier).first()
		
		If ($user#Null)
			If (Verify password hash($password; $user.passwordHash))
				Session.clearPrivileges()
				Session.setPrivileges(New object("roles"; $user.role; "userName"; $user.firstname+" "+$user.lastname))
				Use (Session.storage)
					//Session.storage.info:=New shared object("role"; $user.role)
					Session.storage.userSel:=ds.User.newSelection().add($user).copy(ck shared)
				End use 
				WEB SEND TEXT("OK")
			Else 
				WEB SEND TEXT("Authentication failed: wrong password")
			End if 
		Else 
			WEB SEND TEXT("Authentication failed: wrong user")
		End if 
		
		
		
End case 


