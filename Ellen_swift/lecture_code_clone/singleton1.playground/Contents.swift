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
    // 자신의 객체를 생성해서 전역변수에 할당
    static let shared = Singleton()
    var userInfoId = 1234
    
    // 추가적인 객체 생성을 막는다.
    private init() {}
}


let object = Singleton.shared // Singleton
object.userInfoId = 777777

object.userInfoId

// 아래와 같은 것도 가능
//let singleton = Singleton()

//singleton.userInfoId  = 12345
//singleton.userInfoId // 12345

object.userInfoId // 7777

// 따라서 private init() 설정으로 추가적으로 새로운 객체 생성이 불가하게 막는것이 가능하다.


