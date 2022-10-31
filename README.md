# 메모 앱 프로젝트 

## 🙋🏻‍♂️ 프로젝트 소개
Swift UI, Core Data를 활용한 메모 앱 프로젝트 입니다 

> 프로젝트 기간: 2022-10-20 ~ 2022-10-25</br>
> 팀원: [브래드](https://github.com/bradheo65)


## 📑 목차

- [🧑🏻‍💻 개발자 소개](#-개발자-소개)
- [📦 파일 구조](#-파일-구조)
- [📱 동작 화면](#-동작-화면)
- [💡 키워드](#-키워드)
- [🤔 핵심경험](#-핵심경험)
- [📝 기능설명](#-기능설명)
- [🚀 TroubleShooting](#-TroubleShooting)
    - [🚀 STEP 1](#-STEP-1)


## 🧑🏻‍💻🧑🏻‍💻 개발자 소개

||
|:---:|
|<image src = "https://user-images.githubusercontent.com/45350356/174251611-46adf61c-93fa-42a0-815b-2c998af1c258.png" width="250" height="250">
|[브래드](https://github.com/bradheo65)|

    
## 📦 파일 구조

```
├── Assets.xcassets
│   ├── AccentColor.colorset
│   │   └── Contents.json
│   ├── AppIcon.appiconset
│   │   └── Contents.json
│   └── Contents.json
├── CoreData
│   ├── CoreDataManager.swift
│   └── SwiftUI_Memo.xcdatamodeld
│       └── SwiftUI_Memo.xcdatamodel
│           └── contents
├── Memory
│   ├── Memo.swift
│   └── MemoStore.swift
├── Preview Content
│   └── Preview Assets.xcassets
│       └── Contents.json
├── SwiftUI_MemoApp.swift
└── View
    ├── ComposeView.swift
    ├── DetailView.swift
    ├── MainListView.swift
    └── MemoCell.swift
```

## 📱 동작 화면

|메모 저장|메모 삭제 - onDelete|
|:---:|:---:|
|<image src = "https://i.imgur.com/cCFxKBn.gif" width="250" height="500">|<image src = "https://i.imgur.com/774T14t.gif" width="250" height="500">|

|메모 편집|메모 삭제 - Alert|
|:---:|:---:|
|<image src = "https://i.imgur.com/DEurJK2.gif" width="250" height="500">|<image src = "https://i.imgur.com/GgEo64C.gif" width="250" height="500">|

|메모 검색|메모 정렬|
|:---:|:---:|
|<image src = "https://i.imgur.com/3aIgEhO.gif" width="250" height="500">|<image src = "https://i.imgur.com/LKKE0f4.gif" width="250" height="500">|   


## 💡 키워드
- CoreData
- List
- NavigationLink
- .onDelete
- .sheet 
    
## 🤔 핵심경험
- [x] SwiftUI 프로젝트 경험
- [x] List View 활용
- [x] SwiftUI 화면 이동 및 데이터 전달 경험
- [x] 코어데이터 모델 생성
- [x] 코어데이터 CRUD 생성


## 📝 기능설명
- 작성한 메모 목록을 보여주는 List View 구현
- TextEditor 활용하여 메모 작성기능 구현
- Notification Center를 활용하여 키보드가 작성중인 화면을 가리지 않도록 기능 구현
- .sheet와 NavigationLink를 통한 화면 이동 구현
- CoreData CRUD 
    
## 🚀 TroubleShooting
    
### 🚀 STEP 1

#### T1. 앱 화면 하단에 Navigation ToolBarItem 안나오는 문제

`ToolbarItemGroup(placement: .bottomBar)`로 하단에 Navigation ToolBarItem 배치하려고 했으나 아래 화면 처럼 ToolBarItem들이 안나오는 현상이 발생되어 NavigationView의 ViewStyle을 `StackNavigationViewStyle()`으로 설정해주어 해결했다. 발생된 원인에 대해 생각해보았을 때 `item`이 2개이상이기에 `item`의 위치 관련되어 발생된 문제인 것 같다.
`NavigationStack`으로도 해결할 수 있지만, iOS16 버전 이상부터 사용할 수 있기 때문에 주의해야 할 것 같다.

|적용 전|적용 후|
|:---:|:---:|
|<image src = "https://i.imgur.com/FF7uZjt.gif" width="250" height="500">|<image src = "https://i.imgur.com/ShCoBeg.gif" width="250" height="500">|   
