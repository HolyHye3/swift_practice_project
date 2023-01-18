import UIKit

class Profile {
        // 일반 저장 속성
        var name: String = "이름"
        
        // 저장속성 + 저장 속성이 변하는 시점을 관찰하는 메서드
        var statusMessage: String = "기본 상태메시지"{
                willSet(message){
                        print("메세지가 \(statusMessage)에서 \(message)로 변경될 예정입니다.")
                        print("상태메시지 업데이트 준비")
                }
                didSet{
                    print("\(oldValue)에서 \(statusMessage)로 변경되었습니다.")
                    print("상태메시지 업데이트 완료")
            }
        }
}

let p = Profile()

// 변경할 때마다 willset 메서드가 실행된다.
p.statusMessage = "행복해"
p.statusMessage = "우울해"
