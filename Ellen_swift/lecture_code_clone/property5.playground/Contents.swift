import UIKit

// 일반적인 클래스 메서드
class Dog{
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

        func changeName(newName name: String){
                        self.name = name
                }
        
}


// 구조체의 메서드
class Dog{
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

        func changeName(newName name: String){
                        self.name = name
                }
        
        
}

