import UIKit


print("랜덤 가위바위보")


var random:Int = Int.random(in: 0...2) // [가위, 바위, 보]
var you:Int = 1

/**
 컴퓨터 : 나
 가위(0) < 바위(1) = 이겼음
 가위(0) < 보(2) = 졌음
 
 바위(1) < 보(2) = 이겼음
 바위(1) > 가위(0) = 졌음
 
 보(2) > 가위(0) = 이겼음
 보(2) > 바위(1) = 졌음
 
 */

//switch random{
//case you:
//    print("무승부입니다.")
//case 0:
//case 1:
//
//}

switch random{
case 0: print("Random Computer: 가위")
case 1: print("Random Computer: 바위")
case 2: print("Random Computer: 보")
default: break
}

switch you{
case 0: print("you: 가위")
case 1: print("you: 바위")
case 2: print("you: 보")
default: break
}



if random == you {
    print("무승부입니다.")
}else if you == 0{
    switch random {
        case 1: print("당신은 이겼습니다.")
        case 2: print("당신은 졌습니다.")
    default: print("0 ~ 2 사이의 정수를 입력하세요")
    }
    
}else if you == 1{
    switch random {
        case 0: print("당신은 졌습니다.")
        case 2: print("당신은 이겼습니다.")
    default: print("0 ~ 2 사이의 정수를 입력하세요")
    }
}else if you == 2{
    switch random {
        case 0: print("당신은 이겼습니다.")
        case 1: print("당신은 졌습니다.")
    default: print("0 ~ 2 사이의 정수를 입력하세요")
    }
}


// ========================================================
print("랜덤 빙고게임")
print("")

var com = Int.random(in:0...10)
var choice = 5

if choice == com {
    print("bingo!!")
}else if choice >= com {
    print("Down")
}else if choice <= com {
    print("Up")
}


