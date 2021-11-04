# QuotesGenerator
명언 생성기   
버튼 클릭 시 랜덤으로 명언이 화면에 보여지는 애플리케이션

<img width="30%" src="https://user-images.githubusercontent.com/65601189/140353177-34970d5c-408d-4dca-bb93-29145e3190d5.png"/>   


   
   

구현 내용
---------
Quote.swift에 Quote 구조체를 정의해 명언의 내용과 이름을 담을 수 있는 새 타입을 생성했다.   
```swift
struct Quote {
    let contents: String
    let name: String
}
```   
버튼 클릭시 명언이 랜덤하게 화면에 보여질 수 있도록 버튼의 액션함수를 arc4random_uniform 메서드를 사용해 정의했다.
