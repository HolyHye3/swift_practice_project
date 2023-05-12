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

// ====================================================

// 열거형과 switch문의 활용

// 1. 일반적인 열거형(원시값) switch문
// - 정의
enum Login:String {
    case google
    case kakao
    case naver
}

let userLogin:Login = .kakao

// - switch문 분기처리
switch userLogin {
case .google:
    print("구글 로그인")
case .kakao:
    print("카카오 로그인")
case .naver:
    print("네이버 로그인")
}


// 2. 옵셔널 열거형
// - 정의
enum SomeEnum{
    case left
    case right
}


let x: SomeEnum? = .left

// -분기처리 원칙
switch x {
case .some(let value):
    switch value {
    case .left:
        print("왼쪽으로")
    case .right:
        print("오른쪽으로")
    }
case .none:
    print("전진")
}

// -분기처리 편의적 기능
switch x {
case .left:
    print("왼쪽으로")
case .right:
    print("오른쪽으로")
case nil:
    print("전진")
}

// 3. 열거형에 연관값이 있는 경우
// - 정의
enum Computer {
    case cpu(core: Int)
    case ram(Int)
    case hardDisk(gb: Int)
}

enum Computer2 {
    case cpu(core: Int, ghz: Double)
    case ram(Int, String)
    case hardDisk(gb: Int)
}

let chiplists: [Computer2] = [
    .cpu(core: 4, ghz: 3.0),
    .cpu(core: 8, ghz: 3.5),
    .ram(16, "SRAM"),
    .ram(32, "DRAM"),
    .cpu(core: 8, ghz: 3.5),
    .hardDisk(gb: 500),
    .hardDisk(gb: 256)
]


let chip = Computer.cpu(core:8) // 인스턴스 생성

// - 분기처리 switch문
// 모든 케이스를 다루어야 한다.
switch chip {
case .cpu(core: 8):
    print("CPU -8코어")
case .cpu(core: let c):
    print("CPU - \(c)")
case .ram(_):
    print("RAM")
case let .hardDisk(gb: g):
    print("하드 - \(g) 기가")
}

// - 분기처리 조건문 / 반복문
// 특정 케이스만 다룬다.
if case let .ram(ram) = chip{
    print("RAM - \(ram)")
}

for case .cpu(core: let c, ghz: let g) in chiplists
{
    print("CPU칩 = \(c) 코어, \(g)GHz")
}



