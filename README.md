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

`viewDidLoad()`
- 뷰 컨트롤러의 모든 뷰들이 메모리에 로드됐을 때 호출
- 메모리에 처음 로드될 때 한 번만 호출
- 보통 딱 한 번 호출될 행위들을 이 메소드 안에 정의함
- 뷰와 관련된 추가적인 초기화 작업, 네트워크 호출

`viewWillApper()`
- 뷰가 뷰 계층에 추가되고, 화면에 보이기 직전에 매 번 호출
- 다른 뷰로 이동했다가 돌아오면 재호출
- 뷰와 관련된 추가적인 초기화 작업

`viewDidApper()`
- 뷰 컨트롤러의 뷰가 뷰 계층에 추가된 후 호출됩니다.
- 뷰를 나타낼 때 필요한 추가 작업
- 애니메이션을 시작하는 작업

`viewWillDisapper()`
- 뷰 컨트롤러의 뷰가 뷰 계층에서 사라지기 전에 호출됩니다.
- 뷰가 생성된 뒤 작업한 내용을 되돌리는 작업
- 최종적으로 데이터를 저장하는 작업

`viewDidDisappear()`
- 뷰 컨트롤러의 뷰가 뷰 계층에서 사라진 뒤에 호출
- 뷰가 사라지는 것과 관련된 추가 작업

<br>
<br>

## 참고
https://fastcampus.co.kr/dev_online_iosappfinal
