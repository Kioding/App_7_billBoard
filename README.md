# App_7_billBoard (전광판 앱)
- 화면구현
- 학습내용

<br>
<br>

## 화면구현

### 1차 

<br>
<br>

## 학습내용
#### Content View Controller
   - 화면을 구성하는 뷰를 직접 구현하고 관련된 이벤트를 처리하는 뷰 컨트롤러
#### Containver View Controller
   - 하나 이상의 `Child View Controller`를 가지고 있다.
   - 하나 이상의 `Chile View Controller`를 관리하고 레이아웃과 화면 전환을 담당한다.
   - 화면 구성과 이벤트 관리는 `Child View Controller` 는 대표적으로 `Navigation Controller` 와 `TapBar Controller` 가 있다.
#### Navigation View Controller
   - 계층구조로 구성된 content를 순차적으로 보여주는 `Container View Controller`

<br>

#### 화면 전환 방법
1. View Controller 의 View 위에 다른 View를 가져와 바꿔치기 -> 메모리 누수 위험이 있어 지양하기
2. View Controller 에서 다른 View Controller 를 호출하여 전환하기
3. Navigation Controller 를 사용하여 화면 전환하기
4. 화면 전환용 객체 세그웨이(Segueway) 를 사용하여 화면 전환하기 - `Action Segueway`, `Manual Segueway`
#### Action Segueway 종류
- Show
- Show Detail
- Present Modally
- Present As Popover
- Custom

<br>

#### ViewController Life Cycle

![스크린샷 2021-11-17 오전 9 41 14](https://user-images.githubusercontent.com/65153742/142088528-0b1968f9-10ff-45ad-b8d8-b619a7878708.png)

- Appering: 뷰가 화면에 나타나는 중
- Appeard: 뷰가 화면에 나타나는 게 완료 된 상태
- Disappearing: 뷰가 화면에서 사라지는 중
- Disappeared: 뷰가 화면에서 사라진 상태


<br>
<br>

## 참고
https://fastcampus.co.kr/dev_online_iosappfinal
