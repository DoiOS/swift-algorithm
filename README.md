# swift algorithm

```swift
var 상우, 민섭, 성민
```

- 각자 자유롭게 PS 하는 Repository
- 코딩 테스트 관련하여 유용한 코드구문이 있다면 README 에 작성하여 공유하도록 합시당
- 각자 브랜치를 파서 Merge 할지, Main 에 걍 부을지는 고민중
<br><br><br>

# 🌈 Swift 잡기술
<br>

## 문자열

#### 1. 문자열 쪼개기

```swift
let str = "hello world "

let splitStrings = str.split(separator: " ")            // ["hello", "world"]
let stringComponents = str.components(separatedBy: " ") // ["hello", "world", ""]
```
둘 다 동일한 기능을 하며, `Components`는 Foundation 프레임워크 안에 있고 `Split`은 Swift 내장 함수다. Components 에 비해 Split 이 속도가 더 빠른 경우가 빈번하게 발생하는데, Component는 Empty Subsequence 까지 반환하기 때문에, Empty Subsequence 를 반환하지 않는 Split 이 더 빠르다.
Split 에서도 Empty Subsequence 를 반환하려면 `omittingEmptySubsequence` 옵션을 사용한다. 
