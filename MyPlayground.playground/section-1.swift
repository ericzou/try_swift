// Playground - noun: a place where people can play
// consecutive statements on a line must be separated by ';' ->

// 1 1 2 3 5 ...

var number = 10

func f(number:Int) -> Int{
    var a:Int;
    if (number <= 1) {
        return 1
    } else {
        a = f(number - 1)
    }
    return a;
}