import UIKit


//========= 접근제어 ==============

class SomeClass{
    
//    var name = "이름"
    
    // 내부에 숨긴다. 은닉화
    private var name = "이름"
    
    
    func nameChange(name: String){
        self.name = name
    }
}


var s = SomeClass()
// 외부에서 접근할 수 없다.
//s.name

// 함수를 통해 변경은 가능하다.
s.nameChange(name: "홍길동")



//======== 싱글톤 패턴 ================

class Singleton{
    // 싱글톤 생성을 위한 문법
    static let shared = Singleton()
    var userInfoId = 1234
}


let object = Singleton.shared
object.userInfoId = 777777
//Singleton.shared.userInfoId = 77777
Singleton.shared.userInfoId


