function give_a_number(){
    var result = Math.floor(Math.random() * 100);
    console.info(result);
    return result;
}

function ask_for_a_number (){
    return document.getElementById("myForm").elements[0].value;
}

function compare_numbers(){
    var x = give_a_number();
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
