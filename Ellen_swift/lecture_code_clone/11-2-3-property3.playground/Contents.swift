import UIKit

class Circle{
    static let pi:Double = 3.14
    static var count: Int = 0
    
    var radius: Double
    
    var diameter: Double{
        get{
            return radius * 2
        }
        set{
            radius = newValue / 2
        }
    }
    
    // 생성자
    init(radius: Double){
        self.radius = radius
        
        // 생성할 때 마다 카운트됨
        Circle.count += 1
    }
}

var circle1 = Circle(radius: 2)
Circle.count


var circle2 = Circle(radius: 2)
Circle.count

// 인스턴스를 생성한다. Duble은 구조체로 되어있다.
Double.pi
Int.max
Int.min



