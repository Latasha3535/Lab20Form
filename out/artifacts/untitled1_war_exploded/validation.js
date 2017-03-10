
function checkForm() {
    var firstName = document.form1.firstName.value;
    var lastName = document.form1.lastName.value;
    var Phone = document.form1.Phone.value;
    var City= document.form1.City.value;
    var State = document.form1.State.value;
    var Zip = document.form1.Zip.value

    alert("name is " + firstName +" "+  lastName);
    if (firstName === "" || firstName === null) {
        alert("Sorry Your First Nanme ");
        return false;
    }
    else if (lastName === "" || lastName === null) {
        alert("Sorry,enter your Last Name");
        return false;
    }
    else if( Phone < " " || Phone === null) {
        alert("Sorry,enter a valid phone number");
        return false;
    } else if( City === "" || City === null) {
        alert("Sorry, please enter a city");
        return false;
    }else if( State === "" || State === null) {
        alert("Sorry, a State");
        return false;
    } else if( Zip === "" ||Zip === null) {
        alert("Sorry, a zip code");
        return false;

    } else {
        return true;
    }
}

