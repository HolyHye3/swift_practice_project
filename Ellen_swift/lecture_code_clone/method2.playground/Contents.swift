import UIKit


// 타입 메서드
class Dog{
    // 타입메서드는 인스턴스 메서드를 쓰지 못한다.
    let species1 = "댕댕이"
    
    static let species2 = "댕댕이"
    
    static func df1(){
        print("디폴트 종은 \(species2)입니다.")
    }
    
    // 혹은 아래와 같이 사용
    class func df2(){
        print("디폴트 종은 \(species2)입니다.")
    }
    
    
}

Dog.df1()
Dog.df2()


// 서브 스크립트
class SomeDate {
    var datas = ["Apple", "Swift", "IOS", "Hello"]
    
    subscript(index: Int) -> String{
        get{
            return datas[index]
        }
//        set(parameterName){
//            datas[index] = parameterName
//        }
        // 혹은 아래와 같이 사용
        // set 블록은 생략도 가능
        set{
            datas[index] = newValue
        }
    }
}


var data = SomeDate()
data[0]
data[0] = "AAA"

