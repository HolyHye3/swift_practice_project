import UIKit

// 일반적인 클래스 메서드
class Dog1{
        static var species = "Dog"
        
        var name:String
        var weight: Double

        init(name: Stirng, weight: Double){
                self.name = name
                self.weight = weight
        }

        func sit(){
                print("\(name)가 앉았습니다.")
        }

        func trainning(){
                print("왈왈 저는 \(Dog1.species)입니다.")
                sit()
                sit()
        }

        // 데이터를 힙에 저장하므로 자체적으로 변경가능
        func changeName(newName name: String){
                        self.name = name
                }
        
}


// 구조체의 메서드
struct Dog2{
        static var species = "Dog"
        
        var name:String
        var weight: Double

        init(name: String, weight: Double){
                self.name = name
                self.weight = weight
        }

        func sit(){
                print("\(name)가 앉았습니다.")
        }
    
    func sit(a:String){
        print("\(a)가  앉지않았습니다")
    }

        func trainning(){
                print("왈왈 저는 \(Dog1.species)입니다.")
                sit()
                sit()
        }

        // 구조체 인스턴스에서는 mutating 키워드를 붙여주어야한다.
        // 데이터를 스택에 저장하므로 자체적으로 변경이 불가능하다.
        mutating func changeName(newName name: String){
                        self.name = name
                }
        
        
}

