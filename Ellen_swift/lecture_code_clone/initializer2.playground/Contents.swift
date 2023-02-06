import UIKit

class Aclass {
    var x = 0
}

class Bclass:Aclass{
    var y: Int
    
    // ========  상위에 동일한 이름의 생성자가 있다. 하위에서 재정의 할 수도 있고 안 할 수도 있다. ======== //
    
    // ===== 재정의를 해주어야 할 때 생성자를 정의하는 방법 ===== //
    // 1. 지정생성자로 재정의
    override init(){
        self.y = 0
        super.init()
    }
    
    // 2. 서브클래스에서 편의생성자로 구현
//    override convenience init(){
//        self.init(y: 0)
//    }
    
    // ===== 재정의를 하지 않는 방법이 있다.  ===== //
    
    
    // ===== 현재 클래스에서의 생성자는 필수로 구현해주어야 한다.
    init(y: Int){
        self.y = y
        super.init()
    }
    
}

class Cclass :Bclass{
    var z :Int
    
    override init(){
        self.z = 5
        super.init()
    }
    
    init(z: Int){
        self.z = z
        super.init()
    }
    
}

let c = Cclass()
print("c 출력해보기 c.x: \(c.x), c.y: \(c.y), c.z: \(c.z)")
