# 17_switch문의 활용

생성일: 2022년 10월 28일 오전 7:10
태그: part3

### 스위치문에서의 바인딩

- 바인딩 된 상수는 케이스블럭 내부에서만 사용이 가능하다.
- 상수 바인딩은 주로 where절하고 같이 사용된다.

```swift
var num = 6

switch num {
case let a:      // let a = num
    print("숫자: \(a)")
default:
    break
}
```

### 스위치문과 where절

- 다른 상수 값에 바인딩한 후, 조건절을 통해 조건을 확인한다.

```swift
var num = 7

swich num {
case let x where x%2 == 0:
		print("짝수 숫자:\(x)")
case let x where x%3 == 0:
		print("홀수 숫자:\(x)")
default:
		break
}

// var에 바인딩도 가능하다.
switch num {
case var x where x > 5:
		x = 10
		print(x)
default:
		print(x)
}
```

- 아래와 같은 문장은 쓸 수 없다.

```swift
var num = 7

swich num {
case num%2 == 0:
		print("짝수 숫자:\(x)")
case num%3 == 0:
		print("홀수 숫자:\(x)")
default:
		break
}
```

- case `num%2==0` 은 Bool 타입(true / false) 으로 비교하려는 Int 타입의 `num` 변수와 비교를 할 수가 없다.
