import UIKit

var greeting = "Hello, playground"



for i in 2...9{
    for j in 1...9{
        print("\(i) * \(j) = ", i*j)
    }
    print("")
}



for i in 1...100{
    if i % 3 == 0{
        print("3의 배수 발견: \(i)")
    }
}

print()

var num = 5
var str = ""

for _ in 1...num{
    str += "⭐️"
    print(str)
}

 
