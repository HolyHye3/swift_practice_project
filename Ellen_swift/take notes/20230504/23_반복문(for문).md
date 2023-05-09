# 23\_반복문(for문)

생성일: 2022년 10월 29일 오후 5:26
태그: part6

### for문 사용

```swift
for i in 2...10{
		print(i)
}
```

```swift
var number = 10

for i in 1...number{
		print(i)
}
```

### 와일드 카드 패턴

- \_(언더바)는 스위프트에서 생략의 의미이다.

```swift
for _ in 0...10{
		print("hello") // hello 10번 출력
}

let _ = "문자열"
```

### 컬렉션 타입에서의 반복문

- 컬렉션에서 각 아이템을 차례대로 한번씩 뽑아서 중괄호 안에서 사용한다.

```swift
let list = ["Swift", "Programming", "Language"]

for str in list{
	print(str)
}
// Swift
// Programming
// Language
```

### 문자열에서의 반복문

- 문자열에서 각 문자를 차례 차례 한개씩 뽑아서 중괄호 안에서 사용한다.

```swift
for chr in "Hello"{
		print(chr)
}
//H
//e
//l
//l
//o
```

### 특정한 함수 활용

- 역순으로 바꾸기

```swift
for number in (1...5).reversed(){
	print(number) // 5,4,3,2,1
}
```

💡 `(1…10).reversed()` -> 10부터 1까지 역순

- 홀수 또는 홀수만 뽑아내기

```swift
for number in stride(from: 1, to: 15, by: 2){ // 마지막 숫자는 포함하지 않음
		print(number) // 1, 3, 5, 7, 9, 11, 13
}
```

## for문 사용시 주의점

```swift
for item in 1...5 {
		var name = "jobs"
		// 중괄호 내에서 밖의 변수는 접근가능
}

// 중괄호 밖에서 중괄호 안의 변수는 접근가능
print(item) // 에러(접근불가)
print(name) // 에러(접근불가)
```
