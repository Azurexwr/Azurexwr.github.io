var result;

$(document).ready(give_a_number());

function give_a_number(){
    result = Math.round(Math.random() * 100);
    console.info(result);
}

function ask_for_a_number (){
    return document.getElementById("myForm").elements[0].value;
}

function compare_numbers(){
    console.info(result);
    var x = result;
    var y = ask_for_a_number();
    if( y > 100 || y < 0 ){
        alert("The Number is between 0-100")
    }
    if( x == y ){
        alert("Congratulations! You are right.");
    }else if( x < y ){
        alert("The Number Is Smaller.");
    }else if( x > y){
        alert("The Number Is Bigger.")
    }
}