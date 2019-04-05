function regValidate() {

	var username = document.forms["regform"]["username"].value;
	var password = document.forms["regform"]["password"].value;
	var rpassword = document.forms["regform"]["retry-password"].value;
	
	//tests if username was entered
	if (username == "") {
        alert("username must be filled out");
        document.forms["regform"]["username"].focus();
        return false;
    }
	//tests if password was entered
	else if (password== "") {
        alert("password must be filled out");
        document.forms["regform"]["password"].focus();
        return false;
    }
	//tests if retried password was entered
	else if (rpassword == "") {
        alert("retry-password must be filled out");
        document.forms["regform"]["retry-password"].focus();
        return false;
    }
	//tests if passwords match
	else if(password != rpassword){
    	alert("password doesnt match");
        document.forms["regform"]["password"].focus();
        return false;
    }
}
//validates login informations
function loginValidate(){
	var username = document.forms["loginform"]["username"].value;
	var password = document.forms["loginform"]["password"].value;
	
	//tests if username was filled out
	if (username == "") {
        alert("username must be filled out");
        document.forms["loginform"]["username"].focus();
        return false;
    }
	//tests if password was filled out
	else if (password== "") {
        alert("password must be filled out");
        document.forms["loginform"]["password"].focus();
        return false;
    }
	//tests if retry-password was filled out
	else if (rpassword == "") {
        alert("retry-password must be filled out");
        document.forms["loginform"]["retry-password"].focus();
        return false;
    }
	//tests if passwords match
	else if(password != rpassword){
    	alert("password doesnt match");
        document.forms["loginform"]["password"].focus();
        return false;
    }
}
