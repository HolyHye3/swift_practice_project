import UIKit


// 문제
func randumStr(s:String) -> Character{
    var num = Int.random(in: 0...s.count-1)
    
    var strIndex = s.index(s.startIndex, offsetBy: num)
    
    return s[strIndex]
}

print(randumStr(s:"스위프트"))

// 풀이
func chooseRandomString(_ chars: String) -> String {
    return String(chars.randomElement()!)
}

print(chooseRandomString("안녕하세요"))



// ============================================================

func primeNumber(_ n:Int)->String{
    // 2와 3은 무조건 소수
    if n==2 || n==3 {
        return "소수입니다."
    }
    // 2로 나누어 떨어지면
    else if n%2 == 0{
        return "소수가 아닙니다."
    }
    // 3으로 나누어 떨어지면
    else if n%3 == 0{
        return "소수가 아닙니다."
    }
    else{
        return "소수입니다."
    }
    
}

print(primeNumber(49))



// 소수는 자기 자신보다 작은 수로 나누었을때 떨어지지 않는 수


// ===================================================

func factorial(_ n:inout Int)->Int{

    for i in (1..<n).reversed(){
        n *= i
        print(n)
    }
    return n
}

var num = 5
print(factorial(&num))


//var n = 5
//
//for i in (1..<n).reversed(){
//    n *= i
//    print(n)
//}

