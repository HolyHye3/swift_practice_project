import UIKit

/**
 가위 = 0
 -> 질 때 = 바위(1)
 -> 이길 때 = 보(2)
 
 바위 = 1
 -> 질 때 = 보(2)
 -> 이길 때 = 가위(0)
 
 보 = 2
 -> 질 때 = 가위(0)
 -> 이길 때 = 바위(1)
  
 */


var you:Int = 1
var com:Int = Int.random(in:0...2)

var array = ["가위", "바위", "보"]


print("computer: \(array[com]), you: \(array[you])")

if com == 0{ // 가위
    if you == 1{
        print("당신은 이겼습니다.")
    }else if you == 2{
        print("당신은 졌습니다")
    }else{
        print("무승부입니다.")
    }
}else if com == 1{ // 바위
    if you == 2{
        print("당신은 이겼습니다.")
    }else if you == 0{
        print("당신은 졌습니다.")
    }else{
        print("무승부입니다.")
    }
}else{ // 보
    if you == 0{
        print("당신은 이겼습니다.")
    }else if you == 1{
        print("당신은 졌습니다.")
    }else{
        print("무승부입니다.")
    }
}

if com == you{
    print("무승부입니다.")
}else if (com == 0 && you == 1) || (com == 1 && you == 2) || (com == 2 && you == 0){
    print("당신은 이겼습니다.")
}else{
    print("당신은 졌습니다.")
}

print("")

var you2:Int = 5
var com2:Int = Int.random(in:0...10)

print("computer: \(com2), you: \(you2)")

if com2 == you2{
    print("Bingo")
}else if (com2 < you2){
    print("Down")
}else{
    print("Up")
}


