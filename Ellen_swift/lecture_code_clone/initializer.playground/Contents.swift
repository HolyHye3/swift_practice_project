import UIKit

// 생성자 구현
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


//======= 구조체는 멤버와이즈 이니셜라이저를 자동 제공한다. =======
struct Color1 {
    var red: Double = 1.0
    var green: Double = 1.0
    var blue: Double

}

var color1 = Color1(blue: 0.5)
print(color1.blue)

