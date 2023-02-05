import UIKit

//  ==================== 생성자 구현 ====================  //



// 클래스, 구조체 공통
class Color {
    
    let red: Double
    let green: Double
    let blue: Double
    
    init(){
        red = 0.0
        green = 0.0
        blue = 0.0
    }
    
    init(white: Double){
        red = white
        green = white
        blue = white
    }
    
    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
}

//var color = Color()
var color = Color(red:0.5, green: 0.5, blue: 0.5)
print(color.red)

// 구조체는 멤버와이즈 이니셜라이저를 자동 제공한다.
struct Color1 {
    var red: Double = 1.0
    var green: Double = 1.0
    var blue: Double

}

var color1 = Color1(blue: 0.5)
print(color1.blue)




// ========= 상속 관계에서 지정 생성자를 만드는 법 =========//
class Aclass{
        var x: Int
        var y: Int

        init(x:Int, y:Int){  // 지정생성자 - 모든 저장 속성 설정
                self.x = x
                self.y = y
        }

        convenience init(){  // 편의생성자 - (조금 편리하게 생성) 모든 저장 속성을 설정하지 않음
                self.init(x: 0, y: 0)
        }
}

// 상속이 일어나는 경우
class Bclass: Aclass{
        
        var z: Int

        init(x: Int, y: Int, z: Int){
                // 필수적으로 저장속성의 값을 초기화
                self.z = z
                // 필수적으로 상위의 지정생성자 호출
                super.init(x: x, y: y)
        }

        convenience init(z: Int){
                self.init(x: 0, y: 0, z: z)
        }

        convenience init(){
                self.init(z: 0)
        }

        func doSomething(){
                print("Do something")
        }
}


let b = Bclass(x:1, y:2, z:3)
