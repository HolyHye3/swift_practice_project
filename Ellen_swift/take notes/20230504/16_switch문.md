# 16_switch문

생성일: 2022년 10월 28일 오전 6:30
태그: part3

- 표현식 / 변수를 매칭시켜 분기처리할때 사용하는 조건문

```swift
var choice: String = "바위";

switch choice {
	case "가위":
		print("가위 입니다.")
	case "바위":
		print("바위 입니다.")
	case "보":
		print("보 입니다.")
	default:
		break
}
```

### 스위치문의 특징

1. 스위치문에서 케이스의 ,(콤마) 또는의 의미로 하나의 케이스에 여러 매칭값을 넣을 수 있다.
    
    ```swift
    switch choice {  // 문자열
    case "가위":
        print("가위 입니다.")
    case "바위", "보":
        print("바위 또는 보 입니다.")
    default:
        break
    }
    ```
    
2. switch 문은 값의 가능한 모든 경우의 수를 반드시 다루어야 한다.
    1. 모든 사례를 다루지 않았을 때에는 디폴트 케이스가 반드시 있어야 한다.
    
    ```swift
    var isTrue = true
    
    switch isTrue {
    case true:
        print("true")
    case false:
        print("false")
    }
    ```
    
3. 각 케이스에는 문장이 최소 하나 이상 있어야 하며 만약 없다면 컴파일 에러 발생
    1. 실행하지 않으려면 break를 반드시 입력해야한다.
    2. if문에서는 실행문을 입력하지 않아도 괜찮지만, 스위치문에서는 필요하다.

### fallthrough 키워드의 사용

```swift
var num1 = 10

switch num1 {
case ..<10:
    print("1")        // 매칭된 값에 대한 고려없이 무조건 다음블럭을 실행함
    fallthrough
case 10:
    print("2")
    fallthrough
default:
    print("3")
}

//2
//3
```

### switch문의 범위 매칭

- 패턴 매칭 연산자와 관련
    
    ```swift
    var num = 30
    
    0...50 ~= num    // true
    51...100 ~= num  // false
    ```
    

- 패턴 매칭 연산자를 이용하여 부등호의 역할을 할 수 있다.

```swift
switch num {
case 0...50:      // 0...50 ~= 30 내부적으로 패턴매칭으로 확인
    print("숫자의 범위: 0 ~ 50")
case 51...100:
    print("숫자의 범위: 51 ~ 100")
default:
    print("그 외의 범위")
}
```

- 아래와 같이 쓰면 안된다는 것을 알 수 있다.

```swift
switch temperature{
		case < 0:             // ..<0 이런식으로 작성해주어야 함
			print("영하 - 0도 미만")
		case >= 0 && <= 18:    // 0... 이런식으로 작성해주어야 함
			 print("0도 이상 무덥지 않은 날씨")
		default:
				break
}
```

```swift
var temp = 19

switch temp {
	case ..<0:
		print("영하 0도 미만")
	case ..<22:
		print("0도 이상 무덥지 않은 날씨")
	case ..<28:
		print("여름 날씨")
	default:
		break
}
```