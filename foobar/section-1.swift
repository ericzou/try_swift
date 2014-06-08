// FOOBAR

// how to type case in swift -> String(number)
var numbers = (1..100)

func foobar(number: Int) -> String{
    if ( number % 15 == 0 ) {
        return "foobar"
    }
    if (number % 3 == 0) {
        return "foo"
    }
    
    if (number % 5 == 0) {
        return "bar"
    }
    
    return String(number);
}

for index in numbers {
    println(foobar(index));
}