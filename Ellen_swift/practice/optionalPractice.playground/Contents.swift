import UIKit

let hello:String? = nil
let num:Int? = 7

print(hello)
print(num)

if let hi = hello{
    print(hi)
}

if let n = num{
    print(n)
}


//if true{
//    guard let hi = hello else{ return false }
//}

func test (_ print:String?) -> String {
    guard let hi = print else{ return "" }
    return hi
}

print(test(hello))

